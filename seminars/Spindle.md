---
layout: page
title : Spindle: Informed Memory Access Monitoring
permalink: /seminars/Spindle/
date: January 24, 2018
---

## Spindle: Informed Memory Access Monitoring

### Speaker:

[Haojie Wang]()

### Abstract:

Memory monitoring is of critical use in understanding applications and evaluating systems, either with trace collection and offline processing, or online analysis. Spindle is such a memory monitoring and analysis tool, which combines static and dynamic analysis techniques to compute the memory access targets whenever possible rather than simply record it. Spindle is implemented in LLVM compiler framework. At compile time, Spindle can obtain and analyze the static structure of the program and instrument for the information which can only be determined at runtime. After getting the necessary dynamic information at runtime, Spindle can either perform the online analysis or record it to use it combined with static information for offline analysis. Since Spindle can discard most of the repeated information, both the time overhead and space overhead(if needed by offline analysis) are much smaller than traditional tools.
