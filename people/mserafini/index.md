---
layout: page
title: Dr. Marco Serafini
permalink: /people/mserafini/
---
![mserafini](/people/mserafini/small.png)

I am a Scientist at the Qatar Computing Research Institute, where I work at the intersection of database systems and distributed systems. Previously I was a postdoc at the Yahoo! Research Barcelona lab ([R.I.P.](http://www.huffingtonpost.com/quora/what-went-wrong-with-yaho_b_9821176.html)).

[//]: # ( From January 2018, I will join the faculty of the [College of Information and Computer Sciences](https://www.cics.umass.edu) at the [University of Massachusetts Amherst](https://www.umass.edu) as Assistant Professor. ) 

***

# Current Projects

I am currently involved in three projects: 

* Arabesque, a system for distributed graph mining
* Elastic database management systems (Accordion, E-Store, Clay)
* Load balancing in distributed stream processing systems

### Arabesque: A system for distributed graph mining
Graph mining algorithms such as frequent subgraph mining, motif counting, or finding dense subgraphs, are powerful tools to extract interesting subgraphs from a large graph. They are very important for areas such as social networks, semantic web, and bioinformatics. However, they have high computational complexity, which is mainly due to the need for enumerating a huge number of subgraphs of the input graph. Arabesque is a system that helps programmers implement graph mining algorithms by abstracting away subgraph enumeration. It offers a simple functional API where application basically just have to specify a boolean *filter* function, which takes a subgraph as input and returns whether the subgraph is interesting. Arabesque also transparently distributes and optimizes the enumeration process across multiple servers running Hadoop. It keeps all its state in memory in order to avoid the cost of random accesses to disk.

Arabesque is an open source system running on top of Giraph and (soon) Spark. 
Check out the project homepage at [arabesque.io](http://arabesque.io)

*Papers:*

* [Arabesque](http://sigops.org/sosp/sosp15/current/2015-Monterey/printable/093-teixeira.pdf): Carlos T. H. Teixeira, Alex J. Fonseca, Marco Serafini, Georgos Siganos, Mohammed J. Zaki, Ashraf Aboulnaga, *"Arabesque: A System for Distributed Graph Mining"*. ACM Symp. on Operating Systems Principles (SOSP) 2015
* [QFrag](http://ds.qcri.org/people/mserafini/QFrag.pdf): Marco Serafini, Gianmarco De Francisci Morales, Georgos Siganos, *"QFrag: Distributed Graph Search via Subgraph Isomorphism"*. ACM Symp. on Cloud Computing (SoCC) 2017


###  Database elasticity (Accordion, E-Store, Clay)

Cloud computing platforms gives the opportunity to reduce the hardware cost of running a database management system by dynamically add and remove servers from a distributed cluster according to load changes. In order to leverage this flexibility, applications need to be designed to be *elastic*, i.e., to transfer data and computation to and from servers whenever it is needed. Elastic databases abstract away the complexity of elasticity from applications. They are able to detect changes in load on-line and devise a data and load migration plan that can accomodate these changes. I have worked on three systems for database elasticity: *Accordion*, which partitions the database in small blocks and transfers them as needed based on online monitoring information, *E-Store*, which uses a two-tiered approach to identify and move hot tuples at very high granularity, and *Clay*, which extends E-Store to support arbitrary transactional access patterns involving multiple tuples.

The project was a collaboration with Michael Stonebraker's group at MIT.

*Papers:*

* [Accordion](http://www.vldb.org/pvldb/vol7/p1035-serafini.pdf): Marco Serafini, Essam Mansour, Ashraf Aboulnaga, Kenneth Salem, Taha Rafiq, Umar Farooq Minhas. *"Accordion: Elastic Scalability for Database Systems Supporting Distributed Transactions".* Int. Conf. on Very Large Data Bases (VLDB) 2014 
* [E-Store](http://www.vldb.org/pvldb/vol8/p245-taft.pdf): Rebecca Taft, Essam Mansour, Marco Serafini, Jennie Duggan, Aaron J. Elmore, Ashraf Aboulnaga, Andrew Pavlo, Michael Stonebraker. *"E-Store: Fine-Grained Elastic Partitioning for Distributed Transactions Processing Systems".* Int. Conf. on Very Large Data Bases (VLDB) 2015
* [Clay](http://ds.qcri.org/people/mserafini/clay.pdf): Marco Serafini, Rebecca Taft, Aaron Elmore, Andrew Pavlo, Ashraf Aboulnaga, Michael Stonebraker. *"Clay: Fine-Grained Adaptive Partitioning for General Database Schemas"*. Int. Conf. on Very Large Data Bases (VLDB) 2017
* [P-Store](mailto:mserafini@hbku.edu.qa): Rebecca Taft, Nosayba El-Sayed, Marco Serafini, Ashraf Aboulnaga, Michael Stonebraker, Ricardo Mayerhofer, Francisco Andrade. *"P-Store: An Elastic Database System with Predictive Provisioning"*. ACM SIGMOD Int. Conf. on Management of Data (SIGMOD) 2018

### Load balancing in distributed stream processing systems

Distributed stream processing system allow running user-defined operators on an input stream of key-value pairs. Operators can also produce tuples that form the input stream for other operators. Each input stream is partitioned on multiple sub-streams based on the keys of the tuples. For scalability, sub-streams can be assigned to different physical servers running the same operator. Input streams can be very skewed so it is important to balance load carefully by assigning the right sub-streams to the right operators. However, it is often impossible to predict which key will be more expensive than others. In this project, we identify online mechanisms to detect hot keys and balance load even in presence of very high skew. We first used a technique called *partial key grouping* (aka "the power of both choices"), which involves replicating each operator instance on two servers and selecting the right replica dynamically on a tuple-by-tuple basis. The technique has been integrated in the main release of Apache Storm. Our second technique deals with settings with a large number of servers, where balancing load is more difficult and more than two choices may be needed.

*Papers:*

* [Both choices](http://ds.qcri.org/publications/2015-nasir-icde.pdf): Muhammad Anis Uddin Nasir, Gianmarco De Francisci Morales, David García-Soriano, Nicolas Kourtellis, Marco Serafini, *"The Power of Both Choices: Practical Load Balancing for Distributed Stream Processing Engines".* IEEE Int. Conf. on Data Engineering (ICDE) 2015.

* [N choices](http://ds.qcri.org/publications/2016-nasir-icde.pdf): Muhammad Anis Uddin Nasir, Gianmarco De Francisci Morales, Nicolas Kourtellis and Marco Serafini. *"When Two Choices Are not Enough: Balancing at Scale in Distributed Stream Processing."* IEEE Int. Conf. on Data Engineering (ICDE), 2016

***

# Previous Projects

### ASC model (@ Yahoo!/QCRI)

Prior to joining QCRI, Marco worked at Yahoo! Research in Barcelona where he studied the problem of protecting large scale distributed systems from hardware data corruption, which is expected to becoming more and more frequent in future generations of CPUs because of reduced geometry and voltage levels. Unreliable commodity servers are typically used to store data that is critical from an infrastructure viewpoint (e.g., configuration metadata), personal viewpoint (e.g., emails), or financial viewpoint (e.g., ad clicks and billing information). Critical systems like Google's Mesa, for example, detect corruption errors through application-specific replication techniques. I proposed a new formal model for Arbitrary State Corruption (ASC), which captures the essential aspects of data corruption faults in an application-independent manner. I used the model to develop PASC, a runtime library that can provably detect data corruption errors in any event-based distributed system without using replication. SEI makes PASC more practical by supporting multiple threads, substantially eliminating memory overhead, and making it easier to transparently harden existing applications.

*Papers:*

* [PASC](https://www.usenix.org/system/files/conference/atc12/atc12-final190.pdf): M. Correia, D. Gómez Ferro, F. Junqueira, M. Serafini, *“Practical Hardening of Crash-Tolerant Systems”.* USENIX Annual Technical Conference (ATC) 2012.
* [SEI](https://www.usenix.org/system/files/conference/nsdi15/nsdi15-paper-behrens.pdf): Diogo Behrens, Marco Serafini, Sergei Arnautov, Flavio P. Junqueira, Christof Fetzer, *"Scalable error isolation for distributed systems".* USENIX Symp. on Networked Systems Design and Implementation (NSDI) 2015.


### Zookeeper replication protocol (@ Yahoo!)

[Zookeeper](http://zookeeper.apache.org) is a popular open-source system use to store metadata and to coordinate distributed systems. It is used by many products and open-source projects. While at Yahoo! Research, I also worked on the Zookeeper Atomic Broadcast (Zab) protocol, which is at the heart of Zookeeper. People often have a hard time understanding the difference between active replication protocols like Paxos, which exchange operations, and passive ones like Zab, which exchange state updates. I introduced the notion of barrier to provide a simple discrimination criteria.

*Papers:*

* [Zab](http://ds.qcri.org/people/mserafini/zab.pdf): F. Junqueria, B. Reed and M. Serafini. *“Zab: High-Performance Broadcast for Primary-Backup Systems”.* IEEE Int’l Conf. on Dependable Systems and Networks (DSN) 2011.
* [Zab vs. Paxos explained](https://arxiv.org/pdf/1308.2979.pdf): Flavio P. Junqueira and Marco Serafini.  *"On Barriers and the Gap between Active and Passive Replication".*  Int. Symp. on Distributed Computing (DISC) 2013.

### Data placement in social networking systems (@ Yahoo!)

At Yahoo! I also developed social piggybacking, a technique that uses graph mining techniques on social graphs to increase the throughput of social event feed systems. 

*Papers:*

* [Social piggybacking](http://www.vldb.org/pvldb/vol6/p409-serafini.pdf): Aristides Gionis, Flavio Junqueira, Vincent Leroy, Marco Serafini, Ingmar Weber. *"Piggybacking on social networks".* Int. Conf. on Very Large Data Bases (VLDB) 2013.


### Dealing with severe faults in replicated systems (@ TUD)

I received my PhD at TU Darmstadt. My thesis introduced the concept of Eventual Linearizability, a correctness condition for systems that are usually strongly consistent and degrade consistency only when necessary. It also introduced Scrooge, a fast Byzantine fault tolerant algorithm running on a small set of replicas.

*Papers:*

* [Eventual linearizability](http://ds.qcri.org/people/mserafini/eventual-linearizability.pdf): M. Serafini, D. Dobre, M. Majuntke, P. Bokor and N. Suri, *“Eventually Linearizable Shared Objects”.* ACM Symp on Principles of Distributed Computing (PODC), 2010.

* [Applications of EL](http://ds.qcri.org/people/mserafini/people/EL-ladis.pdf): Marco Serafini and Flavio Junqueira. *"Weak Consistency as a Last Resort".* Workshop on Large-Scale Distributed Systems and Middleware (LADIS) 2010.

* [Scrooge](http://ds.qcri.org/people/mserafini/scrooge.pdf): M. Serafini, P. Bokor, D. Dobre, M. Majuntke, and N. Suri, *"Scrooge: Reducing the cost of fast Byzantine replication in presence of unresponsive replicas".* IEEE Int. Conf. on Dependable Systems and Networks (DSN), 2010.

***

# Professional Service

I have been or will be PC member of VLDB 2018, ICDE 2018, SOSP 2017, VLDB 2017, Eurosys 2017, WWW 2017, DSN 2017, IC2E 2017, APSys 2017, Eurosys 2016, ICDCS 2016, ICDE 2016, SRDS 2106, IC2E 2016, SIGMOD 2016 demo, ICDCS 2015, WWW 2015, SRDS 2015, OPODIS 2014, SSS 2014, Middleware 2012 (Industry track), EDCC 2012, SOFSEM 2011.

I will be the co-PC chair of the LADIS 2018 workshop (Large-Scale Distributed Systems and Middleware), colocated with PODC 2018.
I was the co-PC chair of the PaPoC 2015 workshop (Principles and Practice of Consistency for Distributed Data), colocated with Eurosys 2015.

# Awards

My PhD thesis was nominated for the “Best PhD Thesis of 2010” by the German, Swiss and Austrian Computer Science societies and the German chapter of ACM for PhD thesis titled “Efficient and Low-Cost Fault-Tolerance for Web-Based Systems”.

