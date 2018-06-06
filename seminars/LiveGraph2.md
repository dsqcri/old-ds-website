---
layout: page
title : LiveGraph: LiveGraph: A Hybrid Transactional/Analytical Processing System for Graph-Structured Data
permalink: /seminars/LiveGraph2/
date: May 9, 2018
---

## LiveGraph: A Hybrid Transactional/Analytical Processing System for Graph-Structured Data


### Speaker:

[Marco Serafini]()

### Abstract:

I will present LiveGraph, a graph system designed to support both transactional and analytical processing efficiently. LiveGraph uses a novel Multi-versioned Adjaciency List Log (MALL) data structure that provides significant advantages over conventional alternatives adopted by existing graph databases/engines. MALL expresses graph-structured data with per-vertex, contiguous, and over-provisioned logs, promoting sequential accesses crucial to edge scan performance while accommodating writes. MALL's multi-versioned design allows (multiple) analytics jobs to run concurrently on consistent virtual snapshots, without blocking ongoing graph database transactions.
LiveGraph is designed to both provide the convenience of a two-in-one solution and better end-to-end performance for each type of its target workload. Our evaluation based on Facebook graph transaction workloads finds that LiveGraph significantly outperforms five widely-used (graph) database systems. Its analytical performance is often comparable to a state-of-the-art graph engine, while entirely eliminating graph pre-processing steps that actually dominate the end-to-end analytics time. As expected, the I/O-intensive and latency-sensitive transaction workloads are more vulnerable to concurrent analytics jobs, but the performance impact from the latter could be effectively controlled by varying the number of threads allocated.
