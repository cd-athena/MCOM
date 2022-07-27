import requests as req
import time
import threading
import os
from datetime import datetime
import math
from p1203Pv_extended.p1203Pv_extended import P1203Pv_codec_extended
from itu_p1203 import P1203Standalone


class Client(object):

    def __init__(self, id, nSeg, adaptations, codecs, mpd_url='http://10.0.4.10:80/manifests/manifest_{:n}.mpd'):
        """ Constructor
        :type id: int, nSeg: int, adaptations: dict, codecs: Array, mpd_url: String
        :param id: int that identifies the client, nSeg: max number of segments to request, adaptations: map the AdaptationSet id to the codec name, codecs: Support codecs for playout (order is important -> Incremental priority), mpd_url: URL to the manifest file (.MPD)
        """
        self.id = id
        # Suppose that AdaptationSet id 1 is for H.264 and id 2 is for HEVC
        self.serverName = "http://10.0.4.10:80" 
        self.throughput = 150  # Kbps
        # MPD and video segments information
        self.mpd_url = mpd_url
        self.segmentIndex = 1  # Index of the segment to be requested
        self.segmentLength = 2  # in seconds
        self.bitrate_ladder = dict()
        self.adaptations = adaptations
        self.fps = 24
        # ITU-T P.1203 parameters
        self.device = "pc"
        self.viewingDistance = "150cm"
        self.displaySize = "1920x1080"
        self.jsonString = ""
        # Buffer variables
        self.buffer = 0.0  # Buffer size in seconds
        self.maxBuffer = 3 * self.segmentLength
        self.bufferTimeCheck = 0.0  # Last time buffer was updated
        self.minInitBS = 2 * self.segmentLength
        # reproduction variables
        self.initTime = datetime.now()  # Time the reproduction is started
        self.isPlayback = False
        self.repSegmentIndex = 0  # At the beginning no segment is reproduced
        self.repSegmentTime = 0  # Left time (seconds) for the reproduction of segment indexed self.repSegmentIndex
        self.nSeg = nSeg
        # Stalls
        self.stallInitTime = time.time()
        self.stallsTime = [0]
        self.stallsDuration = []
        # Codec support
        self.codecs = codecs
        # Selected segments and codecs (dict -> array of segmentNumber: {"bitrate": b, "resolution": r})
        self.segmentSequence = dict()

        self.thread = threading.Thread(target=self.run, args=())
        self.thread.daemon = True  # Daemonize thread
        self.thread.start()  # Start the execution

    def get_parse_mpd(self):
        import xml.etree.ElementTree as ET
        namespace = "urn:mpeg:dash:schema:mpd:2011"
        self.bitrate_ladder = dict()
        # Parse the MPD and # Modify the bitrate ladder accordingly
        resp = req.get(self.mpd_url.format(self.segmentIndex))
        while resp.status_code != 200:
            time.sleep(self.segmentLength)
            resp = req.get(self.mpd_url.format(self.segmentIndex))
        # resp = req.get("https://dash.akamaized.net/akamai/bbb_30fps/bbb_30fps.mpd")
        # resp = "up_manifest.mpd"
        # print(resp.text)
        # tree = ET.parse(resp.text)
        ET.register_namespace("", namespace)
        # root = tree.getroot()
        root = ET.fromstring(resp.text)
        self.initTime = root.attrib["availabilityStartTime"]
        # print(root.tag)
        for p in root.findall('{{{:s}}}Period'.format(namespace)):
            # print(p.tag)
            for a in p.findall('{{{:s}}}AdaptationSet'.format(namespace)):
                # print(a.tag)
                # If the id of the adaptation set is not included in the adaptations dictionary (to be mapped to the corresponding codec)
                if self.adaptations[a.attrib["id"]] not in self.codecs:
                    continue
                self.bitrate_ladder[self.adaptations[a.attrib["id"]]] = dict()
                for r in a.findall('{{{:s}}}Representation'.format(namespace)):
                    # if self.segment % 2:
                    # print(r.attrib["bandwidth"])
                    # print(reps[self.adaptations[a.attrib["id"]]].keys())
                    self.bitrate_ladder[self.adaptations[a.attrib["id"]]][int(r.attrib["bandwidth"])] = "{:s}x{:s}".format(r.attrib["width"], r.attrib["height"])
                    # print("Adding Bandwidth {:s} from codec {:s} to the bitrate ladder".format(r.attrib["bandwidth"], self.adaptations[a.attrib["id"]]))

    def get_resource(self, url):
        # Request a video segment
        resp = req.get(url)
        # Print the response
        # print(resp.text)

    def update_buffer(self, isSegmentFetched=False):
        if self.isPlayback:  # If player is not paused
            elapsed = time.time() - self.bufferTimeCheck
            self.bufferTimeCheck = time.time()
            if elapsed > self.buffer:
                self.repSegmentIndex = self.segmentIndex - 1
                self.repSegmentTime = 0.0
                self.isPlayback = False
                self.stallsTime.append(self.repSegmentIndex * self.segmentLength)
                self.stallInitTime = time.time() - (elapsed - self.buffer)
                self.buffer = 0.0
            else:
                self.buffer -= elapsed
                if elapsed > self.repSegmentTime:
                    print("Elapsed time: {:.3f}".format(elapsed))
                    repSegmentIndexOffset = math.floor(1 + (elapsed - self.repSegmentTime) / self.segmentLength)
                    print("Check RepSegmentIndex update: += {:n}".format(repSegmentIndexOffset))
                    self.repSegmentIndex += repSegmentIndexOffset
                    self.repSegmentTime = self.segmentLength - (elapsed - self.repSegmentTime - math.floor((elapsed - self.repSegmentTime) / self.segmentLength) * self.segmentLength)
                else:
                    self.repSegmentTime -= elapsed
        if isSegmentFetched:  # if Segment Is Received
            self.buffer += self.segmentLength
            if not self.isPlayback: # if Player Is Paused * /
                if self.buffer >= self.minInitBS:
                    self.isPlayback = True
                    self.bufferTimeCheck = time.time()
                    self.stallsDuration.append(self.bufferTimeCheck - self.stallInitTime)
                    print("Stall: Media start stall time -> {:.3f}, Time to stall -> {:.3f} s".format(self.stallsTime[-1], self.stallsDuration[-1]))
                    if self.repSegmentTime <= 0:
                        if self.repSegmentIndex < self.segmentIndex:
                            self.repSegmentIndex += 1
                            self.repSegmentTime = self.segmentLength

    def abr_decision(self):
        bitrate = list(self.bitrate_ladder["H264"].keys())[0]
        for b in reversed(self.bitrate_ladder["H264"]):
            if b < self.throughput:
                bitrate = b
                break
        codec = "H264"
        for c in reversed(self.codecs):
            if bitrate in self.bitrate_ladder[c].keys():
                codec = c
                break
        return bitrate, codec

    def buildQoEJSON(self):
        # Create and populate ITU-T P.1203-compliant JSON input file
        jsonString = "{\"I11\":{\"segments\":[],\"streamId\":42},\"I13\":{\"segments\":["
        start = 0
        for i in self.segmentSequence.keys():
            # print(i)
            # print(self.segmentSequence[i]["bitrate"])
            jsonString += "{{\"bitrate\":{:n},\"codec\":\"{:s}\",\"duration\":{:n},\"fps\":{:n},\"resolution\":\"{:s}\",\"start\":{:n}}},".format(self.segmentSequence[i]["bitrate"], self.segmentSequence[i]["codec"].lower(), self.segmentLength, self.fps, self.segmentSequence[i]["resolution"], start)
            start += self.segmentLength
        jsonString = jsonString[:-1]  # Remove the exceeding comma
        jsonString += "],\"streamId\":42},\"I23\":{\"stalling\":["
        for t, d in zip(self.stallsTime, self.stallsDuration):
            jsonString += "[{:.3f},{:.3f}],".format(t, d)
        jsonString = jsonString[:-1]  # Remove the exceeding comma
        jsonString += "],\"streamId\": 42}},\"IGen\":{{\"device\":\"{:s}\",\"displaySize\":\"{:s}\",\"viewingDistance\":\"{:s}\"}}}}".format(self.device, self.displaySize, self.viewingDistance)
        # Using a JSON string
        self.jsonString = jsonString
        with open("client{:n}.json".format(self.id), 'w') as outfile:
            outfile.write(jsonString)

    def run(self):
        while self.segmentIndex <= self.nSeg:
            if self.buffer > self.maxBuffer:
                time.sleep(self.segmentLength)
            # Parse MPD and update bitrate ladder
            self.get_parse_mpd()
            # liveStreamTime = (datetime.now() - self.initTime).total_seconds()
            # self.segmentAvailableIndex = math.floor(liveStreamTime / self.segmentLength)
            # Get self.segmentAvailableIndex
            # print(self.bitrate_ladder, flush=True)
            # Select a quality from which codec to be downloaded
            b, c = self.abr_decision()  # Output the selected bitrate b and codec c
            # Get the video segment
            # url = "{:s}/{:s}.m4s".format(self.serverName, "1_1")
            url = "{:s}/results.csv".format(self.serverName)
            startTime = time.time()
            self.get_resource("{:s}/{:s}/{:n}/{:n}.mp4".format(self.serverName, c, b, self.segmentIndex))
            endTime = time.time()
            self.segmentSequence[self.segmentIndex] = {"codec": c, "bitrate": b, "resolution": self.bitrate_ladder[c][b]}
            self.throughput = b * self.segmentLength / (endTime - startTime)
            # print(self.throughput)
            self.update_buffer(isSegmentFetched=True)
            self.segmentIndex += 1
        self.buildQoEJSON()


if __name__ == '__main__':
    import json
    import argparse

    parser = argparse.ArgumentParser(description='Run a HAS client and start a streaming session with specific codec settings.')
    parser.add_argument('--hevc', type=int, default=0, help='Client/Player support for HEVC video codec.')
    parser.add_argument('--id', type=int, default=1, help='Client ID used to recognize JSON output file.')
    args = parser.parse_args()
    
    codecs = ["H264"]
    
    if args.hevc == 1:
    	codecs.append("HEVC")
    
    client1 = Client(args.id, 4, {'1': "H264", '2': "HEVC"}, codecs=codecs)
    client1.thread.join()
    # print(client1.segmentSequence)
    # print(client1.jsonString)
    results_c1 = P1203Standalone(json.loads(client1.jsonString), Pv=P1203Pv_codec_extended).calculate_complete()
    # print(results_c1)
    with open("client{:n}_out.json".format(client1.id), 'w') as outfile:
            json.dump(results_c1, outfile, indent=4)
    # for i in range(10):
    #     segF = i % 2 == 0
    #     client1.update_buffer(isSegmentFetched=segF)
    #     print("Buffer value for client: {:.3f} s".format(client1.buffer))
    #     print("Segment reproduced for client: {:n}".format(client1.repSegmentIndex))
    #     print("Time left for segment reproduced at client: {:n} s".format(client1.repSegmentTime))
    #     time.sleep(1)
