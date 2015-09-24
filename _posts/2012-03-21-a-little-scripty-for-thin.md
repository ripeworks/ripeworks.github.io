---
layout: post
title:  "A Little Scripty For Thin"
date:   2012-03-21 19:48
categories: server thin
---

Since I use rbenv to manage practically all of my Ruby installs, and since sometimes I need to have different apps on different Ruby versions, it's a pain trying to something like Passenger to cooperate. Luckily, there are plenty of great alternatives that are probably even better!

My top 2 being Unicorn and Thin. Now, Unicorn is wonderful, and Github has some wonderful configs for getting a zero downtime setup, but sometimes I just need to quickly throw up a tiny Ruby app using Thin. Below is a quick script to be able to quickly relaunch apps running on Thin.

{% gist 2006928 serve.sh %}

Just plop that in your project root, and whenever you need a restart, it goes like this:

{% highlight bash %}
$ ./serve.sh
{% endhighlight %}
