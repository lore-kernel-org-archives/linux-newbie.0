From: Ulrich =?ISO-8859-15?Q?F=FCrst?= <heimwill@compuserve.de>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Wed, 12 Jan 2005 08:50:50 +0100
Message-ID: <20050112085050.39aec35f@sarge>
References: <41E439F4.6030404@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41E439F4.6030404@comcast.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Jeremy Abbott <jkbullfrog@comcast.net> wrote: 
> This may seem really newbieish, but I have been running Gentoo for
> quite some time now. 
> 
> Is it possible to forego X altogether, and run things like firefox, 
> thunderbird, etc through the framebuffer from a bashprompt, rather
> than starting X and going from there.  The reason I ask, is I hate the
> bloat of Gnome and KDE, and don't have the time to learn to configure

You can start your programs from the console with X and without
KDE/Gnome by typing:
$ xinit /usr/bin/firefox -- :0
or
$ xinit /usr/bin/oowriter -- :1

But I don't know exactly what you have to install (of X I mean). I'd
think if you have fvwm installed to get used to it, there should be
everything you need. 

hth

Ulrich
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
