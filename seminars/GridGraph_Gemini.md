---
layout: page
title : GridGraph and Gemini: Scale-Up and Scale-Out Graph Processing
permalink: /seminars/GridGraph_Gemini/
date: March 22, 2017
---

## GridGraph and Gemini: Scale-Up and Scale-Out Graph Processing

### Speaker:

[Xiaowei Zhu]()

### Abstract:

In this seminar, I will introduce two graph processing systems: GridGraph and Gemini. Both systems manage to process graphs that are larger than the capacity of a single machine's memory, with different cost and performance tradeoffs.

GridGraph is an out-of-core solution that tries to extract potentials from disks by issuing sequential I/O requests as much as possible. It partitions edges into 2D blocks and proposes a dual sliding windows model to enable on-the-fly vertex updates so that only a read pass over the edges is needed for each iteration of processing. Selective scheduling is used to skip inactive edge blocks for further I/O reduction.

Gemini is a distributed solution that tries to bridge the efficiency and scalability gap between existing shared-memory and distributed graph-parallel systems, i.e. to build scalability on top of efficiency. It is designed to avoid unnecessary side-effects caused by the distribution of computations, and to optimize computations on partitioned sub-graphs by absorbing a variety of techniques from single-machine solutions. A simple yet effective chunking method is used for partitioning at multiple levels throughout the system, showing multi-fold benefits.