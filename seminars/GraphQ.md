---
layout: page
title: GraphQ: Distributed Graph Search via Subgraph Isomorphism
permalink: /seminars/GraphQ/
---

## GraphQ: Distributed Graph Search via Subgraph Isomorphism

### Speaker:

[Georgos Siganos]()

### Abstract:

Searching for patterns in Graphs is an important and computationally complex problem.
At its heart lies the subgraph isomorphism problem, which is NP-Hard.
Many practical applications use graph search despite the computational complexity and
there exist a diverse ecosystem of systems that enable such applications. Simple graph
search queries typically require few milliseconds to answer. Despite this deceivingly good
performance, slightly more complicated queries can stress the current state-of-the art and
take hours to complete, if at all, even for graphs with a few thousands vertices.

GraphQ proposes a paradigm shift on how to scale graph search in a distributed setup.
Current systems focus on scaling search to graphs that don’t fit in a server's main memory, and
typically utilise distributed joins. GraphQ focuses on speeding up the computation in a cluster, in
the case where the graph fits in main memory, and utilises pure graph exploration techniques
used by the state-of-the art subgraph isomorphism algorithms. GraphQ proposes a novel dual
approach. Initially, it partitions the search problem among a set of workers, assigning each of
them to a different starting point (Think like a pattern(TLP)). In the presence of hotspots and
imbalances that naturally appear during TLP execution, GraphQ switches automatically to a
Think like an Embedding(TLE) approach to redistribute and balance work among workers.
GraphQ can switch execution modes on the fly with zero cost, scales to large graphs, and offers
significantly better performance compared to the state of the art.

