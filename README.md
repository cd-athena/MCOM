# Multi-Codec Optimization Model
This repository contains the HAS testbed for Multi-Codec Optimization Model
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
