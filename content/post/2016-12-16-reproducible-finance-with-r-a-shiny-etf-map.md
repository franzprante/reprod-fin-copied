---
title: "Reproducible Finance with R: A Shiny ETF Map"
author: "Jonathan Regenstein"
date: 2016-12-16
categories: [Reproducible Finance with R, Finance, Applications, R Language]
tags: [Shiny, R]
---

by Jonathan Regenstein

In a [previous post](https://www.rstudio.com/rviews/2016/12/14/reproducible-finance-with-r-pulling-and-displaying-etf-data/), we built an R Notebook that laid the groundwork for a Shiny app that allows users to graph country ETFs by clicking on a world map. In today's Fun Friday post, we'll charge forth to build that app, again using a flexdashboard so that we can stay in the Rmarkdown schema. Devoted readers of this blog know that I have a predilection for the Notebook-to-flexdashboard workflow, for reasons of efficiency and reproducibility.

The final app is [here](http://colorado.rstudio.com:3939/Global-ETF-Map/), with the code available in the upper right-hand corner. Let's step through this script.

In the first code chunk, we load the ‘etfData.RDat' file, the same file that we created in the dataGrab Notebook to save our shapefile of the world. After loading that file, we use the exact same code from the Notebook to construct our leaflet map.

Next, we want to display that map in the first row of our flexdashboard. We will use ‘renderLeaflet'. Nothing fancy here.

Now, we want to add the ability for the user to click a country and see the price history of that country's ETF. This will require the following steps: (1) click a country, (2) pass the ETF ticker symbol to `getSymbols`, (3) import the price data time series, and (4) display the time series using `dygraphs`. All of this is going to be easy for us because of an important decision that we made when building our leaflet map object.

Recall that we set `layerID = ticker` in the view. This is part of the magic of the shapefile. It allows us to capture the ticker symbol associated with a country shape when a user clicks. Our ticker column is associated with our country longitudes and latitudes. In the code chunk below, we use an `observeEvent` function to capture the ID of whatever shape a user clicks, and we set that ID to be the ticker.

Now, we have the ticker in the ‘clickedCountry' reactive, and just need to pass it to `getSymbols`. One important note: if a user clicks on a country with no ETF, that reactive object will be ‘NA' or null. The first step in the code chunk below is to validate the entry and, if it is null, let the user know that a country with no ETF has been clicked.

To graph the resulting xts object, which we have named ‘etf', we pass it to `dygraph`.

Remember, there were two key components: setting `layerID = ticker` and then capturing that `layerID` using `observeEvent` when a user clicks

That's it for building this app, but keep in mind: this interface need not be limited to country ETFs. We could wire this up to display currency prices, interest rates, labor force participation rates, or, say, the 10 best-performing stocks in a country. We could combine this map with the [Sharpe Ratio app](https://www.rstudio.com/rviews/2016/11/18/reproducible-finance-with-r-a-sharpe-ratio-shiny-app/), so that a user could build his portfolio by clicking on different countries, selecting weightings to those countries, and then calculating the Sharpe Ratio. Instead of simply displaying a time series of prices, we could display the results of a forecasting model for each country. The nice thing is that once we have our template to use a map as an interface to data, the world is our playground.
