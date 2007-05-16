From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Thu, 17 May 2007 07:17:36 +0800
Message-ID: <a2ebde260705161617u260bcb55i8c4a56e4a4875954@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <a2ebde260705151549r2762ac1fk9a68db7b903e6525@mail.gmail.com>
	 <464B2155.8040005@cfl.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Czf5fwzmwrluDQd9ebYTOOHnJItH5M1eoKdIvj1w5SbqX58Te50KuHo1r/AreUtbuAndjabKJ9V5ecKQ3IGAeKqPdxFGIgT6/5H+iwznYAtReFLbdt3qAe4GfPSXsWDvwrY5Ug+Tz6xRNR9zTz6xLQDDsD2BwL3atI3LRQW3bnE=
In-Reply-To: <464B2155.8040005@cfl.rr.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Phillip Susi <psusi@cfl.rr.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

OK. I think the gap between you and me is the definition of term
*context*. If you go to Linux Kernel Development, 2nd Edition (ISBN
0-672-32720-1), Page 6, then you will read the following:

....  in Linux, ... each processor is doing one of three things at any
given moment:

1. In kernel-space, in process context, ...
2. In kernel-space, in interrupt context, not associated with a process, ...
3. In user-space ...

This list is inclusive. ...


Maybe you prefer other terminology system, but I do like the above
definition given by Robert Love. So maybe in your system *context*
mean something at hardware level and you say ISR is in process
context, but I think it is more like a logical level and agree with
Rovert's definition.

And in hardware level, Robert's *context* definition also mean
something specific, that I started to be aware of. That is, *in the
same context* means a kernel-code is triggered by a user-space code.
*in different context* means a kernel-code is triggered by an external
interrupt source other than a user-space code.

Context has nothing to do with whether an ISR borrow any data
structure of a process, instead, its something logical or related to
causality.



2007/5/16, Phillip Susi <psusi@cfl.rr.com>:
> Dong Feng wrote:
> > If what you say were true, then an ISR would be running in the same
> > context as the interrupted process.
>
> Yes, and it is, as others have said in this thread, which is a good
> reason why ISRs can't sleep.
>
> > But please check any article or
> > book, it will say ISR running in different context from any process.
> > So ISR is considered in its own context, although it shares a lot of
> > things with the interrupted process. I would only say *context* is a
> > higher-level logical concept.
>
> Depends on which book or article you are reading I suppose.  The
> generally accepted and often used thought is that ISRs technically are
> running in the context of the interrupted process, but because that
> context is unknown and therefore should not be used, it is often said
> that they run in no context, or outside of any context.  Sometimes
> people then assume that because they run outside of any ( particular )
> process context, they must be in their own context, but this is a mistake.
>
>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
