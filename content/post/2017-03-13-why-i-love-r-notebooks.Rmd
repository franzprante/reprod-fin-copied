---
title: Why I love R Notebooks
date: 2017-03-15
draft: yes
author: "Nathan Stephens"
summary: "Data science with R Notebooks"
tags: [RStudio, Notebooks, Data Science]
slug: why-i-love-r-notebooks
---
by Nathan Stephens

*Note: [R Notebooks](https://blog.rstudio.org/2016/10/05/r-notebooks/) requires [RStudio Version 1.0](https://www.rstudio.com/products/rstudio/download/) or later*

I'm a big fan of the R console. During my early years with R, that's all I had, so I got very comfortable with pasting my code into the console. Since then I've used many code editors for R, but they all followed the same paradigm -- script in one window and get output in another window. Notebooks on the other hand combine code, output, and narrative into a single document. Notebooks allow you to interactively build narratives around small chunks of code and then publish the complete notebook as a report.

<img src="/2017-05-13-why-i-love-r-notebooks/notebook-demo.png" alt="R Notebooks are a method of Literate Programming that allows for direct interaction with R while producing a reproducible document with publication-quality output." style="width: 400px;"/>

R Notebooks is a new feature of RStudio which combines the benefits of other popular notebooks (such as Jupyter, Zeppelin, and Beaker) with the benefits of R Markdown documents. As a long time R user I was skeptical that I would like this new paradigm, but after a few months I became a big fan. Here are my top three reasons why I love R Notebooks.


### Number 3: Notebooks are for doing science

If scripting is for writing software then notebooks are for doing data science. In high school science class I used a laboratory notebook that contained all my experiments. When I conducted an experiment, I drew sketches and wrote down my results. I also wrote down my ideas and thoughts. The process had a nice flow which helped me improve my thinking. Doing science with physical notebooks is an idea that is centuries old.

<img src="/2017-05-13-why-i-love-r-notebooks/labnotebook4.png" alt="Leonardo da Vinci was a prolific user of notebooks, creating thousands of pages that are still around today. This page from the Codex Atlanticus shows notes and images about water wheels and Archimedean Screws." style="width: 400px;"/>

Electronic notebooks follow the same pattern as physical notebooks but applies the pattern to code. With notebooks you break your script into manageable code chunks. You add narrative and output around the code chunk which puts it into context and makes it reproducible. When you are done, you have an elegant report that can be shared with others. Here is the thought process for doing data science with notebooks:

* I have a chunk of code that I want to tell you about.
* I am going to execute this chunk of code and show you the output.
* I am going to share all chunks of code with you in a single, reproducible document.

If you do data science with R scripts, on the other hand, you develop your code as a single script. You add comments to the code, but the comments tend to be terse or nonexistent. Your output may or may not be captured at all. Sharing your results in a report requires a separate, time consuming process. Here is the thought process for doing data science with scripts:

* I have a thousand lines of code and you get to read my amazing comments!
* Hold onto your hats while I batch execute this entire script!
* You can find my code and about 50 plots under the project directory (I hope you have permissions).


### Number 2: R Notebooks have great features

R Notebooks are based on [R Markdown](http://rmarkdown.rstudio.com/) documents. That means they are written in plain text and work well with version control. They can be used to create elegantly formatted output in multiple formats (e.g. HTML, PDF, and Word).

R Notebooks have some features that are not found in traditional notebooks. These are not necessarily inherent differences, but differences of emphasis. For example, R Markdown documents gives you many options when selecting graphics, templates, and formats for your output. 

Feature | R Notebooks | Traditional Notebooks
---------------------------|:------------:|:-------------:
Plain text representation	| ✓ |	
Same editor/tools used for R scripts |✓|	
Works well with version control |✓|	
Create elegantly formatted output |✓|
Output inline with code |✓|✓
Output cached across sessions |✓|✓
Share code and output in a single file |✓|✓
Emphasized execution model | Interactive & Batch | Interactive

When you execute a code chunk in an R Notebook, the output is cached and rendered inside the IDE. When you save the notebook, the same cache is rendered inside a document. The HTML output of R Notebooks is a dual file format that contains both the HTML and the R Markdown source code. The dual format gives you a single file that can be viewed in a browser or opened in the RStudio IDE.

<img src="/2017-05-13-why-i-love-r-notebooks/nbWorkings.png" alt="Notebooks store output in a local cache. The cache is used for the IDE and for saved output. Notebooks save their output to a dual file format that contains both HTML and the source code." style="width: 640px;"/>


### Number 1: R Notebooks make it easy to create and share reports

My favorite part of R Notebooks is having the ability to easily share my work. With R notebooks a high quality report is an automatic byproduct of a completed analysis. If I write down my thoughts while I analyze my code chunks, then all I have to do is push a button to render a report. I can share this report by publishing it to the web, emailing it to my colleagues, or presenting it with slides. This video shows how easy it is to create a report from an R Notebook.

<center><iframe src="https://player.vimeo.com/video/208170015?loop=1&color=ffffff&byline=0&portrait=0" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></center>

## R Notebooks for data science

Activity            | R Notebook          | R Script
------------------- | ------------------- | -------------------
Building a narrative | Rich text is added throughout the analytic process describing the motivation and the conclusions for each chunk of the code. | Comments are added to the script, and a report that describes the entire analysis is drafted after the script is completed.
Organizing plots, widgets, and tables | All output is embedded in a single document and collocated with the narrative and code chunk to which it belongs. | Each individual output is sent to file and is collected later into a report.
Creating reports | Rendering the final report is instant. The same document can be published to multiple formats (e.g. HTML, PDF, Word). Since the document is based on code, future changes are easy to implement and the document is reproducible by others.| Creating a report is a separate, time consuming step. Any changes to the report can be time consuming and prone to error. Since the report is not tied to code, it is not reproducible.

R Notebooks are not designed for all the work you do in R. If you are writing software for a new package or building a Shiny app you will want to use an R script. However, if you are doing data science you might try R Notebooks. They are great for tasks like exploratory data analysis, model building, and communicating insights. Notebooks are useful for data science because they organize narrative, code, and text around manageable code chunks; and creating quality, reproducible reports is easy.

*References: For an introduction to R Notebooks see this [video](https://youtu.be/zNzZ1PfUDNk) or  [blog post](https://blog.rstudio.org/2016/10/05/r-notebooks/). For more detailed information, see this [workflow](https://github.com/rstudio/rstudio-conf/blob/master/2017/R_Notebook_Workflows-Jonathan_McPherson/r-notebook-workflows.Rmd) presentation or the [reference site](http://rmarkdown.rstudio.com/r_notebooks.html).*


