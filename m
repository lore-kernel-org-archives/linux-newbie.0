From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian install issue
Date: Mon, 07 Oct 2002 19:29:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021007191637.02581690@celine>
References: <20021008010735.8144.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0210072054390.6549-100000@localhost.localdom
 ain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailandnews.com>, linux-newbie <linux-newbie@vger.kernel.org>

There are a couple of things that are unclear from what you wrote.

1. Are you installing using dpkg or apt-get?

2. What version of X are you installing (I know what Woody, the current 
Debian Stable, installs, but I don't remember what Potato was doing or what 
package names it used, and I don't have a Potato system around that has X 
installed)? On Debian systems, X 3.x.x uses CF86Config, and X 4.x.x uses 
XF86Config-4, so I'll assume for now that you are trying to install 3.x.x, 
since you mention XF86Config.

That said ... you should be able to CTRL-C out of wherever you are stuck, 
leaving the install incomplete. You can then clean things up in any of 
several ways ....

1. Use apt-get to remove the X package(s), then complete the install with 
dpkg. Only then, try to install X once again.

2. Force a reconfig of X with the command "dpkg --configure [package name]".

3. Edit XF86Config by hand.

Your problem may not be with configuration, though; it may be that you did 
not install the X server you need. XFree86 3.x.x used separate servers for 
each type of video card, and just picking one during configuration is not 
enough ... you need to have thr right package installed as well. This may 
be why the installer tries and fails to fall back to VGA ... you may not 
have the VGA server installed. The error you report 
("X11TransocketUNIXConnect : can't connect : errno 111") is one you get 
when you try to start an X app but there is no X server running; you might 
want to notice what appears right before that error message.

BTW, there is a monochrome server for X, though I forget its name. From 
what you wrote, it is not clear whether you have a mono video card or just 
a mono monitor; you'd used the mono X server only in the first case.

At 09:18 PM 10/7/02 -0500, James Miller wrote:
>Hello. I have an old machine I use mostly for email and light duty
>browsing - nothing fancy. It is a P 75 with 32 MB RAM 1 MB (forgot which)
>PCI video card and < 1 GB HD. I have an old AOC B&W monitor hooked up to
>it.
>
>I had RH 6.2 on there, but was not very happy with it. I was running fvwm
>for the desktop. A little bit less than standard install took up about 90%
>of the 600 MB HD space. There was a chat prog I ran alot (AIM for Linux)
>that was causing me grief, and I wanted to replace it with GAIM. But I
>needed an updated install of RPM to install any newer version of GAIM. So,
>when push came to shove, I decided I should try some other distro, one
>more geared toward a "survpc" like this one. Thought about Slackware, but
>decided to go with Debian, which I've never used before but have heard
>good reports on visa vis survpc's.
>
>I stuck in a second drive which I made master of the primary and did the
>install of Debian 2.25 (Potato? - sorry if I'm making a mistake on the
>release #: I don't have the disk here at home so am reciting from memory).
>It went fairly uneventfully until I got to configuration of X. Probably I
>entered in the wrong vertical sync rate (I selected 50-70, unfortunately.
>I really have no idea of the refresh rates of this monitor, but I had a
>feeling that a 50-70 rate was going to be too narrow). I am now stuck at
>the X configuration stage of the install. I think Debian is preparing to
>go to VGA mode in order to do the config. It fails with the error
>"X11TransocketUNIXConnect : can't connect : errno 111" - and spits out
>that message about 8 times. Then it goes back to the same point in the
>install where I am asked to configure X. So I'm sort of stuck in a
>vicious circle.
>
>So, for you Debian users: how do I deal with this? Is there a way I can
>complete the install, by going back in the process, for example, and
>reselecting refresh rates? It obviously wants to create an XF86Config file.
>Do I have to just abandon the install and start all over again?
>
>Also: anyone with tips for configuring X for monochrome, please feel free
>to chip in as well.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
