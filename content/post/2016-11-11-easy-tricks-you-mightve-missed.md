---
title: "RStudio IDE Easy Tricks You Might've Missed"
author: "Sean Lopp"
date: 2016-11-11T16:17:16+00:00
slug: easy-tricks-you-mightve-missed
categories: [R Views]
tags: [Community, Data Science, Education, Open Source]
---

The RStudio IDE reached version 1.0 this month. The IDE has come a long way since the initial release 5 and a half years ago. Many major features have been built: projects, package building tools, notebooks. During that same period, often hidden in the shadows, a growing list of smaller features has been changing lives. In celebration of version 1.0 this post hopes to spread fanfare for a few of these easy-to-miss tools.

## Tearable Panes

Tearable panes are anything but terrible. This feature allows users to tear off data view panes and source panes facilitating the use of multiple screens.

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_tearable.gif)

![](https://www.rstudio.com/wp-content/uploads/2016/11/image04.png)

## Command History

In the console it is possible to scroll through the command history by clicking `Ctrl/Cmd` and `↑`. The command history will be filtered as code is typed into the console:

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_console.gif)

## History Pane

The history pane shows a searchable list of commands that have been run. Commands can be written to the source pane or the console. No more copy and paste from the console to a script!

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_history.gif)

## Rename in Scope

This feature makes it easy to rename all instances of a variable. The tool is context aware; changing 'm' to 'm1' won't change 'mtcars' to 'm1tcars'.

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_rename_in_scope.gif)

## Gallery and Satellite View in Notebooks

A new feature built into R Notebooks, a code chunk that produces multiple plots will produce a gallery. The plots can be viewed by toggling between thumbnails. The gallery can be expanded into a new satellite window for closer inspection.

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_gallery_satellite.gif)

## Code Outline

Save time scrolling with the code outline. This feature works for R Notebooks and traditional R scripts. In R Notebooks sections are delimited by the R Markdown headers. In R scripts sections are delimited by section comments (Try Code -> Insert Section).

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_outline.gif)

## Code Snippets

Code snippets are a shortcut to insert common boilerplate code. For instance, type fun and then Tab to insert the skeleton code for a function definition. Then hit Tab to replace the necessary components. In addition to a rich set of defaults, custom code snippets can also be created. [Learn more](https://support.rstudio.com/hc/en-us/articles/204463668-Code-Snippets).

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_code_snippet.gif)

## File Navigation

Many people know of RStudio's rich set of tab complete options for functions and function arguments. Tab complete can also help find files and remove the hassle of writing out long path locations. Hit tab in between two double quotes (" ") to open a file explorer.

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_file_nav.gif)

## Jump To Function Definition

Want to dig into the innards of a function? With the cursor on a function press `F2` to jump to the function definition, even for functions in a package.

![](https://www.rstudio.com/wp-content/uploads/2016/11/tip_goto_func.gif)

These are just a few of my favorite tricks. A comprehensive list is available in the [RStudio IDE Cheatsheet](https://www.rstudio.com/wp-content/uploads/2016/01/rstudio-IDE-cheatsheet.pdf) or follow [@rstudiotips](https://twitter.com/rstudiotips) on Twitter to learn a few tricks every week.

What's your favorite RStudio tip?
