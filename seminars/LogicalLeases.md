---
layout: page
title : Logical Leases: Scalable Hardware and Software Systems through Time Traveling
permalink: /seminars/LogicalLeases/
date: January 17, 2018
---

## Logical Leases: Scalable Hardware and Software Systems through Time Traveling

### Speaker:

[Xiangyao Yu]()

### Abstract:

Parallelism is the key to system performance. However, designing efficient parallel systems is hard. My research aims at improving the scalability and performance of shared-memory parallel systems.

We have designed, implemented, and evaluated three shared-memory systems spanning the hardware and software stack: (1) the new Tardis cache coherence protocol for multi-core CPUs, (2) the new TicToc concurrency control algorithm for on-line transaction processing (OLTP) database systems, and (3) the new Sundial distributed concurrency control protocol for distributed database systems. All the three systems demonstrate significantly improved performance and scalability compared to their counterparts.

The key idea behind the three systems is a new concept, logical leases. Logical leases are simple to implement, yet enable an application to move memory operations (load/stores) forward and backwards in time (i.e., time traveling) in order to avoid conflicts. The power of logical leases comes from the new notion of time that it is based on, physiological time, which combines the power of physical and logical time. Logical leases simplify the protocols in shared-memory systems, while improving performance and scalability.

### Bio:

Xiangyao Yu is a postdoc at CSAIL MIT, working with Prof. Michael Stonebraker. He received his PhD degree from MIT under supervision of Prof. Srinivas Devadas at 2017, BS degree from Tsinghua University at 2012. His research interests span computer architecture and databases.