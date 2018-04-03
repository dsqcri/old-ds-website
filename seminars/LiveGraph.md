---
layout: page
LiveGraph: Supporting Simultaneous Transaction and Analytics Processing of Graph Data


permalink: /seminars/LiveGraph/
date: November 8, 2017
---

## LiveGraph: Supporting Simultaneous Transaction and Analytics Processing of Graph Data




### Speaker:

[Marco Serafini]()

### Abstract:

This talk will present LiveGraph, a graph database designed to support both transactional and analytical processing efficiently. LiveGraph, uses a novel distributed log-structured storage which provides significant advantages over conventional flat layouts, expressing graph-structured data with vertex-centric over-provisioned logs. The vertex-centric organization ensures good locality for reads, while the over-provisioning feature enables efficient writes. Analytical jobs can directly run on a latest consistent snapshot, reducing both data latency and query latency. Our evaluation shows that LiveGraph outperforms state-of-the-art graph databases by up to 1.54x (with per-transaction commits) and 36.8x (with relaxed batched commits) on LinkBench, an OLTP benchmark for graph-structured data, while matching the performance of state-of-the-art graph engines on several graph analytics applications, without the need of time-consuming ETL or preprocessing before computation.
