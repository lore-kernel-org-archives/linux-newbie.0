From: Marcus Furlong <furlongm@hotmail.com>
Subject: Re: Running X programs from bash w/ framebuffer
Date: Thu, 10 Mar 2005 06:35:55 +0200
Message-ID: <d0oiqn$rqg$1@sea.gmane.org>
References: <41E439F4.6030404@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Jeremy Abbott wrote:

> This may seem really newbieish, but I have been running Gentoo for quite
> some time now.
> 
> Is it possible to forego X altogether, and run things like firefox,
> thunderbird, etc through the framebuffer from a bashprompt, rather than
> starting X and going from there.  The reason I ask, is I hate the bloat

http://quingy.sf.net

qingy is a replacement of getty. Written in C, it uses DirectFB to provide a
fast, nice GUI without the overhead of the X Windows System. It allows the
user to log in and start the session of his choice (text console, gnome,
kde, wmaker, ...).

emerge -a quingy
emerge --newuse world

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
