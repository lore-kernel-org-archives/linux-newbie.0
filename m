From: lawson_whitney@juno.com
Subject: Re: Console fonts and colors
Date: Tue, 8 Oct 2002 16:57:53 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021008.170202.134920296.0.lawson_whitney@juno.com>
References: <Pine.LNX.4.44.0210061300030.16559-100000@linuxDBA.brett.d2g.biz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0210061300030.16559-100000@linuxDBA.brett.d2g.biz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brett@brett.d2g.biz
Cc: linux-newbie@vger.kernel.org

On Sun, 6 Oct 2002, Brett wrote:

> I use SuSE 8.0 and mostly use the KDE UI but find myself more and more
> using the standard text console either by doing a Alt+f2 or not even
> starting X at all.
> What I would like to do is change the color of the font and maybe the font
> it self.
> Is this a hard thing?   If it involves setting up a fonts server or such,

No, only it is hard to understand the doco.  You can mess with the
colors using "setterm -foreground green -background white" for instance.
load a font with "consolechars -f fontfile".
"ls --color=yes" will reset the console attributes when it exits,
though, so you might want to alias that to a wrapper script that resets
the attributes to what you want.  I don't know of a way to _read_ the
console attributes, which is probably why "ls" does the way it does.

look in /usr/lib/kbd/consolefonts to see what fonts you have lying
around.

There are some other funky ones lying around on metalab.unc.edu
(www.ibiblio.org/pub/Linux) somewhere, I think.

> maybe I'll make do with what I have. It's not all that bad really.   My
> goal was to change the font color to green and maybe find a font that I
> could get a few more words on a line.

Easier to get a few more lines on a screen.

> Thanks,
>
> Brett
> ___
> Linux linuxDBA 2.4.18-4GB #1 Wed Mar 27 13:57:05 UTC 2002 i686 unknown
>  12:30pm  up 7 days, 14:17,  3 users,  load average: 2.01, 1.99, 1.92

Lawson

Linux giftie 2.4.13 #1 Tue Oct 30 22:04:20 EST 2001 i586 unknown
  4:56pm  up 11 days, 13:46,  8 users,  load average: 0.05, 0.01, 0.18
---oops---



________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
