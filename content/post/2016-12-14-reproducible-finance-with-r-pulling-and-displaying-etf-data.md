---
title: "Reproducible Finance with R: Pulling and Displaying ETF Data"
author: "Jonathan Regenstein"
date: 2016-12-14
categories: [Reproducible Finance with R, Finance, Applications, R Language]
tags: [R]
---

by Jonathan Regenstein

It's the holiday season, and that can mean only one thing: time to build a leaflet map as an interface to country Exchange Traded Fund ([ETF](https://en.wikipedia.org/wiki/Exchange-traded_fund)) data!

In previous posts, we examined how to import stock data and then calculate and display the Sharpe Ratio of a portfolio. Today, we're going to skip the calculations and focus on a nice interface for pulling and displaying data. Specifically, our end product will enable users to graph country ETF prices by clicking on those countries in an interactive map, instead of having to use the ETF ticker symbol. Admittedly, part of the motivation here is that I don't like having to remember ticker symbols for country ETFs, but hopefully others will find it useful too.

Our app will be simple in that it displays price histories, but it can serve as the foundation for more complicated work, as we will discuss when the app is completed in the next post. At the outset, it is crucial to note that this Notebook will serve a different purpose than our previous Notebook. As before, we will use this Notebook to test data import, wrangling, and our visualizations before taking the next step of building an interactive Shiny app. However, we are going to save objects from this Notebook into a .Rdat file, and then use that file in our app. In that way, this Notebook is more fundamentally connected to our app than our previous Notebook. In the next "finance Friday = fun day" post, we will go through how to build that app (though frankly the hard work occurs in this Notebook), but for today here is how we'll proceed.

First, we will get our ETF tickers, countries and year-to-date performance data into a nice, neat data frame. Note that the data frame will not hold the price history data itself. Rather, it will hold simply the ticker symbols, country names and YTD percentages. Next, we pass those ticker symbols to the `getSymbols()` function and download the price histories for the county ETFs. Advance warning: there are 42 country ETFs in this example, and downloading 42 xts objects takes time and RAM. I recommend using the server version of the IDE if you want to run this code, or truncate and grab three or four price histories, or skip this step.

As we'll see, it is not strictly necessary to pass all of those tickers to `getSymbols()` right now because the data will be downloaded on the fly when a user clicks on a country in our Shiny app. However, even though it requires a lot memory, I prefer to download all 42 price histories in order to confirm that the tickers are correct and accessible via `getSymbols()`. Better to find the typos now than to have users discover an error in the app. Once we have confirmed that our ticker symbols are valid, it's time for step 3: build our map using a shapefile of the world's countries. This step requires a lot of RAM, but leaflet makes the process quite simple from a coding perspective. If you're new to map building, this will serve as a gentle introduction to creating a usable interactive map.

Fourth, and very importantly, we will add our ETF tickers and year-to-date performance data to our shapefile, making them accessible via clicks on the map. At this step, we will be thankful that when we created a data frame in step 1, we used the same country names as appear on the map: that forethought will allow us to do an easy `merge()` of the data. We'll then build the map to make sure it looks how we want it to look in the final app. Once we have a shapefile with our ETF tickers added, we'll save it to a .RDat file that we can load into our Shiny app.

Let's get to it! Building an interface to country ETFs will require those ETF ticker symbols. We also need the country names to go alongside them. Why country names instead of, say, the full ETF title? We need a way to synchronize with our map file and country names is a good way. There's no way to know this ahead of time without thinking through the structure of the app and probably making liberal use of a whiteboard. That valuable country ETF data is available [here](https://www.ishares.com/us/products/etf-product-list#!type=ishares&tab=performance&view=list&fc=43537%7C43538%7C43539%7C43540%7C43541%7C43543%7C43544%7C43545%7C43550%7C43558%7C43561%7C43562%7C43568%7C43570%7C43571%7C43576%7C43577%7C43578%7C43579%7C43582%7C43583%7C43592%7C43593%7C43595%7C43605%7C43606%7C43607%7C43609%7C43612%7C44070%7C43614%7C43616%7C43617%7C43618%7C43621%7C43622%7C43624%7C43628%7C43629%7C43630%7C43631&subtab=priceMonthly). Have a peek at that link and notice that the year-to-date performance is also readily available. I hadn't planned on including YTD performance in any way, but we'll grab it and put it to good use. That data is not available in the html, so simple [rvest](https://cran.r-project.org/web/packages/rvest/index.html) moves aren't going to help us. There's a download button, but I found it easier to copy/paste to a spreadsheet and then import to the IDE.

I will spare us the `gsub()` pain of extracting country names from the fund titles (though direct message me if you want that code) and paste the tickers, country names and year-to-date performance below.

The data frame looks pretty good, though quite simple, and it's fair to wonder why I bothered to highlight this step with it's own code chunk. In fact, getting the clean ticker and country names was quite time-consuming, and that will often be the case: the most prosaic data import and tidying tasks can take a long time! Here is another fine occasion to bring up reproducibility and work flow. Once you or your colleague has spent the time to get a clean data frame with ticker and country names, we definitely want to make sure that no one else, including your future self, has to duplicate the effort for a future project. I put this step in it's own code chunk so that the path back to the clean data would be as clear as possible.

For that reason, I also have a personal preference for the ‘DataGrab' file naming convention – i.e., in the IDE, I named this file ‘Global-ETF-Map-DataGrab'. Whenever I use a Notebook for the purpose of importing, tidying, building and then saving objects in a .Rdat file that will be loaded by a Shiny app, I include ‘DataGrab' in the name of the file. If future me or a team member needs to locate the file behind one of our flexdashboards, they will know that it has ‘DataGrab' in the title.

Back to the code at hand! Now that we have the tickers in a data frame column, we can use `getSymbols()` to import the price history of each ETF. We aren't going to use the results of this import in the app. Rather, we are going to perform this import to test that we have the correct symbols, and that they play nicely with `getSymbols()`, because that is the function we will use in our Shiny app.

Alright, it looks like we've been successful at importing the closing price history of the country ETFs. Nothing too complicated here and again, our purpose was to test that the ticker symbols are correct. We are not going to be saving these prices for future use. Now it's time to build a map of the Earth! First, we will need a shapefile that contains the spatial polygons for the countries of the world. The next code chunk will grab a shapefile from [naturalearthdata.com](http://www.naturalearthdata.com). That shapefile has the longitude and latitude coordinates for the world's countries and some data about them. We'll then use the `readOGR()` function from the [rgdal](https://cran.r-project.org/web/packages/rgdal/index.html) package to load the shapefile into our global environment.

Take a peek at the data frame portion of the shapefile, and scroll to the right to see some interesting things like GDP estimates and economic development stages. It's pretty nice that the shapefile contains some economic data for us. The other portion of the shapefile is the spatial data: longitude and latitude coordinates. If you're not a cartographer, don't worry about those for now.

If you're not familiar with spatial data frames, that's okay because neither am I. The [leaflet](https://cran.r-project.org/web/packages/leaflet/index.html) package makes building a nice interactive map with these shapefiles relatively painless.

Before building a map, let's make use of the data that was included in our data frame. The ‘gpd\_md\_est' column (which you can see in the data frame above) contains GDP estimates for each country. We'll add some color to our map with shades of blue that are darker for higher GDPs and lighter for lower GDPs.

We want something to happen when a user clicks a country. How about a popup with country name and stage of economic development? Again, that data is included in the shapefile we downloaded.

Now we can use leaflet to build a world map that is shaded by GDP and displays a popup. Note the ‘layerId = \~name' snippet below – it creates a layer of country names. We will change that later in an important way.

The map looks good, but it sure would be nice if we could add the ETF ticker symbols and year-to-date data to the world spatial data frame object – and we can! Our ‘name' column in the ETF data frame uses the same country naming convention as the ‘name' column of the map, and those columns are both called ‘name'. Thus, we can use the `merge()` function from the [sp](https://cran.r-project.org/web/packages/sp/index.html) package to add the ETF data frame to the spatial data frame. This is similar to a join using dplyr.

The correspondence of country names wasn't just luck – I had the benefit of having worked with this shapefile in the past, and made sure the country names matched up, and now you have the benefit of having worked with this shapefile. For any future project that incorporates a map like this, give some forethought to how data might need to be merged with the shapefile. The shapefile and the new data need a way to be matched. Country names usually work well.

After the merging, the ticker symbols and year-to-date number columns will be added for each country that has a match in the ‘name' column. For those with no match, the ‘ticker' and ‘ytd' columns will be filled with NA.

Now that the ytd data is added, let's shade the different countries according to the year-to-date performance of the country EFT, instead of by GDP as we did before. A nice side benefit of this new shading scheme: if a country has no ETF, it will remain an unattractive grey.

The new shading is nice, but let's also have the popup display the exact year-to-date performance percentage for any detail-oriented users.

Now we'll build another map that uses the year-to-date color scheme and popup, but we will make one more massively important change: we will change `layerId = ~name` to `layerId = ~ticker` to create a map layer of tickers.

Why is this massively important? When we eventually create a Shiny app, we want to pass ticker symbols to `getSymbols()` based on a user click. The ‘layerId' is how we'll do that: when a user clicks on a country, we capture the ‘layerId', which is a ticker name that we can pass to `getSymbols()`. But that is getting ahead of ourselves. For now, here is the new map:

Fantastic: we have a map that is shaded by the YTD performance of country ETFs, and displays that YTD percentage in the popup. Notice the difference between this map and the previous map which was shaded by GDP: a user can quickly see which countries have ETFs and click to see more.

The `world_etf` shapefile is going to play a crucial role in our Shiny app, and the last step is to save it for use in our flexdashboard.

Note that we are not going to save the ETF price data. It's not needed in the interactive Shiny app because that data will be imported dynamically when a user clicks. That allows our dashboard to be constantly updated in real time. Remember that we loaded up the ETF data in this Notebook so that we could ensure that the ticker symbols play nicely with `getSymbols()`. Next time, we'll wrap this up into a Shiny app by way of flexdashboard, and that app will allow users to click on a country and graph the ETF history. The first thing we'll do in that file is load the .RDat file that we just created. There are two pieces of good news: first, we've already done the hard work of creating a map object, and the app coding is the fun part. Second, the work here does not need to be repeated for any future projects. If you or your team ever need to build a map of the world shaded by GDP estimates or ETF YTD performance, here it is. If you ever need the clean tickers, year-to-date performance or the time series data on these 42 country ETFs, here it is.

See you soon!
