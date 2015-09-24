---
layout: post
title:  "A Slow Move To Cloud Stuff"
date:   2012-07-16 16:13
categories: server cloud hosting github vps
---

Since 2008 I have been happily using Slicehost for my virtual server needs. At the time, they were cheap and they have great appeal for developer types. Specifically, you can create a slice with a vanilla install of your linux of choice. This is pretty standard nowadays, but back then you were typically overloaded with Plesk and all sorts of junk.

Recently I have been trying to revamp bills and things like that, and decided it was time to take a look at how much I am spending per month on hosting, and to see if I could reduce that cost at all.


## Current (old) Stuff

Here's a rundown of how I was doing it before:

- **VM Hosting:** Slicehost (512MB slice $38/month)
- **DNS:** Slicehost DNS Manager

All personal and client projects were stored on the Slicehost slice. Mind you, they are all small low-traffic sites, so the 512 size wasn't an issue.

I also ran a copy of Gitlab on my slice, and all of my code for all of my projects was kept there. I enjoyed using Github much much more than Gitlab so was thinking of ways I could move my opensource and private projects over to Github. When I realized that I could split off all of my client projects to Heroku, I was sold. I technically don't even NEED a VPS at this point because I don't use it for anything, but I would like something I can hack around on that has afast network connection.

## New (current) Stuff

So, introducing the new stuffs:

- **VM Hosting:** [prgmr.com](http://prgmr.com/) (256MB $8/month)
- **DNS:** [Cloudflare](http://www.cloudflare.com/) (free)
- **Github:** micro $7/month (This covers repo hosting for all of my projects as well as hosting this blog.)
- **Client Sites:** [Heroku](http://heroku.com/) (free)

There are two really awesome things coming out of this switch.

1. I am saving money!! I now spend $15 monthly compared to $38.
2. Less worry! Granted I haven't had any issues with Slicehost, but there is less maintanence that I have to deal with since everything is automated on Heroku.

It also looks like Cloudflare is capable of doing some neat things besides providing DNS management, I just haven't had the time to look into it yet.
