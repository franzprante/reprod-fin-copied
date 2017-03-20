---
title: "Interview with Joe Cheng"
author: "Joseph Rickert"
date: 2017-01-04T22:09:01+00:00
categories: [Interview, R Language]
tags: [R]
---

Recently, I had the opportunity to interview RStudio's Joe Cheng. Joe, the inventor and lead developer for Shiny, was the first person that J.J. Allaire invited to join the RStudio IDE project. We talked about those early days, how Shiny got started, Joe's background as a software developer, his take on the R language and more. What follows is an edited transcript of our conversation.

****

JBR: *Hello Joe, thank you for being with us today. In the interview we did with J.J. last year, he said that eight years or so ago, he worked on an early version of the RStudio IDE for about nine months before he realized that he couldn't do the whole thing by himself. About what happened next, J.J. said:*

> So I recruited Joe Cheng to work with me. Joe and I had worked together at a couple of previous companies. At that time I told him, Joe, I make no representation or promise that this is going to be a company. It just might be an open-source project. Is that okay with you?

*Then J.J. said you replied, "That's fine."*

*Really? You just said, "That's fine." Did you really say that? This must have been quite a big deal for you to commit to something so uncertain. What were you thinking? Can you tell us a bit about the backstory?*

**Joe Cheng:** I had started working for J.J.'s first company back in 1996 when I was a college freshman. I was an intern in their web development department. I never met J.J. then, but I worked closely with the first employee at Allaire, a guy name [Charles Teague](https://www.linkedin.com/in/cteague). Several years later, Charles kind of called me out of the blue and said he was starting another company with J.J., a very small one. This is about 2002 or 2003. I went to work for Onfolio when it was about five or six people. I got to know J.J. very well.

I've worked for many start-ups in my career. I really enjoy early-stage startups and by far, to me, the most important thing, more important than a business model, more important than who's investing is whether the founder is someone that you trust and whose values align with yours. I just thought J.J. was an amazing individual and he really believed in every piece of software we ever made together. He did it for the right reasons and really did things with a lot of respect for our users and customers, and really believed in taking care of his employees. He proved that again and again while we had worked together over the years.

For me, there is nothing risky about working for any project that J.J.'s involved with. I know that whatever would happen, whether something amazing was going to happen with R, or whether it wasn't a good bet, that if you work for J.J. really interesting things are going to happen and good things tend to follow. The other consideration was that I had been working in the startup world since I graduated from college. I don't think that I was involuntarily out-of-work for more than a week and a half or two weeks.

The bottom line was that I thought for this particular industry at that particular moment it was OK if the opportunity was unstable. There was lots of interesting stuff happening all over the industry. If it didn't work out I would just move on to the next thing. I didn't join J.J. because I thought there was an amazing business model or an amazing business to be built, but because I thought the technical problems were interesting and I believed in J.J. That was really all that mattered to me at the time. But I'm pleasantly surprised that it's worked out as well as it did.

****

JBR: *So you worked on the idea with J.J. for a while and then I guess three years ago or so you had the idea for Shiny. In an interview you did at [useR! 2014](https://www.youtube.com/watch?v=uJm-its3ZWM), you talked about how the JavaScript [Meteor](https://www.meteor.com/) project sparked the idea for you.*

**Joe Cheng:** Yes.

****

JBR: *But besides the reactive programming tricks – I think that's the word you used – what was the big idea that really excited you? Was it bringing JavaScript to the R world or designing new workflows or something else?*

**Joe Cheng:** I guess I have a little bit of a meta answer to that. I really get excited when I can do something that not that many other people know how to do. If I can take that ability and let other people do it, that's really exciting. Web development is not an uncommon skill. Obviously there are a lot of people doing web development, but it is not common in the R community, or at least not as common as in other programming communities.

What got me excited was that there was clearly this hunger for interactivity. People clearly wanted to be able to build interactive applications, reports and other artifacts. Just from talking to people I got the impression that they felt doing things interactively was just beyond them; far out of their reach. In 2010 or 2011, the very first time we talked to [Danny Kaplan](https://www.macalester.edu/~kaplan/), a professor at Macalester, about the first versions out of RStudio IDE he told us: "That's really cool and I'll definitely use that, but what would really be nice is if I could stop hiring grad students to build the whole Java app that's to demonstrate statistical concepts. I really want to be able to do this myself." We heard versions of that over and over and over again.

Right from that first time I told J.J. that we could definitely could do that. Obviously, we knew how to build web applications. We knew how to build libraries. We could have built a web app framework for R. But, I argued that we shouldn't do it until we knew the right way to do it, meaning a way to express web applications that's actually natural to do in R. I knew this had to be more than just taking the same idioms you would do in JavaScript, in Java or Ruby, and just port those over to R. I didn't think that would do anyone any good. We wanted to find a library API that was high-level enough that you could really focus on the intent of what you were doing, but low-level enough that there infinite possibilities of what you could build.

At the time that I made that statement, I really had no idea. I had no idea how we would solve that problem. I think those ideas percolated in my head and then finally seeing Meteor made the last pieces click. To me, it was the culmination of a lot of ideas that I've been building up over the course of my programming career and it happened to find a really receptive audience in the R community, so that's been great.

****

JBR: *Did you think Shiny would become so popular in such a short time?*

**Joe Cheng:** I thought it had a shot at being quite popular, but I was surprised at is how deeply people got into it right away. They didn't just see it and kind of casually start using it. Apparently, a number of people decided right away that they were going to spend hours doing this every day. Some people have been heavily investing in Shiny for like four or five years now. That was surprising to me. I knew that people would use it to build simple apps, but I was absolutely shocked how quickly people decided to really build significant things on top of it.

In a way, that was a really pleasant surprise, because it showed that we were on to something, but it also increased the pressure on us. I thought that I would have more time to build things out. I thought there would be a couple of years at least before people wanted the things that they started to build after only six months. The first couple of years after we released Shiny were really hectic. We were trying to catch up to what people wanted to do immediately with the framework.

I am also surprised at how long the growth curve has continued. Here we are four or five years after Shiny was first introduced and still every year it seems like it gets bigger and bigger. I keep thinking: "Okay, now we've hit peak Shiny," but every year going to conferences you see more and more and more Shiny everywhere, which is obviously very gratifying.

****

JBR: *How mature is Shiny now? Are there still lots of new features that you want to add or is it getting to be really close to a finished product?*

**Joe Cheng:** I don't know if it will ever be finished. I don't know if that's the nature of the kind of problem it's trying to solve. But for quite some time now, I've felt like the capabilities of the framework and the features we've built in have far outstripped our ability to teach them effectively to the community. In that sense, Shiny is a more mature product than I think most people realize, and it has more features than most people are using. However, there are certainly some big areas where new features are needed. Right now, we are especially focused on testing and on long-running tasks. There are still a number of things that we are very interested in doing.

The other thing that's really interesting about Shiny is that every year there's been at least one or two big surprises where Shiny turned out to be useful. People are using Shiny in scenarios that we never envisioned. For example, the idea of gadgets and Shiny gadgets being integrated in the IDE was a new thing that started in 2015. Or another example, the first year after we released Shiny I stumbled upon a pattern of using reactive programming to do its opposite: imperative programming. It turns out that you can use Shiny to effectively mix the two styles and do reactive and imperative programming. I certainly didn't envision that! Yes, I continue to be surprised at new vistas opening up in front of Shiny, and so far, there's no evidence that this is slowing down.

****

JBR: *If you could restart Shiny from scratch today, what would you change?*

**Joe Cheng:** That's a good question. When I began working on Shiny, some of the ideas around reactivity were not crystal clear in my head the way that they are today. I was stumbling along, going by instinct when I defined some of the early primitives, like reactive values, reactive expressions, observers. I did actually end up with the right set of primitives, but I didn't understand their characteristics well enough to give them good names.

The biggest thing I regret is naming the reactive expressions, the functions called reactive and observers. Those names are kind of like a nod back to Meteor and some other literature I had read about reactive programming. But they don't actually help to convey how these functions should be used. I really wish I could go back and rename the function reactive to be rx\_calc and the function observer to be rx\_exec. These names better reflect what the functions should be used for.

We have also been very happy with the technical bets we've made and how they've played out so far. That's not to say someone won't discover some critical mistake in the future, but so far this is really been kind of a charmed project. I've been extremely happy with how well the technology's held up over the years.

****

JBR: *Let's change gears a little here and talk about R. You've gathered a tremendous amount of experience working with R as a developer. What's your take on the R language from a computer scientist / software developer's point of view? What features of R ought to inform any discussion of comparing R with other languages?*

**Joe Cheng:** I think R is actually a pretty underrated as a language. This is probably because it has some basic features that are so foreign coming from other languages. One example is having everything vectorized. Delayed evaluation for function arguments is another.

About ten or fifteen years ago, I read a book [Paul Graham](https://en.wikipedia.org/wiki/Paul_Graham_(computer_programmer)) wrote before his [Y Combinator](https://www.ycombinator.com/) days, called [ANSI Common Lisp](https://www.amazon.com/ANSI-Common-LISP-Paul-Graham/dp/0133708756/ref=sr_1_1?s=books&ie=UTF8&qid=1481825241&sr=1-1&keywords=ansi+common+lisp). At the time, I was a Java programmer building websites and whatever, and it was an absolutely eye-opening, mind-expanding experience reading that book. As I remember it, one of his main points about why Lisp is such an amazing language is that in other languages, you build abstractions by writing functions, writing classes, and then calling them. Whereas in Lisp, it's almost like you change the language itself to be a [DSL](https://en.wikipedia.org/wiki/Domain-specific_language) for whatever problem you're trying to solve. Most other languages don't have this flexibility, certainly not Java, which at the time was my main point of comparison. It was really frustrating to me to read about these incredible ideas and this new way of solving problems – new to me, anyway – and not have the expressiveness and power in the language that I was used to and that I had access to for my day-to-day work.

I've really felt that way ever since then about every language that I've worked in. Ruby came close in some ways, but still it would not let you compute on the language in quite the same way that you could do with Lisp. Even R is not all the way there, but it is shockingly close. If you look beyond the syntax, R really is conceptually very much like Lisp in a lot of ways. One of those ways is that it makes it very, very easy to compute on the programming language itself.

When we build APIs, like for dplyr, for Shiny, we basically are not just saying here's this little routine that you can call any time you need this kind of calculation. We are giving you a different way to express problems in code. R is just an incredible language for letting you do that. Features like formulas, or combining delayed evaluation with the [`substitute()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/substitute.html) function. There are many different ways you can take your standard evaluation model and turn it on it's head to accomplish whatever it is you're trying to accomplish. For doing reactive programming, it's a great advantage, I think, to have a language that's as flexible as R.

I think for day-to-day, R programmers probably don't think about these things, but the elegant, terse syntax of dplyr and the pipe operator are possible because of how malleable a language R is and how great it is for writing DSLs in it.

Personally, one of my pet peeves during these language wars is when people say that one of the differences between say Python or Julia and R is that R is a DSL for stats, whereas these other things are general purpose languages. R is not a DSL. It's a language for writing DSLs, which is something that's altogether more powerful. I actually think that Julia has many of these same characteristics, but Python, even though it obviously has its own strengths, certainly doesn't share that same level of flexibility.

****

JBR: *Okay, so now you partially touched on this next question, but let me go and ask it anyway. To a large extent, R as it currently exists was shaped by statistician developers who are interested in a platform for computational statistics. Do you think that the work that you're doing as you just described and with R with JavaScript features, is going to change the personality of R itself?*

**Joe Cheng:** I think in some ways it already has. At least that's the way a lot of people I engage with through supporting Shiny and talking at conferences see it. The way they think about expressing R code seems to have changed a bit over the last few years. Largely due to Hadley and his Tidy Manifesto, the personality of R has changed. There is more of a focus now on the consistent expression of similar problems and thinking about things from the user's point of view. It's not just about making calculations possible, but also thinking about how users want to consume libraries.

****

JBR: *Should statisticians be worried about the influence of computer science and software engineering that is making its way into R?*

**Joe Cheng:** No, I don't think so. The kind of lessons that we have adopted so far like falling into the "pit of success" (designing a package so it's hard to use it incorrectly) or adopting source control have all been good. I really think that Hadley especially has raised the bar for the community and changed what people aspire to in terms of what their APIs look like. Those of us who use R on a regular basis can feel the difference between the functions that have been in base forever and some of the newer functions people are writing which can be freshly installed from GitHub.

So far at least, I haven't seen a lot of downside to the evolution we're seeing in the way that people in the community write R code. Mostly it's thinking more intentionally about the user experience and not so much about moving away from a stats focus or anything like that. Development is still very much focused on statisticians and on helping people get whatever they need to do done really quickly, whether interactively or through scripts. Some of this intentionality might just amount to taking an extra second to make sure that you've thought about your naming scheme, that you've thought about what things should be in separate functions, etc. Things like this are more what I would consider good practices, good hygiene. I think there is a danger in looking to other programming languages for inspiration and maybe picking up some of their bad habits, but I haven't seen a lot of that so far.

****

JBR: *If the R core genie could grant you a wish, what would you ask for?*

**Joe Cheng:** I've gotten this question multiple times over the years, and honestly I have a really hard time with it. The question is just so contrary to the way I usually think. I just accept the operating system and the language for what they are. I just have to work within their limitations and features. I think I've been using R for long enough that I'm quite comfortable with the sandbox that it makes available to us.

But, if we had a time machine and could go back, the one change that I would make – well the most important change I would make – to R would be to have delayed evaluation be a feature that you opt into rather than being the default. As I said before, delayed evaluation for function arguments is really awesome and it makes things easy in R that are quite unnatural to do in other languages. But, I feel it's a tool that you usually don't want to use. When you want it, it's awesome to have, but it would be nicer to have all function arguments evaluated except for those which have been annotated for lazy evaluation.

Other than that, there are some obvious things that people are looking into, like having out-of-memory data frames, but really for the most part, I don't have the laundry list of grievances that some people do. I tend to just focus on the system we have and what cool things that we can build on top of it.

****

JBR: *How about new technology? What's going on in the wider world that you think is really exciting? What new technology might make its way into RStudio products?*

**Joe Cheng:** For the last few years, I've definitely been very much focused on the web side of things, on web technologies. When I started Shiny, I thought the JavaScript world had reached a kind of inflection point where things were turning so quickly that they would start maturing and stabilizing. Now, looking back, it seems to have been hopelessly naïve to think that we were at some zenith of change. The pace of change has just accelerated in the JavaScript and front-end development world.

I'm actually really excited about all the tools that are available in JavaScript front-end development these days. I'm not talking about visualization libraries, I mean the underlying tools. Languages like [TypeScript](https://www.typescriptlang.org/) and [ES2015](https://themeteorchef.com/blog/what-is-es2015/) are making huge quality of life improvements over the kind of JavaScript we've been writing for many years. All the cool stuff coming out of Facebook with [React](https://facebook.github.io/react/), unidirectional data flow ([UI](http://redux.js.org/docs/basics/DataFlow.html)) as a pure function of state, and that whole ecosystem is a huge step in the right direction. Personally, I think this work validates many of the ideas that Shiny was built on. It's gratifying to see that those ideas that inspired me have taken hold and become the dominant paradigm in the JavaScript world.

I guess that's not the most exciting answer, but it's just like holding on for dear life trying to follow what's going on these days. Up until now, we have focused probably 95% of our Shiny efforts on people who don't want to extend their web apps with custom JavaScripts. But, more and more I'm talking to people in the community who maybe started with this mentality, but have just so enjoyed the process of building web applications that they've taken the time to learn JavaScript and are now looking how to merge technologies like React with what they can already do in Shiny. Besides just having HTML widgets, I am thinking about how can we kind of leverage some of the cool stuff that's happening in React. How can we in a deeper way integrate React and maybe some similar technologies with Shiny?

****

JBR: *One more question: what advice would you give to computer science grads who would like to become R developers? Any ideas on how they can shorten their learning curve or what should they do?*

**Joe Cheng:** I had a pretty hard time learning R, because at the time a lot of the books were geared towards statisticians who were learning their first programming languages, not programmers who were coming from another direction. At the time, I found the O'Reilly book [R In A Nutshell](https://www.amazon.com/Nutshell-Desktop-Quick-Reference-OReilly/dp/144931208X/ref=sr_1_1?s=books&ie=UTF8&qid=1481843574&sr=1-1&keywords=r+in+a+nutshell) really helpful, because it kind of just laid out the facts and didn't talk that much about the statistics: just the facts about the language and the basic libraries. But, that was seven years ago or whatever, so I don't know if that is the best book at this point, but it certainly was helpful for me. Definitely, the second R book that a CS grad should read through is Hadley Wickham's [Advanced R](http://adv-r.had.co.nz/).

I think the most important recommendation I would make is to go into R with a very open mind and instead of just drawing contrasts with whatever language you're used to and dismissing R, approach it with a little bit of humility. Be open to the possibility that some things are different because statisticians with an extraordinary amount of domain knowledge made a decision that actually makes sense in the context of this domain.

I have to tell you, whenever I step out of the Shiny bubble and work on packages that have a more direct kind of statistical application, like Leaflet or d3 Heatmap, it's really humbling to offer up an API to data scientists and statisticians and then have them come back and say, "You've got it all wrong." You think you know what some of these concepts are, but maybe you have no idea of how they actually work in practice and so your tool is useless. They don't usually say it that bluntly, but it's very real that this domain is so specialized. It's not intuitive. If you approach R as if you're dealing with any other ecosystem of programmers, then I think you're going to kind of miss the forest for the trees.

This is digressing a little bit, but have you ever heard of [Chesterton's fence](https://en.wikipedia.org/wiki/Wikipedia:Chesterton%27s_fence)?

****

JBR: *No, I haven't.*

**Joe Cheng:** Okay. There's this parable, I guess. If you come across a fence that's going across a road in the middle of nowhere, your first instinct might be to say, "I can't see why this fence is useful. I'm going to take it down." The point of this parable is that if you don't understand what the fence was for, you're the last person that should be taking it down. Only once you can say what use this thing has, then maybe you're in a position to make a decision about whether it should change. I think a lot of R is like that. In order to really appreciate some of the decisions that were made, you can't come to it with a lot of preconceived notions, especially if you yourself don't have a background in doing a lot of interactive data manipulation and analysis.

****

JBR: *Well, thank you, Joe. This was marvelous.*


