---
layout: page
title: Large-scale, Fast and Accurate Shot Boundary Detection through Convolutional Neural Networks
permalink: /projects/deepsbd/
---

# DeepSBD 
Shot boundary detection (SBD) is an important pre-processing step for video manipulation. Here, each segment of frames is classified as either sharp, gradual or no transition. Current SBD techniques analyze hand-crafted features and attempt to optimize both detection accuracy and processing speed. However, the heavy computations of optical flow prevents this from happening. To achieve this aim, we present an SBD technique based on spatio-temporal Convolutional Neural Networks (CNN). 
Since current datasets are not large enough to train an accurate SBD CNN, we are the first to present a very large SBD dataset that allows deep neural networks techniques to be effectively applied. Our dataset contains more than 3.5 million frames of sharp and gradual transitions. The transitions are generated synthetically using image compositing models. Our dataset contains additional 70,000 frames of important hard-negative no transitions. We perform the largest evaluation to date for one SBD algorithm, on real and synthetic data, containing more than 4.7 million frames. In comparison to the state of the art, we outperform dissolve gradual detection, generate competitive performance for sharp detections and produce significant improvement in wipes. In addition, we are up to 11 times faster than the state of the art.

- ![Paper pdf](/publications/deepsbd.pdf)
- ![Supplementary materials](/publications/deepsbd-sm.pdf)

## Dataset

- [Dataset](deepsbd.qcri.org/DeepSBD.tar.gz)
- ![synthetic data](/projects/crosscloud/3.jpg)

## publications
- Large-scale, Fast and Accurate Shot Boundary Detection through Spatio-temporal Convolutional Neural Networks, A Hassanien, M Elgharib, A Selim, M Hefeeda… - arXiv preprint arXiv:1705.03281, 2017
## Team
- [Ahmed Hassanien](/team/ahassanien/) 
- Mohamed Elgharib
- Ahmed Selim
- Sung-Ho Bae
- Mohamed Hefeeda
- Wojciech Matusik
