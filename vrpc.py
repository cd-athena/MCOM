import time
from http.server import SimpleHTTPRequestHandler, HTTPServer
import requests
from socketserver import ThreadingMixIn
# import logging
import threading
from mcom_edge_milp import milp_function, available_representations

# Number of segments to encode for the live stream
N_SEG = 5

# VRP log path
# filename = "/home/ubuntu/vrp.log"
#
# logging.basicConfig(filename=filename,
#                     format='%(asctime)s %(message)s',
#                     filemode='w')
# logger = logging.getLogger()
# logger.setLevel(logging.DEBUG)


# --------------------------------------------------------------------------

class ThreadedHTTPServer(ThreadingMixIn, HTTPServer):
    pass
    """Handle requests in a separate thread."""


class ManifestUpdate(object):
    """ Threading ManifestUpdate class
    The run() method will be started, and it will run in the background
    until the application exits.
    """

    def __init__(self, interval=2):
        """ Constructor
        :type interval: int
        :param interval: Check interval, in seconds
        """
        self.segment = 1  # First segment
        self.interval = interval
        self.adaptations = {'1': "H264", '2': "HEVC"}
        self.namespace = "urn:mpeg:dash:schema:mpd:2011"
        self.live_manifest = "manifest.mpd"
        self.up_manifest = "manifests/manifest_{:n}.mpd"

        thread = threading.Thread(target=self.run, args=())
        thread.daemon = True                            # Daemonize thread
        thread.start()                                  # Start the execution

    # Edit live manifest using XML parser and write updated manifest
    def edit_manifest(self, reps):
        import xml.etree.ElementTree as ET
        tree = ET.parse(self.live_manifest)
        ET.register_namespace("", self.namespace)
        root = tree.getroot()
        # print(root.tag)
        for p in root.findall('{{{:s}}}Period'.format(self.namespace)):
            # print(p.tag)
            for a in p.findall('{{{:s}}}AdaptationSet'.format(self.namespace)):
                # print(a.tag)
                for r in a.findall('{{{:s}}}Representation'.format(self.namespace)):
                    # if self.segment % 2:
                    # print(r.attrib["bandwidth"])
                    # print(reps[self.adaptations[a.attrib["id"]]].keys())
                    if int(r.attrib["bandwidth"]) not in list(reps[self.adaptations[a.attrib["id"]]].keys()):
                        # print("Removing Representation with bandwidth {:s} from AdaptationSet with id {:s}\n".format(r.attrib["bandwidth"], a.attrib["id"]))
                        a.remove(r)
        tree.write(self.up_manifest.format(self.segment))

    def changeTimes(self):
        import xml.etree.ElementTree as ET
        from datetime import datetime
        tree = ET.parse(self.live_manifest)
        # Try with wget from command line or python module
        # timeNow = requests.get("http://time.akamai.com/?iso&ms").text
        timeNow = datetime.utcnow().isoformat()[:-3]+'Z'
        ET.register_namespace("", self.namespace)
        root = tree.getroot()
        root.attrib["availabilityStartTime"] = timeNow
        root.attrib["publishTime"] = timeNow
        tree.write(self.live_manifest)

    def run(self):
        global N_SEG
        """ Method that runs forever """
        self.changeTimes()
        while self.segment <= N_SEG:
            # Run the optimization model
            print('Running optimization model for segment {:n}...\n'.format(self.segment))
            v_dict, _ = milp_function()
            # Return dictionary with available representations to edit the manifest
            reps = available_representations(v_dict)
            # print('Representations available: {}\n'.format(reps))
            # print('Editing manifest for segment {:n}...\n'.format(self.segment))
            # Parse manifest as XML
            # Remove representations as decided by the optimization model
            self.edit_manifest(reps)
            # Check what the file contains
            # with open(self.up_manifest, 'r') as f:
            #    print(f.read())
            # Increase segment number
            self.segment += 1
            # Sleep for the update manifest time + epsilon
            time.sleep(self.interval)


if __name__ == '__main__':
    # os.system('rm /home/ubuntu/vrp.log')
    # ----------------------------------------------------------------------------
    # logger.debug("Start" + '\n')
    # logger.debug("VRPC starts at " + str(time.time()) + '.\n')
    server_port = 80

    Handler = SimpleHTTPRequestHandler
    server_address = ('', server_port)
    server = ThreadedHTTPServer(server_address, Handler)
    server.socket.settimeout(50)
    # Run ManifestUpdate thread based on optimization model results
    mu = ManifestUpdate(interval=2)
    # Serve the clients' requests
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        server.shutdown()

