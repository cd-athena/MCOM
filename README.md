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

## Acknowledgments
If you use this source code in your research, please cite 
1. Include the link to this repository
2. Cite the following publication

*Lorenzi, D., Tashtarian, F., Amirpour, H., Timmerer, C., and, Hellwagner, H., "MCOM-Live: A Multi-Codec Optimization Model at the Edge for Live Streaming", In 2023 International Conference on MultiMedia Modeling (MMM'23), 2023.*

```
@InProceedings{mcom,
  author={Lorenzi, Daniele
  and Tashtarian, Farzad
  and Amirpour, Hadi
  and Timmerer, Christian
  and Hellwagner, Hermann},
  editor={Dang-Nguyen, Duc-Tien
  and Gurrin, Cathal
  and Larson, Martha
  and Smeaton, Alan F.
  and Rudinac, Stevan
  and Dao, Minh-Son
  and Trattner, Christoph
  and Chen, Phoebe},
  title={{MCOM-Live: A Multi-Codec Optimization Model at the Edge for Live Streaming}},
  booktitle={MultiMedia Modeling},
  year={2023},
  publisher={Springer Nature Switzerland},
  address={Cham},
  pages={252--264},
  abstract={HTTP Adaptive Streaming (HAS) is the predominant technique to deliver video contents across the Internet with the increasing demand of its applications. With the evolution of videos to deliver more immersive experiences, such as their evolution in resolution and framerate, highly efficient video compression schemes are required to ease the burden on the delivery process. While AVC/H.264 still represents the most adopted codec, we are experiencing an increase in the usage of new generation codecs (HEVC/H.265, VP9, AV1, VVC/H.266, etc.). Compared to AVC/H.264, these codecs can either achieve the same quality besides a bitrate reduction or improve the quality while targeting the same bitrate. In this paper, we propose a Mixed-Binary Linear Programming (MBLP) model called Multi-Codec Optimization Model at the edge for Live streaming (MCOM-Live) to jointly optimize (i) the overall streaming costs, and (ii) the visual quality of the content played out by the end-users by efficiently enabling multi-codec content delivery. Given a video content encoded with multiple codecs according to a fixed bitrate ladder, the model will choose among three available policies, i.e., fetch, transcode, or skip, the best option to handle the representations. We compare the proposed model with traditional approaches used in the industry. The experimental results show that our proposed method can reduce the additional latency by up to 23{\%} and the streaming costs by up to 78{\%}, besides improving the visual quality of the delivered segments by up to 0.5 dB, in terms of PSNR.},
  isbn={978-3-031-27818-1}
}
```
