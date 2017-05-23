---
layout: page
title: A practical, lightweight, hybrid cache sharing/partitioning scheme for multicore systems
permalink: /seminars/CashePartitioning/
date: February 08, 2017
---

## A practical, lightweight, hybrid cache sharing/partitioning scheme for multicore systems

### Speaker:

[Nosayba El-Sayed]()

### Abstract:

In shared datacenters, multicore servers often run multiple applications to improve system utilization. However, colocated applications interfere in shared resources, such as the last-level cache (LLC), causing performance inefficiencies. Recently, support for partitioning the LLC has been added to commercial hardware, providing a promising, lightweight venue for tackling these inefficiencies. The key challenge in using hardware-based LLC partitioning, however, is that it provides coarse-grained partition sizes for applications, which may cause performance degradations.

In this talk, I will discuss these limitations and present a technique we are investigating to facilitate the practical adoption of LLC partitioning in multicore systems. Our technique is based on a hybrid approach that combines cache sharing and cache partitioning features. We utilize a hierarchical clustering algorithm to make data-driven decisions about which applications can share cache partitions and which should be isolated. For more details, I'll see you this Wednesday! 