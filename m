From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA 
  GeForce4)
Date: Thu, 25 Mar 2004 08:40:18 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040325081101.01f76d88@celine>
References: <5.1.0.14.1.20040325072647.01f7bde8@celine>
 <5.1.0.14.1.20040325072647.01f7bde8@celine> <200403251707.32557.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403251707.32557.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20040325072647.01f7bde8@celine>
 <5.1.0.14.1.20040325072647.01f7bde8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:07 PM 3/25/2004 +0100, pa3gcu wrote:
>On Thursday 25 March 2004 16:42, Ray Olszewski wrote:
> > In fact, it should read
> >
> >          EXTRAVERSION =-k7
> >
> > (without the space before the hyphen).
>
>No sorry Ray its not a typo, its how it should be a as matter of fact,
>It possably works without a white space but AFAIK white spaces are ignored.
>
>If for example you look into any Topdir Makefile you will note that lines 1,
>2, and 3 have white spaces after the =  and the 4th line should comply as
>well or so i was once told.

Have you tried it, though? I recall actually having that problem once, 
though quite a few years ago (that is, back whenever it was I first used 
the EXTRAVERSION setting with my kernels). The prior three lines did get 
any spaces cleaned out, but as I recall, EXTRAVERSION was handled differently.

I specifically saw the problem as an inability to load modules, because the 
embedded space in the modules directory didn't work with the Debian init 
script that loads modules.

It's been a long time since I saw this problem, though, and it is certainly 
possible that my memory is wrong, or that Makefile processing has changed 
along the way ... and I'm unwilling to take the time to compile a kernel 
just to see what happens. I did look, though, and confirmed that all my 
kernel Makefile entries for EXTRAVERSION follow the form I suggest.

In any case, I don't actually know if this has anything to do with 
Karthik's problem, whichever of us is correct.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
