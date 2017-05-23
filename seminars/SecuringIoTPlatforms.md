---
layout: page
title : Securing IoT Platforms - Systematic Analysis and Design
permalink: /seminars/SecuringIoTPlatforms/
date: February 15, 2017
---

## Securing IoT Platforms: Systematic Analysis and Design

### Speaker:

[Atul Prakash]()

### Abstract:

Internet of Things (IoT) is connected set of physical devices (called “smart devices”), consisting of sensors and actuators that enable a general class of cyber-physical systems such as smart homes, smart vehicles, smart buildings, smart cities, and intelligent transportation. Per Gartner, IoT systems may grow to almost 50 billion devices by 2020. To enable IoT systems to be managed and controlled, software platforms such as SmartThings by Samsung and Brillo/Weave by Google are beginning to emerge. In this talk, we systematically examine the security of one such platform for building such systems, SmartThings. The analysis of SmartThings was challenging because it is a closed-source, cloud-based platform for hosting IoT apps.  It supported closed to 500 apps when we did the analysis. Even though the platform has many security-relevant design features, such as sandboxed apps and encrypted communication, systematic analysis revealed that the platform inherently introduces the problem of over-privilege, even in well-designed apps. We found that the over-privilege was exploitable and could be used to remotely steal codes for smart door locks, remotely program new locks, disable vacation modes, spoof events, etc.  Besides suggesting improvements to the design of SmartThings, we discuss a powerful security mechanism, FlowFence, that allows app developers to design IoT apps that support stringent information flow control policies.

### Bio:

Atul Prakash is a Professor in Computer Science and Engineering at the University of Michigan, Ann Arbor with research interests in computer security and privacy. He received a Bachelor of Technology in Electrical Engineering from IIT, Delhi, India and a Ph.D. in Computer Science from the University of California, Berkeley.  His current research is focusing on security of Internet of Things. His recent work on security analysis of the SmartThings cloud platform for hosting IoT apps received a Distinguished Practical Paper Award at IEEE Security and Privacy, attracted press, and led to changes in the SmartThings platform. At the University of Michigan, He has served as Director of the Software Systems Lab, led the creation of the new Data Science undergraduate program, and is the recipient of the 2016-17 EECS Outstanding Achievement Award.