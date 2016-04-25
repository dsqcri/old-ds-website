---
layout: page
title: Crosscloud
permalink: /projects/crosscloud/
---

# Crosscloud: A New Architecture for the Social Web 

The Crosscloud research project is a joint project with MIT. The project aims to radically change the way Web applications work today, resulting in true data ownership as well as improved privacy.
Centralized social Web platforms can cause numerous problems for users and application developers. For example, users cannot easily move data between platforms or switch between similar applications that would reuse their data. Moreover, existing social network platforms control the data access APIs and often change its features, thus freedom from these platforms is important. This is particularly the case for applications that access valuable data -- e.g., from the financial or medical domain. Developers are restricted to the data access APIs provided by a specific platform, and cannot easily develop applications that can run on multiple platforms.

Crosscloud addresses these problems and provides decentralization and data independence for the social Web. The long-term goal of Crosscloud is to create a new ecosystem for social Web applications, and for that it is essential to have a good choice of protocols on the wire. At that level, the interoperability between diverse implementations is key. In addition,  we are experimenting with different architectures for client side and server-side software stacks, and different storage and query architectures. However, the priority of the work is to design the protocols. The [Crosscloud team](http://crosscloud.org/) has developed [Solid](http://dl.acm.org/citation.cfm?doid=2872518.2890529) (derived from "social linked data").  Solid is a proposed set of protocols for building decentralized Web applications based on Linked Data principles. 



## Overview and Goals

![crosscloud](/projects/crosscloud/solid_arch.png)

Crosscloud Architecture. The user controls his/her identity using an RDF profile document, often stored on a pod server. The user loads a Solid application from an application provider. The application obtains the user's pod from the identity profile. It then follows links from the profile to discover data on the user's pod, as well as on other pods, performing authentication when needed.



Crosscloud has several goals that distinguish it from other proposals for decentralizing the social Web. For example, we are aiming at a much higher degree of data independence, that is, decoupling between data and the applications that create and consume this data.
It should be possible for end users to easily switch between applications that use the same data.
Also, Crosscloud aims to appeal to application developers by relying on Web standards and providing simple and generic, yet powerful, data access mechanisms that enable developers to easily add social features to their applications. In addition, Crosscloud is investigating the behavior and required support for applications that operate at different scale points in terms of data size or number of users whose data is accessed. For example, one of the key elements we are investigating is the extent to which query processing and Web traversal can be offloaded from client to server.

## Websites 
- [http://crosscloud.org/](http://crosscloud.org/)
- [Our Solid Platform](https://github.com/solid/solid/)


## publications
- Essam Mansour, Andrei Vlad Sambra, Sandro Hawke, Maged Zereba, Sarven Capadisli, Abdurrahman Ghanem, Ashraf Aboulnaga, Tim Berners-Lee: [A Demonstration of the Solid Platform for Social Web Applications](http://dl.acm.org/citation.cfm?doid=2872518.2890529). WWW 2016: 223-226

## Team
- [Ashraf Aboulnaga](/team/ashraf/) 
- Essam Mansour
- Maged Zereba
- Abdurrahman Ghanem 
- Eslam Hussein
