---
layout: page
title: Mobile App Development
permalink: /seminars/mobile-app-development/
---

## Mobile Application Development, Options and Choices

### Speaker:

[Abdurrahman Ghanem](/team/aghanem/)

### Abstract:

The extreme latency and throughput requirements of modern big data and web applications are driving the use of distributed in-memory object caches such as Memcached. While extant caching systems scale-out seamlessly, their use in the cloud — with its unique cost and multi-tenancy dynamics — presents unique opportunities and design challenges.

In this talk, I will introduce MBal, a high-performance in-memory object caching framework with adaptive Multi-phase load Balancing. Mbal supports not only horizontal (scale-out) but vertical (scale-up) scalability as well. Mbal is able to make efficient use of available resources in the cloud through its fine-grained, partitioned, lockless design. This design also lends itself naturally to provide adaptive load balancing both within a server and across the cache cluster through an event-driven, multi-phased load balancer. While individual load balancing approaches are being leveraged in in-memory caches, MBal goes beyond the extant systems and offers a holistic solution wherein the load balancing model tracks hotspots and applies different strategies based on imbalance severity – key replication, server-local or cross-server coordinated data migration. I will present results to show that compared to a state-of-the-art approach, MBal scales with number of cores and executes up to 12x more queries/second for GET and SET operations, respectively.