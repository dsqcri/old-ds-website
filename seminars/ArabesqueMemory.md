---
layout: page
title : Optimizing the memory utilization of Arabesque
permalink: /seminars/ArabesqueMemory/
date: November 22, 2017
---

## Optimizing the memory utilization of Arabesque

### Speaker:

[Eslam Hussein]()

### Abstract:

Graph data mining is defined as searching in an input graph for all subgraphs that satisfy some property that makes them interesting to the user. Examples of graph data mining problems include frequent subgraph mining, counting motifs, and enumerating cliques. Graph data mining requires searching through an exponential number of subgraphs. Arabesque, a system that was built specifically to support graph data mining.  As Arabesque explores the graph, it generates an exponential number of of subgraphs. To reduce the memory required for storing these subgraphs, Arabesque uses a compact data structure called Overapproximating Directed Acyclic Graph (ODAG) that compresses the embeddings generated in a BSP step.
Even with Arabesque' effiecient compact representation of those enormous amounts of intermediate states. It fails to proceed more steps generating bigger subgraph. In this work, we would explain how we managed to find a space efficient representation of those intermediate states. And reduce the memory utilization of Arabesque, allowing it to mine deeper into the graph and generate more results.

