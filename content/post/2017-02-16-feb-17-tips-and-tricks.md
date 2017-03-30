---
title: "February '17 Tips and Tricks"
author: "Sean Lopp"
categories: [RStudio, R Language, Tips and Tricks]
date: 2017-03-03
summary: "This month's collection of tips and tricks focuses on Code Snippets."
tags: [R, RStudio, IDE]
---

by Sean Lopp

If you spend time with an excellent programmer, one thing that immediately jumps out is how quickly she can write code. It often appears to be magic, the number of keystrokes simply can't equal the number of characters on the screen. The secret: it doesn't! Most programmers use a series of tricks to save the hassle of writing boilerplate code. This month, my personal goal was to spend less time typing, even if it required slowing down to master these tricks. In this post, I'll focus on one of the easiest and most flexible tools at your disposal: [code snippets](https://support.rstudio.com/hc/en-us/articles/204463668-Code-Snippets). (Astute readers will note that I've mentioned code snippets [before](https://www.rstudio.com/rviews/2016/11/11/easy-tricks-you-mightve-missed/). They deserve the extra attention!)

Code snippets are a common programming tool similar to keyboard shortcuts. A snippet of text, usually a few characters long, is used as a shortcut to create a larger piece of boilerplate code. `Tab` navigation enables jumping through the boilerplate code to locations where customization is required. 

For example, one of my favorite code snippets is for creating a function. The template of an R function looks like:

```
functionName <- function(arguments) {
  code 
}
```

The boilerplate - not worth typing - is:

```
 <- function( ) {
 
}
```

In RStudio, the code snippet for functions is `fun`. Typing `fun` and pressing `Tab` will provide an auto-complete suggestion for the snippet. Typing `fun` and pressing `Shift + Tab` inserts the snippet directly. As a general typing rule, keeping your hands on the middle row of the keyboard will speed things up. I hit `Shift` with my right pinky and `Tab` with my left. 

After inserting the boilerplate code, the cursor is placed to left of the `<-`. You can then quickly type the name of the function. Pressing `Tab` places the cursor in between the parenthesis. Pressing `Tab` again places the cursor in between the brackets. This allows you to fill in the remaining portions of the function template quickly.

**Type `fun` and `Shift + Tab`:**

```
HERE <- function() {

}
```

**Pressing `Tab` Once**

```
 <- function(HERE) {
 
}
```

**Pressing `Tab` Twice**

```
 <- function() {
 HERE
 }
```

## Accessing Snippets

RStudio comes with many built-in snippets. To access these snippets, navigate to `Tools` -> `Global Options` -> `Code` and press `Edit Snippets`.

![](/post/2017-02-16-feb-17-tips-and-tricks_files/SL_code_snippets.png)

The menu will show all of the defined snippets. Consider the definition for the function snippet:

```
snippet fun
	${1:name} <- function(${2:variables}) {
		${0}
	}
```

The snippet starts by defining the character shortcut `fun`. The definition includes the boilerplate code. The `Tab` behavior is defined using `${1}` notation. The [code snippet](https://support.rstudio.com/hc/en-us/articles/204463668-Code-Snippets) help page describes the syntax in more detail.


## A Few Examples

### `ts`

Adds a time-stamped comment.

```
# Mon Feb 20 07:34:03 2017 ------------------------------
```

### `if`

Adds the skeleton of an `if` statement

```
if () {

}
```

### `mat` 

Adds the skeleton for defining a matrix.

```
matrix( , nrow = , ncol = )
```

There are code snippets for other languages as well.

## Creating Snippets

Code snippets are powerful because they can be customized and created. If you find yourself repeatedly typing the same code, create a snippet. The menu of snippets in RStudio is editable. To create or modify a snippet, add your changes to the menu and click `Save`.

## Sharing Snippets

Once you've created a handful of useful code snippets, it would be generous to share. The [`snippr` package](https://github.com/dgrtwo/snippr) makes this process easy.

This [gist](https://gist.github.com/slopp/27903daaf9fbd41afc73442b600a7618) contains two of my favorites: a code snippet for creating a single file Shiny app, and a code snippet to start a ggplot.

Shiny:

```
snippet shiny
	library(shiny)
	ui <- fluidPage(
		${1:ui}
	)
	
	server <- function(input, output, session){
	  ${2:server}
	}
	shinyApp(ui = ui, server = server)
```

ggplot2:

```
snippet gg
	ggplot(${1:data}, aes(${2:aes})) + 
	  geom_${3:geom}()
```

What are your favorite snippets?

