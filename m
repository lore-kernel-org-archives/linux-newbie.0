From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Trying to get GUI'ed
Date: 28 Oct 2002 11:10:55 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035803455.28623.76.camel@zebra.vil.ite.mee.com>
References: <20021025.133927.134682184.2.lawson_whitney@juno.com> 
	<200210251914.g9PJER508163@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210251914.g9PJER508163@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

The command prompt you see is actually a software _emulation_ of old
style 'dumb' terminals, what people used as computers before PCs came
about in the 80s.

Although it responds differently to some of the details, there is little
functional difference between an x-term and the virtual terminal you get
before you start X - or any other terminal windowed or otherwise.

Why run X? Well, if all you ever want to do is one task at a time on a
single linear text interface, there is no reason to.

I run X, but most of the work I do is command line. However, I have
several terminal windows open at once and do have multiple different
things going on.

Like most of Linux, it's a matter of preference.

Paul.

On Fri, 2002-10-25 at 20:14, Haines Brown wrote:
> Please allow a naive question.
> 
> When I boot, I arrive at a log in prompt. When I log in, I arrive at
> command prompt for the user.
> 
> You explained how one might start X without a window manager, and I
> that might have some utility. 
> 
> But my question is, is there any difference in functionality between
> running xterm under X and the initial command prompt before starting
> X? Is there any difference in functionality between xterm and the
> command prompt before running X?
> 
> I ask because I'm trying to understand why one would go to the trouble
> to edit ~/.xinitrc to boot to an xterm. Why not stay in the nice
> DOS-like world that exists before X if all one wants to do is to issue
> commands. 
> 
> Haines
> 
>  
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
