---
title: "October Package Picks"
author: "Joseph Rickert"
date: 2016-11-23T12:50:04+00:00
categories: [R Views]
tags: [Packages, R Language]
banner: http://www.freewebheaders.com/wordpress/wp-content/gallery/retro-abstract/strips-texture-retro-abstract-art-header-7142.jpg
---

In my [August Package Picks](/2016/10/21/august-package-picks/) post, I explained that my selection criteria favor packages with vignettes. (I find skimming through a package's vignettes to be an effective method of "grokking" what a package is all about.) I also questioned why a person would go to all of the trouble to develop a package and put it on CRAN without writing a vignette. Since writing that post, I have had the opportunity to speak with experienced package authors who argue, with some considerable authority, that the object documentation (what you get when you type "?foo" at the console) and the README file comprise a package's most important documentation.

This is undoubtedly true, and self-evident once a person has decided to use the package. It is also true that the R Community is diligent: people pay attention, and really useful packages seem to get discovered rather quickly in spite of CRAN's low signal-to-noise ratio. Nevertheless, CRAN is poised to blow through the 10,000 package milestone sometime soon. Package discovery and audition is hard work. As a potential user of a given package, I very much appreciate and benefit from the elaboration of a package's capabilities and the extended examples found in well-done vignettes, and I suspect that others do, too.

Of the 174 packages submitted to CRAN in October, I have picked out 22 that I thought were particularly interesting, and listed them below in four categories: Data, Machine Learning, Miscellaneous, and Statistics.

## Data

All of these packages enable access to data either by directly packaging up the data, or through functions to access data directly from a remote source, or via an API.

-   [rnoaa](https://mran.revolutionanalytics.com/package/rnoaa/) v0.6.5: Provides a client for several NOAA data sources, including the [NCDC Climate API](https://www.ncdc.noaa.gov/cdo-web/webservices/v2). There are vignettes for [NCDC](https://mran.revolutionanalytics.com/web/packages/rnoaa/vignettes/ncdc_vignette.html) data, [air quality and weather](https://mran.revolutionanalytics.com/web/packages/rnoaa/vignettes/rnoaa_ropenaq.html) data, [sea ice](https://mran.revolutionanalytics.com/web/packages/rnoaa/vignettes/seaice_vignette.html) data, [storms](https://mran.revolutionanalytics.com/web/packages/rnoaa/vignettes/storms_vignette.html) and more.
-   [ptwikiwords](https://mran.revolutionanalytics.com/package/ptwikiwords/) v0.0.3: Contains a dataset with 15,000 randomly extracted words from the [Portuguese Wikipedia](https://pt.wikipedia.org/wiki/Wikip%C3%A9dia:P%C3%A1gina_principal).
-   [qualtRics](https://mran.revolutionanalytics.com/package/qualtRics/) v0.1: Provides functions to pull online [Qualtrics](https://www.qualtrics.com/) survey data into R. There is a short [vignette](https://mran.revolutionanalytics.com/web/packages/qualtRics/vignettes/qualtRics.html).
-   [QuantTools](https://mran.revolutionanalytics.com/package/QuantTools/) v0.5.1: Provides functions to download and organize historical financial market data from [Yahoo](https://finance.yahoo.com/), [Google](https://www.google.com/finance), [Finam](https://www.finam.ru/profile/moex-akcii/sberbank/export/) and [IQFeed](https://www.iqfeed.net/symbolguide/index.cfm?symbolguide=lookup).
-   [sofa](https://mran.revolutionanalytics.com/package/sofa/) v0.2.0: Provides an interface to the CouchDB NoSQL database. Get started with an [Introduction](https://mran.revolutionanalytics.com/web/packages/sofa/vignettes/sofa_vignette.html) and a [Query Table](https://mran.revolutionanalytics.com/web/packages/sofa/vignettes/query_tuto).
-   [ubeR](https://mran.revolutionanalytics.com/package/ubeR/) v0.1.3: Provides R access to the [Uber](https://developer.uber.com/) API.

## Machine Learning

The two packages listed here should be helpful in common machine learning workflows.

-   [prediction](https://mran.revolutionanalytics.com/package/prediction/) v0.1.1: prediction::prediction() provides an alternative to predict() that always returns a data frame.
-   [preText](https://mran.revolutionanalytics.com/package/preText/) v0.4.4:Provides functions to assess the effects of different text preprocessing decisions on the inferences drawn from the resulting document-term matrices they generate. There is a [vignette](https://mran.revolutionanalytics.com/web/packages/preText/vignettes/getting_started_with_preText.html) to get you started.

## Miscellaneous

The packages listed here cover a wide range of interests and capabilities: cryptography, flow charts, browser automation, discrete event simulation, and styling reports. This kind of diversity showcases R as a general-purpose programming language.

-   [gpg](https://mran.revolutionanalytics.com/package/gpg/): v0.4:Provides bindings to GnuPG for working with [OpenGPG](http://openpgp.org/) ([RFC4880](https://tools.ietf.org/html/rfc4880)) cryptographic methods, and includes utilities for public key encryption, creating and verifying digital signatures, and managing your local keyring. The [vignette](https://mran.revolutionanalytics.com/web/packages/gpg/vignettes/intro.html) provides a short introduction to GPG.
-   [poio](https://mran.revolutionanalytics.com/package/poio/) v0.0-1: Provides functions to manipulate the .PO and .POT files that R packages use to store translation messages, warnings, and errors.  See [Section 1.8 Internationalization](https://cran.rstudio.com/doc/manuals/r-devel/R-exts.html#Internationalization) of the [Writing R Extensions](https://cran.rstudio.com/doc/manuals/r-devel/R-exts.html#Internationalization) manual for details. This package is a work product of the R-Consortium-funded project for R Localization ([RLI0N](https://www.r-consortium.org/projects/awarded-projects))
-   [PRISMAstatement](https://mran.revolutionanalytics.com/package/PRISMAstatement/) v1.0.1: Provides functions to plot [PRISMA](http://prisma-statement.org/) flow charts, which are used for systematic reviews and meta-analyses. The [vignette](https://mran.revolutionanalytics.com/web/packages/PRISMAstatement/vignettes/PRISMA.html) provides a brief example.
-   [RSelenium](https://mran.revolutionanalytics.com/package/RSelenium/) v1.4.5: Provides R bindings for the [Selenium](http://docs.seleniumhq.org/) 2.0 Web Browser Automation Software. There are several vignettes, including this one on [RSelenium basics](https://mran.revolutionanalytics.com/web/packages/RSelenium/vignettes/RSelenium-basics.html). You can use RSelenium to [test your Shiny Apps](http://rpubs.com/johndharrison/13408).
-   [spaDES](https://mran.revolutionanalytics.com/package/SpaDES/) v1.3.1: Provides functions to implement a variety of discrete event simulation models in R, including event-based models and agent-based models. The package also provides plotting methods optimized for speed and modularity. Vignettes include an [introduction](https://mran.revolutionanalytics.com/web/packages/SpaDES/vignettes/i-introduction.html), a [manual for building models](https://mran.revolutionanalytics.com/web/packages/SpaDES/vignettes/ii-modules.html) and a [manual for plotting](https://mran.revolutionanalytics.com/web/packages/SpaDES/vignettes/iii-plotting.html).

![spades](https://www.rstudio.com/wp-content/uploads/2016/11/spaDES.png)

-   [tint](https://mran.revolutionanalytics.com/web/packages/tint/tint.pdf) v0.0.3: Provides a template for creating html reports according to the style of Edward R. Tufte and Richard Feynman, but with an updated font choice. Look [here](http://dirk.eddelbuettel.com/code/tint.html) for explanation and motivation.

## Statistics

I believe one of the real strengths of R is that, in addition to developing new methods and algorithms, statisticians continue to write packages that enhance or improve basic calculations. The package system encourages "kaizen", or continuous improvement.

-   [diagis](https://mran.revolutionanalytics.com/package/diagis/) v0.1.0: Provides functions to weighted means and sample covariances of multivariate samples, along with diagnostic plots. The motivation for the package was to provide summary statistics for the weighted MCMC runs computed by functions in the bssm package. The [vignette](https://mran.revolutionanalytics.com/web/packages/diagis/vignettes/diagis.pdf) for diagis describes the math.
-   [glm.predict](https://mran.revolutionanalytics.com/package/glm.predict/) v2.3-0: Provides functions to calculate predictions with confidence intervals for glm models. When two models are predicted, the differences between the upper and lower values for the respective confidence intervals are also calculated. This [link](https://benjaminschlegel.ch/r/glm.predict/) provides examples.
-   [GPrank](https://mran.revolutionanalytics.com/package/GPrank/) v0.1.1:Implements a Gaussian process (GP)-based ranking method that can be used to rank multiple time series according to their temporal activity levels.  One example application is when gene expression levels are measured over time and the objective is to identify the most active genes. The [vignette](https://mran.revolutionanalytics.com/web/packages/GPrank/vignettes/vignette.pdf) provides additional examples.

![gprank](https://www.rstudio.com/wp-content/uploads/2016/11/GPrank.png)

-   [MCMCvis](https://mran.revolutionanalytics.com/package/MCMCvis/) v0.6.3: Contains functions to visualize, manipulate, and summarize MCMC output from Bayesian models fit with JAGS, Stan, or other MCMC samplers. There is a [vignette](https://mran.revolutionanalytics.com/web/packages/MCMCvis/vignettes/MCMCvis.html) with examples.
-   [mhtboost](https://mran.revolutionanalytics.com/package/mhtboot/) v1.3.3: Provides a framework for testing multiple hypotheses based in the differences in the distributions of the p values for the null and alternative hypotheses. The [vignette](https://mran.revolutionanalytics.com/web/packages/mhtboot/vignettes/vignette1.pdf) describes the math.
-   [oddsratio](https://mran.revolutionanalytics.com/package/oddsratio/) v0.3.1: Provides odd ratio calculations for GAM(M) and GLM(M) models. The plot from the [tutorial](https://mran.revolutionanalytics.com/web/packages/oddsratio/vignettes/function.tutorial.html) shows odds ratio information superimposed on a smoothed GAM fit.

![oddsratio](https://www.rstudio.com/wp-content/uploads/2016/11/oddsratio.png)

-   [rust](https://mran.revolutionanalytics.com/package/rust/) v1.0.1: Uses the generalized ratio-of-uniforms (RU) method to simulate from univariate and low dimensional multivariate continuous distributions. The detailed [vignette](https://mran.revolutionanalytics.com/web/packages/rust/vignettes/rust-vignette.html) explains the method and the math. The [paper](https://arxiv.org/pdf/1205.0482.pdf) by Martin et al. provides context and extensions for the RU method.
-   [sf](https://mran.revolutionanalytics.com/package/sf/) v0.2-2: Provides R support for simple features, a standardized way to encode spatial data. The [vignette](https://mran.revolutionanalytics.com/web/packages/sf/vignettes/sfr.html) describes simple features and provides examples. This package is a product of the [R-Consortium-funded project](https://www.r-consortium.org/projects/awarded-projects) to develop [Simple Features](https://en.wikipedia.org/wiki/Simple_Features) Access for R.
- Finally, a kind reader noticed that I missed at least one very useful package in my [post about September's new package](/2016/10/26/september-package-picks/) submissions: [anytime](https://mran.revolutionanalytics.com/package/anytime/) v0.1.0 converts variables of various types into [POSIXct](https://stat.ethz.ch/R-manual/R-devel/library/base/html/as.POSIXlt.html) or date objects. See anytime's [README](https://cran.r-project.org/web/packages/anytime/README.html) file for examples.

If you find that I have missed something important in one of my package review posts, please let me know.
