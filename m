From: ichi@ihug.co.nz
Subject: Re: more X problems
Date: Thu, 14 Nov 2002 16:23:57 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD3CE1D.3CC4333A@ihug.co.nz>
References: <Pine.LNX.4.44.0211132030330.21708-100000@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailandnews.com>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

James Miller wrote:
> 
> The text file that accompanies the xserver file Steven 
> suggested does, in fact, mention support for the S3Trio 64+ 
> (not V+, as my card is supposed to be). But then, if 
> XFree86 4.2.0 does not support this card, why is it listed 
> in the database of cards one can choose when running xf86config
> under XFree86 4.2.0? Doesn't make much sense to me.

False alarm.  Your card is supported.  I found this 
at http://www.xfree86.org/4.2.0/Status28.html#28 
-----------------------------------------------
4.2.0: Support for the 964 (revisions 0 and 1), 
968, Trio32, Trio64, Trio64, Trio64V+,
-----------------------------------------------

However, I also found (elsewhere) that the framebuffer (fb) 
requires VESA 2.0.  It does not work with VESA 1.2 (which 
is what the Trio ^64+ is).  What effect (if any) this has 
on XFree 4.2.0, I do not know.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
