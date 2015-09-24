---
layout: post
title:  "New Site, No Database Required"
date:   2011-11-04 15:29
categories: update
---

Part of my job is exploring and researching the web, looking for better ways to do everything. As I stumble upon some quite amazing projects, I always tend to ask myself when I will start contributing, and sharing my thoughts. I already had a blog at the time, but why didn't I use it? Too much effort? Not enough time in a day? I think I may have found the answer.


Shutting down when the day is over
==================================

Most days, when it's 5 o'clock, unless sites are broken, or deadlines MUST be reached, I'm shutting down and heading home. Furthermore this normally means that I am not on a computer until the following day (I can still use my phone). You could say that this might be the ultimate reason that I rarely write blog posts, or take the time to compile my projects or ideas into useable things, but I still thought that there could be another way to get this done.

Staying in the "zone"
======================

You might not have *any* idea of what I am talking about when I refer to the "zone", but if you are a programmer that has to interact with people who don't understand the "zone", then you probably know what I mean when I say that it sucks to be knocked out of it. 

Programming and dealing with large and complex applications takes a lot of brain power, concentration, and focus. Once you begin to dive into the innards of something complex, there are usually at this point, a plethora of thoughts at the very tips of your brain, constantly being used to be able to code and understand existing code. Trying to compose a Wordpress article would most certainly take me out of my zone entirely, so I knew that browser-based CMS tools wouldn't be a proper solution.

Hacker blogs
============

Over the course of the year (and possibly a little of last year), I started seeing lots of blogging engines cropping up around the Internet that didn't require a database. Articles were flat file, and written in Markdown. When you were ready to publish an article, it was as easy as pushing code to a repository. 

At that time, my main thoughts were probably, "Wait? What about resizing images? Wouldn't that suck?". I didn't realize how incredibly awesome the concept of publishing content using your very own developer tools (i.e. TextMate, Vim, Terminal) was. 

More recently, I decided to run a little test to see how easy it was to actually write something using Markdown. To my surprise, it was very easy! And I didn't feel like I was getting knocked out of my zone. I didn't have to switch applications, or even direct my eyes to a separate monitor. Cropping and resizing images was also a piece of cake once I got the hang of using Preview. At this point I decided that I was going to transform Ripeworks into a databaseless blogging engine.

The solution
============

I setup 2 contenders, [Toto](https://github.com/cloudhead/toto) and [Octopress](http://octopress.org/). I also kept reference of a setup of a chameleon blog using Sinatra, since I really really wanted to play with the ability to apply custom stylesheets to a specific article. Right away I realized that Toto and Octopress wouldn't really allow the content structure I wanted to be able to do this, so I decided to go custom.

It was surprising easy to grab some ideas from Toto and Octopress, whip up a quick prototype in Sinatra, and before I knew it, I was already doing styles for my site. All of my templating is done with [Slim](http://slim-lang.com/), and CSS couldn't be easier with [Compass](http://compass-style.org/). The one last feature I wanted was halfway decent code highlighting since I love to post snippets, so I actually ported the Octopress plugin for code highlighting into my application. It was all extremely easy to do, and fast.

But will it work?
=================

Who knows, I might find out that it still doesn't ease my ability to publish online, but for now, it seems to be working. And look! I just wrote this rather lengthy article in the matter of a few minutes! Hopefully my next article will get into some custom styles.

I am also going to try and clean up this project and put the code into Github if anyone else is interested in it.
