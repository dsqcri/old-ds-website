---
layout: page
title: Multimedia
permalink: /projects/multimedia/
---

# 2D to Immersive content conversion
A wide spread adoption of 3D stereoscopic television and the coming wave of virtual reality devices are hindered by the lack of high-quality 3D and immersive content. One promising solution to address this need is to use automated 2D-to-Immersive content conversion.


## Overview
 Current conversion methods, while general, produce low-quality results that exhibit artifacts that are not acceptable to many viewers. We address this problem by showing how to construct a high-quality, domain-specific conversion method for sports videos. Our method is data-driven — we generate stereoscopic frames for a given video stream by transferring depth information from a database of similar 3D stereoscopic videos. Once we retrieve similar 3D video frames, our technique transfers depth gradients to the target frame while respecting object boundaries, solves for the output depth map, and then generates stereoscopic video.
 
## Cloud Service Overview

![multimedia](/projects/multimedia/system_architecture.png)

The figure above shows the high-level design of V3V system. The main goal of the system is to convert 2D video segments into 3D. The system consists of (i) server that receives a 2D video segment, converts it to 3D, and  provides a url for downloading the converted 3D segment, (ii) client application from which users can send 2D segments to the server and downloads the converted 3D segments.
 
As shown in the figure, the entry point to the server is the REST interface. The REST interface intercepts the requests coming to the server and passes them to the system in the form of actions (see Section 3 for the list of supported actions). The REST interface logs the requests coming to it in a repository that is used to monitor the activity of the server. The repository is monitored by a system administrator who can also set some internal system parameters through web management console.

In order to serve concurrent requests from several clients in real time, the server has a module to provision on demand computing resources from public/private clouds. This module initializes a  cluster of machines for each client registered with the system. It balances the workload on the cluster, it can dynamically scale up/down cluster based on the processing requirements to meet the real time constraints. The module is designed to be independent of the APIs of the cloud providers.

## Demo website
- [http://v3v.qcri.org](http://v3v.qcri.org)

## Patents
- Gradient-based 2D to 3D Video Conversion, US Provisional Patent Application, Filed August 2015.

## Publications
- K. Calagari, M. Elgharib, P. Didyk, A. Kaspar, W. Matusik, and M. Hefeeda, “Gradient-based 2D-to-3D Conversion for Soccer Videos”, ACM Multimedia (MM’15), Brisbane, Australia, October 2015.


## Team
- Kiana Calagari                      
- Anis Troudi
- Ahmad Musleh
- Omar Abou Selo
- Ahmed Mamdouh
- Ajay Nandoria
- Mohamed Elgharib
- Mohamed Hefeeda  
- Piotr Didyk  
- Alexandre Kaspar             
- Wojciech Matusik

## Datasets
- [Obstruction Dataset](http://ds.qcri.org/projects/multimedia/datasets/)
