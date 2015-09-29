---
layout: post
title:  "Using Composer Globally"
date:   2013-02-08 11:54
categories: php composer development
---

<div class="container">
  <div class="col nine offset-three" markdown="1">

__Update (10/29/2013):__ You can now install packages globally! It looks like this: `composer global require package-name:version`

Package managers are great. One of the great things about `npm -g` or `gem` is the ability to expose bin scripts to provide utilities for developers.

> In [Composer](https://github.com/composer/composer), currently there is [no support for this](https://github.com/composer/composer/issues/55).

I wrote a little script that will set up a Composer location to be used globally. It's super easy to use:

  </div>
</div>

<div class="container">
  <div class="col twelve" markdown="1">
{% highlight bash %}
$ curl https://gist.github.com/tamagokun/4242494/raw/3325cac939660ca2e7962185cfb42ee4f361b83e/global_composer.sh | sh
Sweet.
Be sure to add $HOME/.composer/bin to your PATH
{% endhighlight %}
  </div>
</div>

<div class="container">
  <div class="col nine offset-three" markdown="1">
Require a package:
  </div>
</div>

<div class="container">
  <div class="col twelve" markdown="1">

{% highlight bash %}
$ cd ~/.composer && composer require package-name:version
{% endhighlight %}

  </div>
</div>

<div class="container">
  <div class="col nine offset-three" markdown="1">
Here is the script source:
  </div>
</div>

<div class="container">
  <div class="col twelve" markdown="1">
{% gist 4242494 %}
  </div>
</div>
