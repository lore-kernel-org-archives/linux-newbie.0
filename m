From: Jim Reimer <wa5rrh@arrl.net>
Subject: Re: two questions
Date: Sat, 10 Aug 2002 11:23:23 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208101619.g7AGJIvU015172@franklin.icok.net>
References: <200208101521.54579.adam@luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208101521.54579.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

On Saturday 10 August 2002 00:51 am, Adam Luchjenbroers wrote:
> 1) How do I manually fsck my root filesystem?
>
> 2) Where can I find a program to convert windows .ICO files into a more
> open file format (ie. PNG).
>

Regarding second question:  netpbm from http://sourceforge.net

netpbm is a group of graphics-manipulation programs (you may
already have it on your system) that will convert from just
about any graphics file format (including Windows icon) to
any other format.  It's a two-step process, first convert
from the source format to netpbm's file format, then convert
that to whatever you want.  Like this:

winicontoppm winiconfile.ico > temp
ppmtogif temp > winiconfile.gif
(or)
pnmtopng temp > winiconfile.png

-jdr-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
