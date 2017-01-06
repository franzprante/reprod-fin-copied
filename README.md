This is the source repository of the R Views blog. The blog is rendered through the [**blogdown**](https://github.com/rstudio/blogdown) package. If you want to build the blog locally, you can clone or download this repo, click `rviews.Rproj` to open it in RStudio, then install **blogdown** and Hugo:

```r
devtools::install_github('rstudio/blogdown')
blogdown::install_hugo()  # install Hugo
```

Now you can build and preview the website:

```r
options(servr.daemon = TRUE)
blogdown::serve_site()
```

Please note it may take a long time to render the website for the first time, but it will be faster after that.

If you want to contribute a new blog post, you can add it via

```r
blogdown::new_post("Your Post Title")
# use the argument rmd = TRUE if you want an R Markdown post
```

RStudio will automatically open the post, and you can edit/preview it. Once you are done, you can submit a pull request to us, and we will review your post. You may be asked to revise the post a few times before it is accepted.
