---
layout: page
title : vSensor: Leveraging Fixed-Workload Snippets of Programs for Performance Variance Detection
permalink: /seminars/vSensor/
date: March 07, 2018
---

## vSensor: Leveraging Fixed-Workload Snippets of Programs for Performance Variance Detection

### Speaker:

[Xiongchao Tang]()

### Abstract:

Performance variance becomes increasingly challenging on current large-scale HPC systems. Even using a fixed number of computing nodes, the execution time of several runs can vary significantly. Many parallel programs executing on supercomputers suffer from such variance. Performance variance not only causes unpredictable performance requirement violations, but also makes it unintuitive to understand the program behavior. Despite prior efforts, efficient on-line detection of performance variance remains an open problem.

We present vSensor, a novel approach for light-weight and on-line performance variance detection. The key insight is that, instead of solely relying on an external detector, the source code of a program itself could reveal the runtime performance characteristics. Specifically, many parallel programs contain code snippets that are executed repeatedly with an invariant quantity of work. Based on this observation, we use compiler techniques to automatically identify these fixed-workload snippets and use them as performance variance sensors (v-sensors) that enable effective detection. We evaluate vSensor with a variety of parallel programs on the Tianhe-2 system. Results show that vSensor can effectively detect performance variance on HPC systems. The performance overhead is smaller than 4% with up to 16,384 processes. In particular, with vSensor, we found a bad node with slow memory that slowed a program's performance by 21%. As a showcase, we also detected a severe network performance problem that caused a 3.37x slowdown for an HPC kernel program on the Tianhe-2 system.

