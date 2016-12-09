---
title: "September Package Picks"
author: "Joseph Rickert"
date: 2016-10-26T18:32:11+00:00
slug: september-package-picks
categories: [R Views]
tags: [Packages, R Language]
---

September was a bit of a slow month for new R packages. Only 96 new packages showed up un CRAN. Nevertheless, I have picked out 23 for special mention which I have listed in 5 categories. I used the same selection criteria as I [described in the post for August picks](/2016/10/21/august-package-picks/).

## Data and Interfaces

-   [darksky](https://mran.revolutionanalytics.com/package/darksky/) v1.0.0: Provides an interface to the [Dark Sky API](https://darksky.net/dev/docs) which allows you to look up weather anywhere on the globe.
-   [etseed](https://mran.revolutionanalytics.com/package/etseed/) v0.1.0: Provides a client to interface to the [etcd key value store](https://github.com/coreos/etcd), a database written in Go.
-   [LendingClub](https://mran.revolutionanalytics.com/package/LendingClub/) v0.1.2: Lets investors manage their [LendingClub](https://www.lendingclub.com/) investments from R.
- [sparklyr](https://mran.revolutionanalytics.com/package/sparklyr/) V0.4: Allows R users to connect, provision and interface to Apache Spark. Detailed examples using MLlib and H2O are available on the [RStudio site](http://spark.rstudio.com/).
- [trelloR](https://mran.revolutionanalytics.com/package/trelloR/): V0.1.0: Provides access to the [Trello API](https://developers.trello.com/). The [vignette](https://mran.revolutionanalytics.com/web/packages/trelloR/vignettes/R_API_for_Trello.html) explains how to retrieve data from public and private Trello boards.
- [XRPython](https://mran.revolutionanalytics.com/package/XRPython/) V0.7: A Python interface structured according to the general form of the package XR described in John Chamber's book  [Extending R](https://www.crcpress.com/Extending-R/Chambers/p/book/9781498775717).

## Machine Learning

-    [ensembleR](https://mran.revolutionanalytics.com/package/ensembleR/) v0.1.0: Facilitates constructing ensemble models from machine learning models available in the caret package. There is a [vignette](https://mran.revolutionanalytics.com/web/packages/ensembleR/vignettes/Introduction_to_ensembleR.html) to get started.
-   [exprso](https://mran.revolutionanalytics.com/package/exprso/) v0.1.7: Provides a framework for supervised machine learning customized for biologists. There are several vignettes including a [cheatsheet.](https://mran.revolutionanalytics.com/web/packages/exprso/vignettes/cheatsheet.html)

![cheatsheet](https://www.rstudio.com/wp-content/uploads/2016/10/cheatsheet-1024x885.jpeg)

-   [lowmemtkmeans](https://mran.revolutionanalytics.com/web/packages/lowmemtkmeans/lowmemtkmeans.pdf) v0.1.0: Implements trimmed k-means clustering with low memory use.
- [Textmining](https://mran.revolutionanalytics.com/package/textmining/) V0.0.2: Provides functions for text and topic mining. Full functionality requires installing [TreeTagger](http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/).

## Plots and Visualizations

-   [plotluck](https://mran.revolutionanalytics.com/package/plotluck/) v1.0.1: Is an [intelligent tool](https://mran.revolutionanalytics.com/web/packages/plotluck/vignettes/plotluck.html) built on top of ggplot2 that automatically generates plots from dataframes based on users providing variables to plot.
-   [plotwidgets](https://mran.revolutionanalytics.com/package/plotwidgets/) V0.4: Provides functions to produce small, self contained plots for use in larger plots.

```r
library(plotwidgets)
plot.new()
par(usr = c(-1, 1, -1, 1))
hues <- seq(0, 360, by = 30)
pos <- a2xy(hues, r = 0.75)
for (i in 1:length(hues)) {
  cols <- modhueCol(pal, by = hues[i])
  wgPlanets(
    x = pos$x[i],
    y = pos$y[i],
    w = 0.5,
    h = 0.5,
    v = v,
    col = cols
  )
}
pos <- a2xy(hues[-1], r = 0.4)
text(pos$x, pos$y, hues[-1])
```

![plotwidgets](https://www.rstudio.com/wp-content/uploads/2016/10/plotwidgets.png)

## Statistics

-   [Barycenter](https://mran.revolutionanalytics.com/package/Barycenter/) v1.0.0: Provides algorithms to compute the [Wasserstein barycenter](http://jmlr.org/proceedings/papers/v32/cuturi14.pdf), the mean of a set of empirical probability measures.
-   [musica](https://mran.revolutionanalytics.com/package/musica/) v0.1.3: Provides functions for working with multivariate time series and custom time scales. There is a [vignette](https://mran.revolutionanalytics.com/web/packages/musica/vignettes/using_musica.html) to help you get started.
-   [nhstplot](https://mran.revolutionanalytics.com/package/nhstplot/) v1.0.0: Provides functions to graphically illustrate the most common null hypothesis significance tests. The [vignette](https://mran.revolutionanalytics.com/web/packages/nhstplot/vignettes/nhstplot.html) provides some examples, e.g.:

```r
library(nhstplot)
plotftest(4,3,5)
```

![F test](https://www.rstudio.com/wp-content/uploads/2016/10/F-test.png)

-   [nimble](https://mran.revolutionanalytics.com/package/nimble/) v0.6-1: Allows R programmers to write statistical models in the BUGS language. NIMBLE is built in R but compiles in C++. There is extensive documentation at http://www.nimble.org
-   [Rdice](https://mran.revolutionanalytics.com/package/Rdice/) v1.0.1: Allows conducting sophisticated dice rolling and coin tossing experiments including experiments with [Efron like Nontransitive dice](https://en.wikipedia.org/wiki/Nontransitive_dice). Have a look at the [vignette](https://mran.revolutionanalytics.com/web/packages/Rdice/vignettes/Rdice-vignette.pdf).
- [splines2](https://mran.revolutionanalytics.com/package/splines2/) V0.1.0: Provides functions for constructing a variety of splines that are not available in the splines package including B-splines,M-splines, I-splines, C-splines, and the integral of B-splines. There is a [vignette](https://mran.revolutionanalytics.com/web/packages/splines2/vignettes/splines2-intro.html).
-   [scanstatistics](https://mran.revolutionanalytics.com/web/packages/scanstatistics/scanstatistics.pdf) v0.1.0: Provides scan statistics functions to detect anomalous clusters in spatial or space-time data. The [vignette](https://mran.revolutionanalytics.com/web/packages/scanstatistics/vignettes/introduction.html) describes the methodology and presents examples as well.
-   [thief](https://mran.revolutionanalytics.com/package/thief/) v0.2: Implements methods for generating forecasts at different temporal frequencies using hierarchical time series.

## Misc

-   [GeneralTree](https://mran.revolutionanalytics.com/package/GeneralTree/) v0.0.1: Implements a general tree data structure in R. There is a [tutorial](https://mran.revolutionanalytics.com/web/packages/GeneralTree/vignettes/tutorial.html).
- [radiant](https://mran.revolutionanalytics.com/package/radiant/) V0.6.0: [Radiant](https://mran.revolutionanalytics.com/web/packages/radiant/vignettes/programming.html) is a platform for business analytics based on R and Shiny.
- [RDocumentation](https://mran.revolutionanalytics.com/package/RDocumentation/) v0.6: A wrapper for R's documentation so that help documentation will appear as it does on http://www.rdocumentation.org.
-   [tableMatrix](https://mran.revolutionanalytics.com/package/tableMatrix/) v0.8: Provides 2 classes extending data.table: tableList and tableMatrix.

With this post, I am up to date with new CRAN packages. I hope to make my package picks a regular, monthly feature of this blog.
