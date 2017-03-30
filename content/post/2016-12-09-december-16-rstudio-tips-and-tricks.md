---
title: "December '16 RStudio Tips and Tricks"
author: "Sean Lopp"
date: 2016-12-09
slug: december-16-rstudio-tips-and-tricks
categories: [RStudio, R Language, Tips and Tricks]
tags: [R, RStudio, IDE]
---

by Sean Lopp

Here is this month's collection of RStudio Tips and Tricks. Thank you to those who responded to [last month's post](https://www.rstudio.com/rviews/2016/11/11/easy-tricks-you-mightve-missed/); many of your tips are included below! Be sure to subscribe to [@rstudiotips](https://twitter.com/rstudiotips) on Twitter for more.

This month's tips fall into two categories: Keyboard Shortcuts and Easier R Markdown.

# Keyboard Shortcuts

The RStudio IDE is built upon "hooks". Hooks are actions that the IDE can take. For instance, there is a hook to create a new file. Most users interact with hooks with point-and-click interactions. (`RStudio toolbar -> new file` or `File -> New File`). But, there is an alternative! All of these hooks have been surfaced to end users and can be bound to a keyboard shortcut. (Some of these actions are "secret" - they aren't exposed through point-and-click options.)

## Custom Keyboard Shortcuts

To view the complete list of actions, the current keybindings, and to customize keybindings, go to: `Tools -> Modify Keyboard Shortcuts`.

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_keyboard_shortcuts.gif)

## Code Chunk Navigation

Define shortcuts for code chunk navigation using the previous tip. For example, `Alt+Cmd+Down` for Next Chunk and `Alt+Cmd+Up` for Previous Chunk.

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_codechunknav.gif)

## Assignment Operator

Use `Alt+-` (press `Alt` at the same time as pressing `-`). This adds the assignment operator and spacing.

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_assignNEW.gif)

## Pipe Operator

Use `Cmd+Shift+m` (for Mac) or `Ctrl+Shift+m` (for Windows). This adds the pipe operator `%>%` and spacing.

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_pipeNEW.gif)

# Easier R Markdown

## R Markdown Options

R Markdown output formats include arguments specified in the YAML header. Don't worry about remembering all of the key-value pairs; in RStudio, you can access and change the most common through a user-interface.

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_rmdoptions.gif)

## Spell Checker

Use the built-in spell checker when writing a R Markdown document. (Code chunks are automatically ignored.)

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_spellcheck.gif)

## SQL Code Chunks

Execute SQL queries against database connections directly in R Markdown chunks.

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_sql.jpg)

## R Markdown Websites

Are you building a [website with R Markdown](http://rmarkdown.rstudio.com/rmarkdown_websites.html)? Any RStudio project with an R Markdown website will include a Build Website option in the build pane.

![](https://www.rstudio.com/wp-content/uploads/2016/12/tips_buildpane.jpg)

What's your favorite RStudio Tip?
