# Multi-Codec Optimization Model
This repository contains the HAS testbed for Multi-Codec Optimization Model.
This github MCOM-Live, a Mixed-Binary Linear Programming (MBLP) model at the edge for Live streaming, whose purpose is to jointly optimize (i) the overall streaming costs, and (ii) the visual quality of the content played out by the users by efficiently enabling multi-codec content delivery. Given a video content encoded with multiple codecs according to a fixed bitrate ladder, the model will choose among three available policies, i.e., _fetch_, _transcode_, or _skip_, the best option to handle the representations. The experimental results show that our proposed method can reduce the additional latency by up to 23% and the streaming costs by up to 78%, besides improving the visual quality of the delivered segments by up to 0.5 dB, in terms of PSNR.
## MCOM (Live) - Testbed
### Dependencies:
- Python
- Mininet module for Python
- [itu-t-p1203](https://github.com/itu-p1203/itu-p1203) module
- [itu-t-p1203-codec-extension](https://github.com/Telecommunication-Telemedia-Assessment/itu-p1203-codecextension) module
### How to use:
- Clone this repository
- Configure mininet-conf.py
- Run mininet-conf.py with:
```
python mininet-conf.py
```
- Wait for the live streaming session to be completed
- Check the ITU-T P.1203 compliant JSON files containing the QoE score of the streaming session for each selected client
