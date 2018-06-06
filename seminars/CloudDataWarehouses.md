---
layout: page
title : Understanding and Predicting Performance of Cloud-based Data Warehouses
permalink: /seminars/CloudDataWarehouses/
date: May 02, 2018
---

## Understanding and Predicting Performance of Cloud-based Data Warehouses

### Speaker:

[Thanaa Ghanem]()

### Abstract:

Cloud-based data warehouses and online analytical processing (OLAP) engines offer considerable advantages.  Some allow one to change the number of processors from query to query, while others allow one to avoid paying for processing power and/or storage when there is no query load.  However, there is a myriad of parallel data warehouse systems available for the cloud.  Moreover, the various options on Amazon Web Services (AWS) offer different combinations of number of nodes, number of processors per node, and storage speed.  Hence, a user with a workload who desires to move to the cloud faces these choices, and must (somehow) optimize his/her configuration and choice of DBMSs.

In this project, our ultimate goal is to develop a cloud adviser that will accept as input an analytical workload and a function to be optimized (e.g., minimum cost or minimum average response time) and find a close to optimal cloud configuration for that workload.  The main idea of the cloud adviser is to run the workload (or a sample thereof) on one DBMS on one AWS configuration and predict performance on other DBMSs and configurations.  In this way, the adviser will help the user to choose the best combination of DBMS and cloud configuration that optimizes his/her metric of choice.

As a first step towards our ultimate goal, we conducted an experimental study to understand, compare, and contrast the following five popular OLAP offerings for AWS:  Hive, Presto, Redshift, Redshift spectrum, and Verica.  Some of these offerings use the S3 file system for storage; others use the AWS Enterprise Block Store (EBS) and include proprietary files systems.  In the same time, all engines can run across a variable number of AWS nodes, and could use a variable number of CPUs per node.

In this presentation, I am going to talk about the setup of our experimental study and present some results. I also going to discuss several (unexplainable) anomalies that rendered our predictive modeling attempts problematic.  Finally, I am going to present a predictive model for 'Presto' that can predict performance of a given query upon scaling up the AWS cluster.
