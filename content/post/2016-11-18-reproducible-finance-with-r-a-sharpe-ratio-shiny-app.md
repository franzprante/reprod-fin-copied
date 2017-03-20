---
title: "Reproducible Finance with R: A Sharpe Ratio Shiny App"
author: "Jonathan Regenstein"
date: 2016-11-18T11:58:25+00:00
slug: reproducible-finance-with-r-a-sharpe-ratio-shiny-app
categories: [Reproducible Finance with R, Finance, Applications, R Language]
tags: [Sharpe Ratio, Shiny, R]
---

In this [previous post](/2016/11/09/reproducible-finance-with-r-the-sharpe-ratio/), we used an R Notebook to grab the monthly return data on three stocks, build a portfolio, visualize portfolio performance, and calculate the Sharpe Ratio. The Notebook format emphasized reproducibility and reuse by other R coders.

Today, we'll convert that Notebook into a Shiny application that allows end users to build their own portfolios, and then calculate performance/Sharpe Ratio. Friday = fun day!

Here is the [link to the app](https://beta.rstudioconnect.com/content/2128/#sharpe-ratio).

Close readers of the source code for this app will see that it was built in an Rmarkdown file (with `output: flexdashboard::flexdashboard` and `runtime: shiny` added to the YAML header).

```yaml
---
title: "Sharpe Ratio Shiny"
runtime: shiny
output:
  flexdashboard::flex_dashboard:
    orientation: rows
    source_code: embed
---
```

This app could have been built using an app.r file, but I prefer to use a flexdashboard because it keeps the entire workflow in the Rmarkdown world. In the previous post, we started with a Notebook (also an Rmarkdown file type) and made use of code chunks to enforce logic on our data import, calculations and visualizations. This Shiny app makes use of the same code chunk structure, and I find that the logic translates well. For example, the setup chunks are almost identical and contain our most important function.

    ```{r setup, message = FALSE}
    library(shiny)
    library(flexdashboard)
    library(PerformanceAnalytics)
    library(quantmod)
    library(dygraphs)

    # Function to calculate monthly returns on a stock
    monthly_stock_returns <- function(ticker, start_year) {
      # Download the data from Yahoo finance
      symbol <- getSymbols(ticker, src = 'yahoo', from = start_year,
                           auto.assign = FALSE, warnings = FALSE)
      # Tranform it to monthly returns using the periodReturn function from quantmod
      data <- periodReturn(symbol, period = 'monthly', type = 'log')

      # Let's rename the column of returns to something intuitive because the column
      # name is what will eventually be displayed on the time series graph
      colnames(data) <- as.character(ticker)

      # We want to be able to work with the xts objects that result from this function
      # so let's explicitly put them to the global environment with an easy to use
      # name, the stock ticker
      assign(ticker, data, .GlobalEnv)
    }
    ```

The sidebar code chunk is, of course, unique to the Shiny app, because there are no reactive inputs in a Notebook. But the dygraphs code chunks are similar enough that it's easy to transfer the Notebook code, with a few changes, over to the flexdashboard:

    ```{r}
    ##dygraph chunk
    dygraphOutput("dygraphDollarGrowth")

    output$dygraphDollarGrowth%
        dyAxis("y", label = "$") %>%
        dyOptions(axisLineWidth = 1.5, fillGraph = TRUE, drawGrid = TRUE)
    })
    ```

File formats aside, from a team workflow perspective, this conversion to a Shiny app is super important - it's where the R coders co-mingle with team members who need to make use of R's analytical tools, but do not want to touch the code. For example, we can imagine a portfolio manager who wants the ability to quickly iterate through different portfolios and compare Sharpe Ratios, for internal construction purposes or perhaps even in a client-facing context. The PM does not want to write or reproduce this R code; he or she wants to focus on the portfolio.

In other words, a PM wants to see this:

![](https://www.rstudio.com/wp-content/uploads/2016/11/finance_shiny_app.png)

Not this:

    ```{r}
    ##dygraph chunk
    dygraphOutput("dygraphDollarGrowth")

    output$dygraphDollarGrowth<-renderDygraph({
      dygraph(portfolio_growth(), main = "Growth of $1 Invested in Your Portfolio") %>%
        dyAxis("y", label = "$") %>%
        dyOptions(axisLineWidth = 1.5, fillGraph = TRUE, drawGrid = TRUE)
    })
    ```

    ```{r}
    valueBoxOutput("approvalBox1")
    output$approvalBox1<-renderValueBox({
      valueBox(value = sharpe_ratio(), icon = "fa-line-chart", color = "primary")
    })
    ```

Note that the portfolio performance and Share Ratio calculations are consolidated and moved to the front page, and the individual stock returns are on the second page. The original Notebook had the opposite layout - we began with individual returns and progressed to the portfolio - because it was emphasizing the steps involved in arriving at the conclusion. We wanted our collaborators to start with the basics of grabbing stock return data and then proceed through each logical step.

With this Shiny app, we don't want to force our collaborators to go through our logic, because that is not the purpose of this app. End users of this app build and analyze portfolios, so let's put those tools front and center. Give the users what they want!

Have fun with this app, dream about buying tech stocks at their lows, and remember, as with our previous Notebook, that this app is a starting point. End users might want the ability to choose more than three stocks, or add bonds to the portfolio, or benchmark against a return other than a risk-free rate. This is where R coders and portfolio managers start to collaborate and build things bigger and better. Have a good weekend!
