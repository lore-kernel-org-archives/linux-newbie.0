From: James Miller <jamtat@mailsnare.net>
Subject: Re: mouse not writing to device file.....
Date: Fri, 13 Feb 2004 07:12:42 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402130706310.13970@debian-emach>
References: <5.1.0.14.1.20040212091018.01f91780@celine>
 <5.1.0.14.1.20040212202502.01faeaa0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040212202502.01faeaa0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 12 Feb 2004, Ray Olszewski wrote:

> At 09:37 AM 2/13/2004 +0530, joy wrote:
> [...]
> >>Do you possibly have gdm (the mouse app for consoles) running? If so,
> >>kill it ... it often interferes with access to the mouse by X.
> >
> >never used gdm..........
>
> Sorry; that was a typo. I meant to write gpm (gdm is an X login manager,
> like xdm, and not what I meant to refer to).

This sounds a little like a problem I had recently (and never solved) that
was somehow related to the 2.6.x kernel.  Does your install perhaps use a
2.6.x kernel?  When I tried adding the 2.6.x kernel from Debian as a boot
option, each time I would boot using that kernel, I would not be able to
control the mouse in X.  The cursor would appear on the screen, but moving
the mouse would have no effect on it.  I did get error messages though -
something to the effect of "pointing device not found"  (don't recall
precisely, since my resolution was to put the matter on the back burner
and go back to a 2.4.x kernel, under which the mouse works fine).  Don't
know if these comments will aid the discussion or help in troubleshooting.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
