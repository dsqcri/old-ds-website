---
layout: page
title: Shepherd: Improving Datacenter Efficiency through Partitioning-Aware Scheduling
permalink: /seminars/shepherd/
---

## Shepherd: Improving Datacenter Efficiency through Partitioning-Aware Scheduling

### Speaker:

[Xu Ji]()

### Abstract:

Datacenters routinely colocate applications and virtual machines to improve resource utilization and energy efficiency. However, colocated applications can interfere in shared memory resources, e.g., the last level cache (LLC) and DRAM bandwidth, leading to performance inefficiencies and SLO violations.

Prior work has proposed two disjoint approaches to improve resource efficiency. On the one hand, cache and bandwidth partitioning can provide isolation and trade performance among colocated applications within a single node. But partitioning techniques are limited by the fixed resource demands of applications running on the node. On the other hand, interference-aware schedulers try to find resource-compatible applications and schedule them across nodes to improve efficiency or meet SLOs. But prior schedulers are hampered by the lack of partitioning hardware in conventional multicores, and have to take conservative colocation decisions, leaving significant performance on the table.

In this paper, we show that memory-system partition- ing and scheduling are complementary, and performing them together yields significant benefits. We propose Shepherd, a joint workload placement and resource partitioning technique to maximize datacenter throughput for batch workloads. Shepherd uses detailed application profiling data to optimally partition the shared LLC, and to estimate the impact of DRAM bandwidth contention among colocated applications. Shepherd’s cluster-wide scheduler leverages this partitioning and contention information to colocate applications with complementary re- source requirements, improving resource utilization and total throughput. We implement and evaluate Shepherd using commercial x86 multicore hardware. Our evaluation shows that on a mix of cache- and memory-intensive applications from the SPEC CPU2006 and PBBS bench- mark suites, Shepherd improves throughput by up to 23.7%, and by 9.1% on average.
