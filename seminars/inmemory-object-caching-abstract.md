---
layout: page
title: Seminar
permalink: /seminars/inmemory-object-caching-abstract
---

## An In-Memory Object Caching Framework with Adaptive Load Balancing

### Speaker:

[Dr. Ali R. Butt](http://people.cs.vt.edu/butta/) (External)

### Abstract:

The extreme latency and throughput requirements of modern big data and web applications are driving the use of distributed in-memory object caches such as Memcached. While extant caching systems scale-out seamlessly, their use in the cloud — with its unique cost and multi-tenancy dynamics — presents unique opportunities and design challenges.

In this talk, I will introduce MBal, a high-performance in-memory object caching framework with adaptive Multi-phase load Balancing. Mbal supports not only horizontal (scale-out) but vertical (scale-up) scalability as well. Mbal is able to make efficient use of available resources in the cloud through its fine-grained, partitioned, lockless design. This design also lends itself naturally to provide adaptive load balancing both within a server and across the cache cluster through an event-driven, multi-phased load balancer. While individual load balancing approaches are being leveraged in in-memory caches, MBal goes beyond the extant systems and offers a holistic solution wherein the load balancing model tracks hotspots and applies different strategies based on imbalance severity – key replication, server-local or cross-server coordinated data migration. I will present results to show that compared to a state-of-the-art approach, MBal scales with number of cores and executes up to 12x more queries/second for GET and SET operations, respectively.

### Bio:

Ali received his Ph.D. degree in Electrical and Computer Engineering from Purdue University in 2006. Ali is a recipient of an NSF CAREER Award (2008), IBM Faculty Awards (2008, 2015), a VT College of Engineering (COE) Dean's award for "Outstanding New Assistant Professor" (2009), an IBM Shared University Research Award (2009), and NetApp Faculty Fellowships (2011, 2015). Ali was named a VT COE Faculty Fellow in 2013. He has served as the Associate Editor for IEEE Transactions on Parallel and Distributed Systems (2013--present) and Sustainable Computing: Informatics and Systems (2010--present). He was selected to participate in National Academy of Engineering's USFOE Symposium in 2009, USJFOE in 2012, Arab-American FOE in 2015, and also as an organizer for the USFOE in 2010. Ali's research interests are in operating systems, distributed systems, file and storage systems, and cloud computing. At Virginia Tech. he leads the Distributed Systems & Storage Laboratory.

