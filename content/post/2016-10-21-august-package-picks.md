---
title: "August Package Picks"
author: "Joseph Rickert"
date: 2016-10-21
slug: august-package-picks
categories: [R Packages, R Language]
tags: [R]
---

by Joseph Rickert

141 new packages landed on CRAN in August. The following are my picks for the most interesting packages in four categories. My selection criteria were brutally simple: to make the list, a package had to have enough documentation for me to have some idea about what it does, and also, in my judgment, provide some functionality that is likely to appeal to a broad class of users. I am sure that through my ignorance and biases I have overlooked some really good work; for this, I apologize.

One thing that struck me as peculiar during my review is the large number of packages lacking vignettes or a link to documentation describing what the package does or how it works. I can understand that explanatory documentation might be superfluous for a person writing a package for herself or her research team, but in that case, why put it on CRAN? I would think that a package developer who takes the trouble to put something on CRAN would want others to discover and use his work. With over 9,000 packages already on CRAN, and that number growing by well over a 100 packages each month, I would not be surprised if some works of real merit go unnoticed due to lack of documentation.

## Data

The trend for new R packages written primarily to connect to diverse data sources, which was previously noted in the period from [May through July](http://bit.ly/2aSU4s0), continued in August. Maybe it's time to consider developing an R Task View for Data.

- [Belex](https://mran.revolutionanalytics.com/package/belex/) v0.1.0: Provides functions for downloading historical financial data from the [Belgrade Stock Exchange](http://www.belex.rs/).
- [boxoffice](https://mran.revolutionanalytics.com/package/boxoffice/) v0.1.0: Enablesdownloads of daily box office information (how much each movie earned in theaters) using data from either [Box Office Mojo](http://www.boxofficemojo.com/) or [The Numbers](http://www.the-numbers.com/).
- [dbhydroR](https://mran.revolutionanalytics.com/package/dbhydroR/) v0.1-6: Providesaccess to the South Florida Water Management District's [DBHYDRO database](http://my.sfwmd.gov/dbhydroplsql/show_dbkey_info.main_menu), with functions for accessing hydrologic and water quality data. The [vignette](https://mran.revolutionanalytics.com/web/packages/dbhydroR/vignettes/dbhydroR.pdf) shows how to compose database queries.
- [getlandsat](https://mran.revolutionanalytics.com/package/getlandsat/) v0.1.0: Contains functions to get [Landsat 8](http://landsat.usgs.gov/landsat8.php) Data from Amazon Web Services (AWS) public data sets.
- [IMFData](https://mran.revolutionanalytics.com/package/IMFData/) v0.1.0: Provides an interface to [International Monetary Fund](http://www.imf.org/external/index.htm) data, enabling R users to search and extract data.
- [mdsr](https://mran.revolutionanalytics.com/package/mdsr/) v0.1.3: Contains all of the data sets and code for the book [Modern Data Science with R](https://www.crcpress.com/Modern-Data-Science-with-R/Baumer-Kaplan-Horton/p/book/9781498724487).

## Machine Learning

August was also a good month for new machine-learning packages. R package developers are making serious contributions to the world's data science tool set.

- [algorithmia](https://mran.revolutionanalytics.com/package/algorithmia/) v0.0.1: Provides a set of REST wrappers to access the algorithms in the [Algorithmia](https://algorithmia.com/) online marketplace. The [vignette](https://mran.revolutionanalytics.com/web/packages/algorithmia/vignettes/introduction-to-algorithmia.html) describes the Algorithmia R client. Look [here](https://algorithmia.com/users/weka) for a list of Weka-based machine-learning algorithms.
- [arulesCBA](https://mran.revolutionanalytics.com/package/arulesCBA/) v1.0: Providesa function to build an association rule-based classifier for data frames. The [vignette](https://mran.revolutionanalytics.com/web/packages/arulesCBA/vignettes/arulesCBA.pdf) shows how to get started.
- [blkbox](https://mran.revolutionanalytics.com/package/blkbox/) v1.0: Allows multiple machine-learning algorithms to be run on a data set in parallel, while providing functions for feature selection, k-fold cross-validation, and nested cross-validation. The [vignette](https://mran.revolutionanalytics.com/web/packages/blkbox/vignettes/blkbox_vignette.html) shows how to get started.
- [hyperSMURF](https://mran.revolutionanalytics.com/package/hyperSMURF/) v1.01: Uses a hyper-ensemble approach to classify datacharacterized by a high imbalance between the minority and majority class.
- [meanShiftR](https://mran.revolutionanalytics.com/package/meanShiftR/) v0.50: Performs mean shift classification using linear and k-d tree nearest neighbor implementations for the Gaussian kernel. The [blog post](http://meanmean.me/meanshift/r/cran/2016/08/28/meanShiftR.html) provides some benchmarks.
- [MetaheuristicFPA](https://mran.revolutionanalytics.com/package/MetaheuristicFPA/) v1.0: Implements the standard flower pollination algorithm for global optimization. See the [paper](http://link.springer.com/chapter/10.1007/978-3-642-32894-7_27#page-1) by Xin-She Yang for details.
- [ndjson](https://mran.revolutionanalytics.com/package/ndjson/) v0.2.0: Provides a fast JSON reader (one record per line)
- [sunburstR](https://mran.revolutionanalytics.com/package/sunburstR/) v0.6.0: Sequences sunburst diagrams, and provides an interactive method for exploring sequence data, such as website navigation paths. The package contains a function to create interactive D3.js diagrams.
- [tpAUC](https://mran.revolutionanalytics.com/package/tpAUC/) v1.0.1: Provides tools for estimating partial areas under ROC curves and ordinal dominance curves. The [vignette](https://mran.revolutionanalytics.com/web/packages/tpAUC/vignettes/tpAUCguide.html) explains the method and provides a quick-start example. For a detailed explanation, have a look at the [paper](http://www3.stat.sinica.edu.tw/ss_newpaper/SS-13-367_na.pdf) by Yang, Lu and Zhao.

## Statistics

Package developers also continued to advance R's awesome array of packages for doing computational statistics. At least four out of the following five packages should be of interest to students of statistics.

- [DHARMa](https://mran.revolutionanalytics.com/package/DHARMa/) v0.1.0: Uses a simulation to compute scaled, quantile residuals from fitted generalized linear mixed models. `lm`, `lme4`, and `glm` models are supported. The [vignette](https://mran.revolutionanalytics.com/web/packages/DHARMa/vignettes/DHARMa.html) provides detailed examples.
- [edfun](https://mran.revolutionanalytics.com/package/edfun/) v0.2.0: Provides a function for creating one-dimensional empirical distribution functions. The [vignette](https://mran.revolutionanalytics.com/web/packages/edfun/vignettes/edfun.html) shows how to compute the pdf, CDF, quantiles and draw random samples.
- [lmPerm](https://mran.revolutionanalytics.com/package/lmPerm/) v2.1.0: Enables a modern approach to linear regression by modifying the standard models-to-uses permutation tests, rather than normal theory, to obtain p-values. The [vignette](https://mran.revolutionanalytics.com/web/packages/lmPerm/vignettes/lmPerm.pdf) provides several examples.
- [pulsar](https://mran.revolutionanalytics.com/package/pulsar/) v0.2.5: Provides functions to use the [Stability Approach](http://arxiv.org/abs/1605.07072) for model selection of penalized graphical models. There is a nice [vignette](https://mran.revolutionanalytics.com/web/packages/pulsar/vignettes/pulsar.html) on how to get started that includes multiple references.
- [stR](https://mran.revolutionanalytics.com/package/stR/) v0.1: Provides functions for the seasonal decomposition of time series data.The methods allow for multiple seasonal components and multiple linear covariates, and provides confidence intervals for the estimated components. The [vignette](https://mran.revolutionanalytics.com/web/packages/stR/vignettes/stRvignette.html) shows several interesting examples. For instance, the following plot shows Australian electricity consumption data, decomposed using a weekly seasonal pattern and a daily seasonal pattern that takes weekends and holidays into account.

![The stR package](https://www.rstudio.com/wp-content/uploads/2016/09/str_pkg.png)

## Misc

Finally, here are three packages on miscellaneous topics that ought to become popular over time

- [forcats](https://mran.revolutionanalytics.com/package/forcats/) v0.1.0: Provides some very useful helper functions for working with factor levels.
- [modelr](https://mran.revolutionanalytics.com/package/modelr/) v0.1.0: Extends the workflow underlying Hadley Wickham's [tidyverse](https://channel9.msdn.com/Events/useR-international-R-User-conference/useR2016/Towards-a-grammar-of-interactive-graphics) packages by integrating modeling tasks into a pipeline of data manipulation and visualization.
- [XR](https://mran.revolutionanalytics.com/package/XR/) v0.7: Provides the new class structures, functions, and methods to begin implementing the new ideas for connecting R to other languages described in John Chambers book, _[Extending R](https://books.google.com/books?id=kxxjDAAAQBAJ&printsec=frontcover&dq=crc+extending+r&hl=en&sa=X&ved=0ahUKEwiN3NGs3YDPAhVSzWMKHcHwBJ4Q6AEILTAB#v=onepage&q=crc%20extending%20r&f=false)_.
