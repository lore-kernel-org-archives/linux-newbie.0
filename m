From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: switching to debian (... and installing the NVIDIA   GeForce4)
Date: Thu, 25 Mar 2004 20:36:04 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403252036.04758.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20040325072647.01f7bde8@celine> <5.1.0.14.1.20040325081101.01f76d88@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040325081101.01f76d88@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Thursday 25 March 2004 17:40, Ray Olszewski wrote:
> At 05:07 PM 3/25/2004 +0100, pa3gcu wrote:
> >On Thursday 25 March 2004 16:42, Ray Olszewski wrote:
> > > In fact, it should read
> > >
> > >          EXTRAVERSION =-k7
> > >
> > > (without the space before the hyphen).
> >
> >No sorry Ray its not a typo, its how it should be a as matter of fact,
> >It possably works without a white space but AFAIK white spaces are
> > ignored.
> >
> >If for example you look into any Topdir Makefile you will note that lines
> > 1, 2, and 3 have white spaces after the =  and the 4th line should comply
> > as well or so i was once told.
>
> Have you tried it, though? I recall actually having that problem once,
> though quite a few years ago (that is, back whenever it was I first used
> the EXTRAVERSION setting with my kernels). The prior three lines did get
> any spaces cleaned out, but as I recall, EXTRAVERSION was handled
> differently.

I always use that method, yes it works and whats more i always use it that 
way, i use it that way because i was told to do so many moons ago when the 
EXTRAVERTION was first introduced into the Makefile, i was told that by its 
authour.

> I specifically saw the problem as an inability to load modules, because the
> embedded space in the modules directory didn't work with the Debian init
> script that loads modules.

Now that i cant understand, anyway strange things can and i suppose will 
always happen.

>
> It's been a long time since I saw this problem, though, and it is certainly
> possible that my memory is wrong, or that Makefile processing has changed
> along the way ... and I'm unwilling to take the time to compile a kernel
> just to see what happens. I did look, though, and confirmed that all my
> kernel Makefile entries for EXTRAVERSION follow the form I suggest.

Like i said they both work.

>
> In any case, I don't actually know if this has anything to do with
> Karthik's problem, whichever of us is correct.

No i dont think so as you can read in my reply to that mail later.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
