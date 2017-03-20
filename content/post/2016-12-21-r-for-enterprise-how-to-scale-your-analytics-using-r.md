---
title: "R for Enterprise: How to Scale Your Analytics Using R"
author: "Sean Lopp"
date: 2016-12-21T14:06:49+00:00
categories: [R for the Enterprise, R Language]
tags: [R]
---

At RStudio, we work with many companies interested in scaling R. They typically want to know:

-   How can R scale for big data or big computation?
-   How can R scale for a growing team of data scientists?

This post provides a framework for answering both questions.

Scaling R for Big Data or Big Computation
=========================================

The first step to scaling R is understanding what class of problems your organization faces. At RStudio, we think of three use cases: data extraction, embarrassingly parallel problems, and analysis on the whole. Garrett Grolemund hosted an excellent webinar on [Big Data in R](https://www.rstudio.com/resources/webinars/working-with-big-data-in-r/), in which he outlined the differences in these three cases.

![](https://www.rstudio.com/wp-content/uploads/2016/12/scalingR.001.jpeg)

DISCLAIMER: These three cases are not exhaustive, nor are most problems easily categorized into one of the three classes. But, when scoping a scaled R environment, it is imperative to understand which class needs to be enabled. Your organization might have all three cases, or it might have only one or two.

Case 1: Compute on the data extract
-----------------------------------

*Example: I want to build a predictive model. I only need a few dozen features and a three-month window to build a good model. I can also aggregate my data from the transaction level to the user level. The result is a much smaller data set that I can use to train my model in R.*

Computing on data extracts is arguably the most common use case; an analyst will run a query to pull a subset of data from an external source into R. If your data extracts are large, you can run R on a server. At RStudio, we recommend using the server version of the IDE (either open-source or professional), but there are many ways to use R interactively on a server.

Case 2: Compute on the parts
----------------------------

*Example: When I worked at a national lab (NREL), we validated fuel economy models against real-world datasets. Each dataset had hundreds of recorded trips from individual vehicles. While the total dataset was TBs, each individual trip was a few hundred MBs. We ran independent models in parallel against each trip. Each of these jobs added a single line to a results file. Then we aggregated the results with a reduction step (taking a weighted mean). By using an HPC system, a task that would take weeks to run sequentially was completed in a few hours.*

Compute on the parts happens when the analyst needs to run the same analysis over many subsets of data, or needs to run the same analysis many times, and each model is independent of the others.

Examples include cross validation, sensitivity analysis, and model scoring. These problems are called: "embarrassingly parallel" (often a misnomer, since scaling for embarrassingly parallel problems is rarely embarrassingly simple).

### **Compute on the parts with a single machine**

By default, R is single threaded; however, you can also use R packages to do parallel processing on a multicore server or a multicore desktop. Local parallelization is facilitated by packages like parallel, snow, foreach, etc. These packages parallelize your R commands by running them on independent threads in multicore processors. Alternatively, low-level parallelization can be facilitated with packages like Rcpp and RcppParallel. These packages facilitate the interaction of R with C++.

### **Compute on the parts with a high performance cluster (HPC)**

In some cases, R users have access to High Performance Computing environments. These environments are becoming more readily available with technologies like Docker Swarm. An R user will test R code interactively (on an edge node or their local machine), and then submit the R code to the cluster as a series of batch jobs. Each batch job will call R on a slave node.

Note that RStudio, as an interactive IDE, may run on an edge node of the cluster or on a local machine. RStudio does not run on the slave nodes. Only R is run on the slave nodes and is executed in batch (not interactively).

One challenge faced by R users is knowing how to submit batch jobs to the cluster, tracking their progress, and re-running jobs that fail. One solution is the batchtools package. This package abstracts the details of job submission and tracking into a series of R function calls. The R functions, in turn, use generic templates provided by system administrators. Parallel R with Batch Jobs provides a nice overview. Some analysts have created Shiny applications that leverage these functions to provide an interactive Job Management interface from within RStudio!

One challenge faced by system administrators is ensuring the dependencies for the batch R script are available on all the slave nodes. Dependencies include: data access, the correct version of R, and correct versions of R packages. One solution is to store the R binaries and package libraries on shared storage (accessible by every slave node), alongside shared data and the project's read/write scratch space.

![](https://www.rstudio.com/wp-content/uploads/2016/12/scalingR.003.jpeg)

Case 2: Compute on the parts. Technologies: parallel, snow, RcppParallel, LSF, [SLURM](https://slurm.schedmd.com/), [Torque](http://www.adaptivecomputing.com/products/open-source/torque/), Docker Swarm

Case 3: Compute on the whole
----------------------------

*Example: A recommendation engine for movies that is robust to "unique" tastes. The entire domain space needs to be considered all at once. Image classification falls into this class; the weights for a complex neural network need to be fit against the entire training set. This class of problem is the most difficult to solve, and has generated the most hype. Sometimes analysts will purchase, use, and modify ready-made implementations of these algorithms.*

Computing on the whole happens when the analyst needs to run a model against an entire dataset, and the model is not embarrassingly parallel or the data does not fit on a single machine. Typically, the analyst will leverage specialized tools such as MapReduce, SQL, Spark, H20.ai, and others. R is used as an orchestration layer. Orchestration involves using R to run jobs in other languages. R has a long history of orchestrating other languages to accomplish computationally intensive tasks. See [Extending R](https://www.amazon.com/Extending-Chapman-Hall-John-Chambers-ebook/dp/B01GRHCLG0/ref=sr_1_1?s=books&ie=UTF8&qid=1481307605&sr=1-1&keywords=extending+R+john+chambers) by John Chambers.

When orchestrating a case 3 problem, the R analyst will use R to direct an external computation engine that does the heavy lifting. This approach is very similar case 1. For example, Oracle's Big Data Appliance and Microsoft SQL Server 2016 with R Server both include routines for fitting models in the database. These routines are accessible as specialized R functions. These functions are used in addition to case 1 extracts created with traditional SQL queries through RODBC or dplyr.

Another example is Apache Spark. The R analyst will work from an edge node running R. (The open-source or professional RStudio Server can facilitate this interactive use.) In R, the user will call functions from a specialized R package, which in turn accesses Spark's data processing and machine learning routines. One available R package is sparklyr.

Note that the machine learning routines are not running in R. The analyst uses these routines as black boxes that can be pieced together into pipelines, but not modified directly.

![](https://www.rstudio.com/wp-content/uploads/2016/12/scalingR.004.jpeg)

Case 3: Compute on the whole. Technologies: Hadoop, Spark, Tensorflow, In-DB computing (RevoScaleR, OracleR, Aster, etc)

Multiple Users: Scaling R for Teams
===================================

As organizations grow, another concern is how to scale R for a team of data scientists. This type of scale is orthogonal to the previous topic. Scaling for a team addresses questions like: How can analysts share their work? How can compute resources be shared? How does R integrate with the IT landscape? In many cases, these questions need to be answered even if the R environment doesn't need to scale for big data.

![](https://www.rstudio.com/wp-content/uploads/2016/12/scalingR.002.jpeg)

Scaling R for teams. Technologies: Version control (Git, SVN), miniCRAN, RStudio Server Pro

Open-source packages can address many of these concerns. For example, many organizations use packrat and miniCRAN to manage R's package ecosystem. The use of version control become increasingly important as teams grow and work together. Many companies will create internal R packages to facilitate sharing things like data access scripts, ggplot2 themes, and R Markdown templates. Airbnb provides a [detailed example](https://medium.com/airbnb-engineering/using-r-packages-and-education-to-scale-data-science-at-airbnb-906faa58e12d#.ftpmn6tpn). For more information on version control, packrat, and packages, see the webinar series [RStudio Essentials](https://www.rstudio.com/resources/webinars/rstudio-essentials-webinar-series-part-1/). At RStudio, we recommend using RStudio Server Pro because its features such as load balancing, multi-session support, collaborative editing and auditing are designed specifically to support a large numbers of user sessions.

Wrap Up
=======

Whether you need to compute on big data, grow your analytic team, or do both, R has tools to help you succeed. As more companies look to data to drive business decisions, creating a scaleable R environment will be a critical step towards success. Many of the topics in this blog deserve their own posts. However, understanding and discussing these different types of scale can help create the correct roadmap. If you've created an R environment at scale, we'd love to hear from you. In a later post, we'll address another outstanding question: after I scale the R platform, how do I scale the distribution of results and insights to non-R users?
