From: James Miller <jamtat@mailandnews.com>
Subject: Debian install issue
Date: Mon, 7 Oct 2002 21:18:40 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0210072054390.6549-100000@localhost.localdomain>
References: <20021008010735.8144.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021008010735.8144.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Hello. I have an old machine I use mostly for email and light duty 
browsing - nothing fancy. It is a P 75 with 32 MB RAM 1 MB (forgot which) 
PCI video card and < 1 GB HD. I have an old AOC B&W monitor hooked up to 
it.

I had RH 6.2 on there, but was not very happy with it. I was running fvwm 
for the desktop. A little bit less than standard install took up about 90% 
of the 600 MB HD space. There was a chat prog I ran alot (AIM for Linux) 
that was causing me grief, and I wanted to replace it with GAIM. But I 
needed an updated install of RPM to install any newer version of GAIM. So, 
when push came to shove, I decided I should try some other distro, one 
more geared toward a "survpc" like this one. Thought about Slackware, but 
decided to go with Debian, which I've never used before but have heard 
good reports on visa vis survpc's.

I stuck in a second drive which I made master of the primary and did the 
install of Debian 2.25 (Potato? - sorry if I'm making a mistake on the 
release #: I don't have the disk here at home so am reciting from memory). 
It went fairly uneventfully until I got to configuration of X. Probably I 
entered in the wrong vertical sync rate (I selected 50-70, unfortunately. 
I really have no idea of the refresh rates of this monitor, but I had a 
feeling that a 50-70 rate was going to be too narrow). I am now stuck at 
the X configuration stage of the install. I think Debian is preparing to 
go to VGA mode in order to do the config. It fails with the error 
"X11TransocketUNIXConnect : can't connect : errno 111" - and spits out 
that message about 8 times. Then it goes back to the same point in the 
install where I am asked to configure X. So I'm sort of stuck in a 
vicious circle.

So, for you Debian users: how do I deal with this? Is there a way I can 
complete the install, by going back in the process, for example, and 
reselecting refresh rates? It obviously wants to create an XF86Config file. 
Do I have to just abandon the install and start all over again?

Also: anyone with tips for configuring X for monochrome, please feel free 
to chip in as well.

Thanks, James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
