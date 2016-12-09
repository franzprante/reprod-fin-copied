---
title: "Missing Values, Data Science and R"
author: "Joseph Rickert"
date: 2016-11-30T18:26:15+00:00
slug: missing-values-data-science-and-r
categories: [R Views]
tags: [Data Science, Packages, R Language, Statistics]
banner: http://www.freewebheaders.com/wordpress/wp-content/gallery/computer/computer-choice-concept-technology-web-header.jpg
---

One great advantages of working in R is the quantity and sophistication of the statistical functions and techniques available. For example, R’s `quantile()` function allows you to select one of the nine [different methods](https://www.amherst.edu/media/view/129116/original/Sample+Quantiles.pdf) for computing quantiles. Who would have thought there could be so many ways to do something that seems to be so simple? The issue here is not unnecessary complication, but rather an appreciation of the nuances associated with inference problems gained over the last hundred years of modern statistical practice. Much of this knowledge is reflected in R. As I imagine it, if R’s functions were laid out like city streets there would be many broad avenues displaying commonly used algorithms, but these would flow into many thousands of small, rarely-visited alleys, containing treasures for those who seek them out.

My impression is that most data science is done on the avenues, but that data scientists could benefit from occasionally venturing deeper into the alleys of statistical practice. [Statistics might be the least important part of data science](http://andrewgelman.com/2013/11/14/statistics-least-important-part-data-science/) but there are times when coming to grips with sound statistical inference is essential. Consider the problem of dealing with missing values for example. It is difficult to imagine any large, real-world data set that wouldn’t require a strategy for imputing missing values. The obvious first step in developing a strategy would be to form some ideas about why the data are missing. [Gelman and Hill](http://www.stat.columbia.edu/~gelman/arm/missing.pdf) identify four different “missingness mechanisms”: (1) Missingness completely at random, (2) Missingness at random, (3) Missingness that depends on unobserved predictors, (4) Missingness that depends on the missing value itself; and they provide some advice on how to cope with each of them. In a large data set, there is no reason to believe that there is just one mechanism in play! Evaluating your data with respect to these categories and their combinations could require a frightening amount of exploratory work. So tools for looking at patterns in missing values are likely to be very helpful, even if using them requires sampling your data set.

The next step of deciding how to proceed in a statistically sound manner will likely pose considerable technical challenges, and opting for simple solutions may not be advisable, or even possible. Even with big data, ignoring observations with missing values could result in a catastrophic loss of information, and simple approaches to imputation such as replacing missing the missing values of each variable with the variable mean, or a common value, will produce a “completed” data set reflecting an artificial amount of certainty that will likely underestimate the variability of the data and bias results. R can’t eliminate the hard work, but it does provide a formidable array of missing value imputation tools that can get you in and out of the statistical alleys and help you to decide what techniques might be useful.

Before evaluating the various methods, it is helpful to make a couple of distinctions about imputation methods for multivariate data. The first is between single and multiple imputation. In single imputation, a particular algorithm or technique is used to produce a single estimate for each missing value. Multiple imputation methods, on the other hand, develop distributions for missing values and estimate individual missing values by drawing from this distribution. In general, these algorithms proceed in three steps. In the first imputation step, multiple draws are made from the distribution of missing values for each variable. This process results in several “completed” data sets where each missing value has been estimated by a plausible value. In the second step, the intended analysis is performed on each completed data set. In the last step, a “pooling”algorithm estimates the final values for the statistics of interest.

The [second distinction](http://smm.sagepub.com/content/16/3/219.abstract) is between Joint Modeling (JM) and Fully Conditional Specification (FCS) imputing. In JM, the data are assumed to follow a multivariate parametric distribution of some sort. This is theoretically sound but may not be flexible enough to adequately model the data. In FCS, the multivariate data model is specified by developing a separate conditional model for each variable with missing values.

Here is a short list of R packages for missing value imputation. I have selected these to give some idea of the variety of tools available.

[Amelia](https://mran.revolutionanalytics.com/package/Amelia/) implements the [Amelia II](http://gking.harvard.edu/amelia) algorithm which assumes that the complete data set (missing and observed data) are multivariate normal. Imputations are done via the EMB (expectation-maximization with bootstrapping) algorithm. The [JSS paper](https://www.jstatsoft.org/article/view/v045i07) describes a strategy for combining the models resulting from each imputed data set. The [Amelia vignette](https://mran.revolutionanalytics.com/web/packages/Amelia/vignettes/amelia.pdf) contains examples.

[BaBoon](https://mran.revolutionanalytics.com/package/BaBooN/) provides two variants of the the [Bayesian Bootstrap](https://projecteuclid.org/euclid.aos/1176345338) predictive mean matching to impute multiple missing values. Originally developed for survey data, the imputation algorithms are described as being robust with respect to imputation model misspecification. The best description and rationale for the algorithms seems to be the [PhD thesis](https://opus4.kobv.de/opus4-bamberg/frontdoor/deliver/index/docId/200/file/thesiskollermeinfelderaop.pdf) of one of the package authors.

[Hmisc](https://mran.revolutionanalytics.com/package/Hmisc/) contains several functions that are helpful for missing value imputation including `agreImpute()`, `impute()` and `transcan()`. Documentation on Hmisc can be found [here](http://biostat.mc.vanderbilt.edu/wiki/Main/Hmisc).

[mi](https://mran.revolutionanalytics.com/package/mi/) takes a Bayesian approach to imputing missing values. The imputation algorithm runs multiple MCMC chains to iteratively draw imputed values from conditional distributions of observed and imputed data. In addition to imputation algorithm, the package contains functions for visualizing the pattern of missing values in a data set and assessing the convergence of the MCMC chains. A [vignette](https://mran.revolutionanalytics.com/web/packages/mi/vignettes/mi_vignette.pdf) shows a worked example and the associated [JSS paper](https://www.jstatsoft.org/article/view/v045i02) delves deeper into the theory and the mechanics of using the method.

[mice](https://mran.revolutionanalytics.com/package/mice/) which is an acronym for multivariate imputation of chained equations, formalizes the multiple implementation process outline above and is probably the gold standard for FCS multiple imputation. Package features include:

-   Columnwise specification of the imputation model
-   Support for arbitrary patterns of missing data
-   Passive imputation techniques that maintain consistency among data transformations
-   Subset selection of predictors
-   Support of arbitrary complete-data methods
-   Support pooling various types of statistics
-   Diagnostics for imputations
-   Callable user-written imputation functions

The [JSS paper](https://www.jstatsoft.org/article/view/v045i03) describes how the desire to provide a separate imputation model for each variable led to the development of the chained equation technique where a Gibbs sampler fills out the missing data. [miceAdds](https://mran.revolutionanalytics.com/package/miceadds/) provides additional functions to be used with mice including plausible value imputation, multilevel imputation functions, imputation using partial least squares (PLS) for high dimensional predictors, nested multiple imputation, and two-way imputation.

[missingDataGUI](https://mran.revolutionanalytics.com/package/MissingDataGUI/) implements a nice graphical interface for exploring missing data patterns with numeric and graphical summaries for numeric and categorical missing values and implements a number of imputation methods. The figure below shows the missing value map for the HouseVotes84 data set in the mlbench package.

![](https://www.rstudio.com/wp-content/uploads/2016/11/missing_values1.png)

[missMDA](https://mran.revolutionanalytics.com/package/missMDA/) performs principal component methods on incomplete data sets obtaining scores, loadings and graphical representations despite missing values. The package also includes functions to perform single and multiple imputation. The [JSS paper](https://www.jstatsoft.org/article/view/v070i01) provides the details.

[VIM](https://mran.revolutionanalytics.com/package/VIM/) provides tools for visualizing missing or imputed values. Before imputation they can be used to study the pattern of missing values, afterwards these same tools can be used as diagnostics. [VIMGUI](https://mran.revolutionanalytics.com/package/VIMGUI/) puts a front end on the VIM functions and helps with handling the plot and imputation functions. The [vignette](https://mran.revolutionanalytics.com/web/packages/VIMGUI/vignettes/VIM-Imputation.pdf) is thorough and provides some nice examples of how one might look at missing value distributions.

![](https://www.rstudio.com/wp-content/uploads/2016/11/missing_values2.png)

[vtreat](https://mran.revolutionanalytics.com/package/vtreat/) provides tools to assist in the statistically sound preparation of data sets. It is not a package explicitly devoted to missing value imputation, but it can produce “cleaned” data sets that have no “Infinite/NA/NaN in the effective variable columns”. I include it here to emphasize that proper data preparation can simplify the missing value problem. The package has several vignettes.

[yaImpute](https://mran.revolutionanalytics.com/package/yaImpute/) takes what might be thought of as a machine learning approach to imputing missing values by using the k-nearest neighbor (kNN) algorithm to impute missing values. The [JSS paper](https://www.jstatsoft.org/article/view/v023i10) covers the theory and explains the package using a forestry application.

For additional R packages see Stef van Buuren’s [webpage cataloging software for imputation](http://stefvanbuuren.nl/mi/software.html) which lists twelve R packages that implement some method of single imputation and eighteen R packages concerned with multiple imputation and provides a brief explanation of each of these. Also, have a look on the [post on analyticsvidha.com](https://www.analyticsvidhya.com/blog/2016/03/tutorial-powerful-packages-imputing-missing-values/) that provides informative short write ups on amelia, Hmisc, mi, mice and [missForest](https://mran.revolutionanalytics.com/package/missForest/) that include some sample code.

I also recommend looking at [Stef van Buuren presentation](http://missdata2015.agrocampus-ouest.fr/infoglueDeliverLive/digitalAssets/79082_Rennes_2015_-_Stef_van_Buuren.pdf) on the history and future of Fully Conditional Specification from the 2015 Rennes missing value conference and Julie Josse’s [tutorial at useR! 2016](http://juliejosse.com/?p=96).

Even with the best of tools there is no doubt that dealing with missing values in a statistically sound manner is difficult. However, this is the that kind of work that helps to put the “science” in data science, and R is the most helpful environment you are likely to find.
