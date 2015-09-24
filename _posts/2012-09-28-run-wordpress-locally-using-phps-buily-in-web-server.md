---
layout: post
title:  "Run Wordpress Locally Using PHP's Built-In Web Server"
date:   2012-09-28 13:09
categories: wordpress php web server development
---

Getting up and running for PHP development can be a rather pain in the butt sometimes. Possibly the biggest culprit being the web server that needs to handle requests. Even after everything is working properly you are still mucking with virtual hosts, etc. Finally, it doesn't have to be this way!


PHP 5.4 Built-in Server
============

PHP 5.4 introduced a much needed feature. The ability to run a basic web server for development purposes via the command line. It goes like this:

{% highlight bash %}
$ php -S localhost:port
{% endhighlight %}

You can pass an optional script path which will act as a _router_ and all requests will pass through this script before continuing. This allows you to manipulate the request before it gets sent to your application.

Installing PHP 5.4
-----

Mac OSX doesn't come pre-installed with PHP 5.4, so you'll have to manage installing it before you can do this. One of the following methods will definitely work for you:

- via Homebrew
{% highlight bash %}
$ brew tap josegonzalez/homebrew-php
$ brew install php54
{% endhighlight %}
- via [php-osx](http://php-osx.liip.ch/)
- via [php-build](https://github.com/CHH/php-build)

Make sure you properly adjust your `$PATH` accordingly.


Getting Wordpress to use it
=============

Below is a router that will allow you to fire-up a Wordpress installation using this built-in development server.

{% gist 3801087 router.php %}

Drop this script in your project, and off you go!

{% highlight bash %}
$ php -S localhost:9393 -t /path/to/wordpress router.php
{% endhighlight %}

_If you placed `router.php` inside your wordpress directory, don't bother with the `-t` flag. That is to specify an alternative document root._
