---
title: "Interview with J.J. Allaire"
author: "Joseph Rickert"
date: 2016-10-12T16:03:59+00:00
slug: interview-with-j-j-allaire
categories: [R Views]
tags: [Community, Interviews, Open Source, R Consortium, R Language]
---

Welcome to "R Views", the new R Community blog from RStudio. For this first post, I sat down with J.J. Allaire, RStudio's founder and CEO, to discuss RStudio's history, its mission and JJ's vision for its future. In a short time, we touched on a wide range of subjects including RStudio's business, the growth of the R language, the importance of the R Consortium to the R Community and J.J.'s advice to anyone coming to R for the first time. We hope you enjoy this "snapshot" of RStudio's place in the R world.

_**JBR: How did you first become involved with R? What were you doing when R first came to your attention, and why R?**_

**J.J.:** As an undergraduate I studied economics and political science and as a result got very interested in quantitative research. As a student I worked with SAS, SPSS, and Excel. This was my first serious exposure to software and computing, which I also became quite fascinated with.As it turned out, my career ended up developing more around software than around quantitative analysis. Then, about eight years ago I was between jobs and looking for the next thing to work on. I was very much of the mindset that I wanted my work to be open source, because I wanted to create software that would be free and accessible to everyone as well as long lasting.

That's when I learned about R. It was really wonderful to hear that there was a robust and broadly used open source statistical computing environment. I thought that this might be a great place to apply my energy. Quantitative analysis was my original interest in school, and in the meantime, I had acquired considerable skill in writing software systems. I thought I could take some of that, apply it to R, and make a meaningful contribution.

_**JBR: Was there any specific event that motivated you to start RStudio? When you did start, what kind of company did you envision then?**_

**J.J.:** RStudio really wasn't started as a company. It began as an open source project that I just worked on by myself. Initially, I started working on the concept of a web based IDE for R. About nine months or so into the project I realized that it would be a really huge undertaking for me to try to build this IDE all by myself.

So, I recruited Joe Cheng to work with me. Joe and I had worked together in a couple of previous companies. At the time I told him: "Joe, I make no representation or promise that this is going to be a company. It might just be an open source project, is that okay with you?" He said, "That's fine". It was really just the two of us working on an open source project at the beginning. Again, there was no notion that it would have to become a company. My feeling was that if there was a company that could evolve out of it that would be fine, but that was not required.

_**JBR: Are you surprised about how RStudio turned out?**_

**J.J.:** I didn't know how it was going to turn out. I definitely knew that open source software has the potential to be very widely used. I'm not surprised at all that R is a really big deal, but in no way did I presume or know whether there would be a company that you could build around R. I honestly would have been surprised by any outcome. I really didn't know.

_**JBR: What is your role at RStudio? Do you run the company? Are you responsible for product development? What gets you up in the morning?**_

**J.J.:** What I principally do is write software. That's what I love to do. I'm the CEO of RStudio but I don't really run the company per se. I collaborate with other people who are engaged in running the company. In particular I spend a lot of time with with Tareef Kawaf who is the President of RStudio and is primarily responsible for running it.

I really spend the vast majority of my time, over eighty percent, writing software. I started off as the principal developer on RStudio IDE and then Joe and I worked on it together for a number of years. I continue to spend time on the IDE, but I'm also the principal developer on quite a few R packages including the R Markdown package. I'm the maintainer of a few other packages like htmlwidgets and the dygraphs package, and I have also contributed to several other packages like shiny and Rcpp and others.

_**JBR: What does a typical work day look like for you?**_

**J.J.:** On a typical work day, I look at my email from overnight and see if there's anything urgent. I may give feedback on some pull requests or take a look at a few bugs. I probably spend about an hour just taking stock of things that are in my inbox. Then I'll work for five or six hours, writing code for various products and packages.

After that, I may check in with RStudio's Seattle office when those guys come online at midday, East Coast time. Then, maybe I'll do some more coding until the end of the day. Various things come up, but I have very few meetings that I regularly attend. I try to keep things clear for working on product development.

_**JBR: From the outside it looks like RStudio has committed a considerable amount of resource to developing open source packages and free products. Many people wonder how RStudio can even be a business. Can you talk a little bit about RStudio's business plan, how does RStudio make money?**_

**J.J.:** Well, first of all, the mission of the company, is to create open source software for data analysis and statistical computing. So, if you see that we're creating a lot of open source software that should never surprise you: that is our principal mission. At the same time, in order to fulfill our mission we need to bring together as many talented people as we can. For that to happen obviously we also need to develop and grow a business around R.

I'd say the commercial business has two major facets, the first is concerned with organizations that want to deploy R at scale; scale here meaning either computing scale or just adopting R within a larger organization. For these requirements, we have enhanced, commercial versions of some of our server products, for example RStudio Server Pro and Shiny Server Pro, that have features aimed at deploying R at scale. Our open source products can typically be adopted by many, many people without buying our professional products, and that's how we want it to be. When customers get more serious about R, or they are deploying R in a larger environment, they tend to buy our professional products. So that's the main way we make money, those professional server products.

We also have a cloud business where we provide versions of our products over the web. For example, we have shinyapps.io for deploying Shiny applications. It's not a big a part of our business yet, but we expect it to become more and more significant, and we also expect to have other cloud offerings in the future.

_**JBR: What do RStudio's long range goals look like?**_

**J.J.:** One core set of goals is centered around creating an elegant and productive environment for using R. Mostly here I'm talking about the RStudio IDE. A really nice environment for working with R not only needs to provide the tools to make users very productive, but it also needs to surface all of the richness that is inside R so that it's conceptually clear to people what's possible, and then makes it easy for them to do what they want to do.

Other goals are centered on creating APIs for R that are really intuitive and work well together. That's the tidyverse, if you will, the family of packages that Hadley and others have developed like ggplot2, dplyr, tidyr, lubridate, stringr and so on.

We have also focused quite a bit on helping people communicate what they do in R. Here, I'm talking about R Markdown which is all about creating documents and web content from R, and Shiny which is about creating interactive applications with R.

In the future, we want to continue to excel along those three axes and make all of our open-source products and packages even better. We also continue to learn more about the needs of companies who are deploying R at scale, whether it be trying to achieve high performance, ensuring robust security, or integrating seamlessly with other enterprise software systems. As we continue to learn we will continue to develop products along this axis as well. Right now, we've solved some of the problems, but there are a whole lot more to address, and I don't think we're nearly done on any of these fronts. Building up our professional server product line is a big focus as is building hosted products to let people access and use R in the cloud.

Also, we want to do a better job of educating people about what we already have. So we are trying to create a well-thought-through curriculum that people can access through different mediums including books, videos, websites and interactive self-paced tutorials. You'll see lots more investment in education from us in the future.

_**JBR: So far, from what you've said, RStudio projects all seem to be related to producing tools to help others develop R software and do analytics work, but what would a complete R based tool chain look like?**_

**J.J.:** That's interesting. I think what we have been talking about, the things that we've traditionally focused on like helping to deploy R at scale are horizontal tools. They are very, very helpful, but there's actually another layer of tools that we haven't talked about. In any given domain of application, you want to have a suite of tools that are specific to that domain. These are also extremely important, but we are more of a facilitator of those tools than a creators, since we're not domain experts.

Over time, I think that the whole R community is engaged in a really big collective project to build out all the tools required to let people analyze data in the different domains. Some of the work that we are doing is very much focused on enabling this. For example, Hadley tries both to build tools, and to teach people how to build their own great tools for R. As a result, people have built some wonderful packages to make it easier to do specialized types of analyses. The work I've done on Rcpp is all about letting people access the highest performance capabilities within their domain whether that's reading data really fast, or analyzing it quickly, or optimizing certain algorithms. Also, many of the tools that we've developed in data visualization are about providing an extensible platform to let people do custom static and interactive visualizations for different domains. So what does a complete tool chain look like? I think part of it is made up of the tools that we build, and the rest of it is made up of the tools other people build on top of our stuff.

_**JBR: Does sparklyr represent a new direction for RStudio, or is this just part of the tool chain you described?**_

**J.J.:** I don't think it's a new direction. In his keynote address at the 2014 UseR! conference in UCLA, John Chambers spoke about how the original concept for R was to create an interface language. One of the motivators was that people wanted to use the robust and high performance FORTRAN libraries for doing statistical analysis that already existed, but they wanted to use them in a flexible and interactive way. So the idea was to create a language that was really good at providing interfaces to other computing systems. In the beginning, it was interfacing to an existing body of FORTRAN code, but over time that has been extended to run just about everything. R is a very good interface language.

John gave several examples during his talk. One was Rcpp which I've already talked about. The other was H2O, which is a distributed computing system for doing machine learning. H2O is written in Java, not R, but the developers have provided it with a very nice R interface. I think that's how we view just about everything that might be relevant to statisticians or data analysts. If it's not already in R you can use R to create a fluent and expressive interface for it.

That's how we view sparklyr.  Spark provides a set of big data capabilities that people want to take advantage of, and we're creating a rich interface in R so the tools and techniques, the working environment and the ability to communicate, things like R Markdown and Shiny, just automatically come with you when you go to work with Spark. John mentioned H2O, but R's been doing things with distributed processing for a long time, so I think we're just fulfilling the vision and mission of R against the latest and greatest distributing computing platforms.

_**JBR: What do you think about R and big data in general? Do you think what RStudio is doing is going to help overcome the perceived limitations of R?**_

**J.J.:** Again, you should understand R as a user interface, or a language that's capable of providing very good user interfaces. Developers don't implement core algorithms or core distributed computing primitives in R. They use R as a way of interacting with those things.Once people understand this, and they see how good R is, how they can use dplyr to interact with a Spark cluster, I think the light bulb will go off and they'll say: "Okay, I understand where R fits now. It's the world's best interactive environment for data analysis and now I can use it directly against Spark".

_**JBR: RStudio is a founding platinum member of the R consortium, seems from the outside really looks like a really big commitment for a small company.**_

**J.J.:** Yes

_**JBR: Why is the R Consortium important? What are your hopes for its future, and what do you think the R Consortium can accomplish?**_

**J.J.:** What's really interesting about the R consortium is that it represents all of R's stakeholders. There are the original stakeholders, the R Foundation and R Core, the creators of R. There's a whole community of package developers and users, and then there's the vendors who are in various ways making a business around R. The R Consortium is an alliance of all these people that says "Hey, we all have a stake in this being as good as it can be. We all have a stake in the long term integrity of the system, so let's get together in one venue that will allow us to have a dialog about things and fund projects that can help the R Community".

The R Consortium is a really profound and important group. It has the potential to be the nexus point for everyone in the R Community. That's why we're so enthusiastic about the R Consortium and why we've got folks within RStudio spending considerable time on it. If it works well, the R Consortium is going to provide a lot of ballast for R, provide a great forum for communicating about R, and help establish trust in R. We want to support it as much as we can.

_**JBR: In addition to supporting the R community it looks like RStudio packages are geared toward reproducible research and improving scientific research in general. Do you have specific goals or aspirations with respect to science itself?**_

**J.J.:**  There is a broader movement in science around reproducible research that we can contribute to. Reproducible research is all about the integrity of the work you do. It's all about the fact that people rely on scientific software to make very important decisions and to gain a clear understanding about how the world works. The integrity and the trustworthiness of the process by which that software yields its results is critical.

Our goal is to make sure that the tools for working reproducibly within the R ecosystem are excellent. In the past, people may have felt that working reproducibly was going to require more work, more effort, and thought "I don't have time to do that". We're trying to make it so that reproducible work actually takes less effort. It's sort of that pit of success idea where we provide a great tool chain for creating compelling documents which has the very pleasant side effect that everything that people do is reproducible.

Also, reproducibility is one of the reasons we focus on teaching people how to write and work with code to do data analysis. We don't have visual abstractions for doing data analysis because those types of techniques are not reproducible, not easy to inspect, not easy to share, and not easy to automate. We really focus on code. It's a core principle that, no matter what, we'd rather make code easier to work with than try to eliminate it.

_**JBR: Do you have any advice for people coming to R for the first time, either as students or as experienced statisticians and researchers?**_

**J.J.:** I would suggest that they get a copy of the R for Data Science book written by Hadley Wickham and Garrett Grolemund. The book explains the tidyverse and fundamental principles for working with data in R. There are a lot of great tools for working in R but not everybody who comes to R encounters them right away. We're trying to change that. I would also recommend that newcomers to R take a careful look at all the tools and packages that we have developed at RStudio.

Also, when you have questions or run into problems don't give up. There's a lot of great activity around R on stackoverflow and other places and there's an excellent chance you're going to find the answers to your questions if you look carefully for them.

_**JBR: Do you have any thoughts on what statisticians and data scientists ought to know about computer science in general?**_

**J.J.:** That's an interesting question. A lot of the popular philosophy about R revolves aroundBo Cowgill's famous quote: "The best thing about[R](http://mran.revolutionanalytics.com/documents/what-is-r/)is that it was written by statisticians. The worst thing about R is that it was written by statisticians."The fact is, however, that the folks who made R knew quite a bit about computing and computer science. Their goal was, and continues to be, to provide an expressive language that lets you accomplish what you want to accomplish with a minimal requirement for mastering computer science. R is trying to provide an interface and a vocabulary that allows non-computer science people to still do sophisticated things with data.

I think there will always be sets of problems that you can't solve with a high level vocabulary. So, becoming more educated about general programming principles, doing some lower level computations or lower level text analysis or parsing and those sorts of things is useful. But, the whole point of R is to not force everyone to become a computer scientist.

_**JBR: Last question: where do you think R and RStudio will be in ten years?**_

**J.J.:** Currently, R is quite prominent in the universities. It's taught to undergraduates and researchers and, more and more it's becoming part of the core curriculum. However, in the world of practitioners, there's still an awful lot people using proprietary software that in many cases is less capable, less flexible, less powerful than R.

I'm hopeful that over the next ten years we'll start to see the kind of predominance R now has in universities really take hold in the world of practicing statisticians. I'm hopeful that will happen, and I'm hopeful that RStudio can be a big part of making the transition to R a positive experience. We want to continue to make R easier to learn and easier to use so that when organizations decide that they're going to commit to R for the long term and replace their proprietary statistics software, they'll come to an environment that is really refined, really powerful, really easy to learn, and that they can actually deploy R at scale and be successful with it. I hope that RStudio can facilitate all those things in the next ten years.

_**JBR: Thank you J.J.!**_
