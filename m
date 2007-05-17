From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Fri, 18 May 2007 07:50:50 +0800
Message-ID: <a2ebde260705171650v6a8de642rde6e5c61261d9d5e@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
	 <a2ebde260705161617u260bcb55i8c4a56e4a4875954@mail.gmail.com>
	 <464C7DA5.7070008@cfl.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=YyBF+WJ7FPeZBR1DTBQs+o97Wigky2OY5QTTNcKL8NCVGZ0tFAUMP5iIABTiGMgVGBIaqRCpEH5mIPl8+6XC1XYlxH2Wr5pz+f2LqXh7ktTnYwn0eqVQSIIKoZ5eUZCXTIl992WZiQe+msGRQVB+H/DlMkIL4yGz4OBc3PU+DRg=
In-Reply-To: <464C7DA5.7070008@cfl.rr.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Phillip Susi <psusi@cfl.rr.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hi, Phillip,

I have said the gap between you and me is the definition of context.
In Robert's definition, *context* is used in a classification method
and really something in higher-level. And I used that term to explain
why ISR can not sleep.

If you do not like the name, name it your way and substitute term
*context* in my previous mail with what you name. But I believe my
other explaination still hold, right?

And again, if anyway I am forced to use your termnology system, I
would also agree your other point regarding hardware.


2007/5/18, Phillip Susi <psusi@cfl.rr.com>:
> Dong Feng wrote:
> > OK. I think the gap between you and me is the definition of term
> > *context*. If you go to Linux Kernel Development, 2nd Edition (ISBN
> > 0-672-32720-1), Page 6, then you will read the following:
> >
> > ....  in Linux, ... each processor is doing one of three things at any
> > given moment:
> >
> > 1. In kernel-space, in process context, ...
> > 2. In kernel-space, in interrupt context, not associated with a process,
> > ...
> > 3. In user-space ...
> >
> > This list is inclusive. ...
>
> Yep, I disagree with that use of the term, because it is misleading and
> caused your confusion.  The context that the ISR executes in is not
> associated with a _known_ process is more correct.
>
> > Maybe you prefer other terminology system, but I do like the above
> > definition given by Robert Love. So maybe in your system *context*
> > mean something at hardware level and you say ISR is in process
> > context, but I think it is more like a logical level and agree with
> > Rovert's definition.
> >
> > And in hardware level, Robert's *context* definition also mean
> > something specific, that I started to be aware of. That is, *in the
> > same context* means a kernel-code is triggered by a user-space code.
> > *in different context* means a kernel-code is triggered by an external
> > interrupt source other than a user-space code.
>
> Right, and that becomes more clear when you say that the ISR's is
> executing in an indeterminate process context, rather than saying it
> does not have any context at all, or has its own special context.
>
> > Context has nothing to do with whether an ISR borrow any data
> > structure of a process, instead, its something logical or related to
> > causality.
>
> No, it has everything to do with the data structures of the process.
> When you are executing "in the same context" as you put it, as called
> from the user mode code, you know you are using the task structure of
> that process and so you can make use of that structure.  For example,
> you can look at the current uid to decide if you should allow an
> operation to proceed.  When you are in an ISR, there _is_ a task
> structure there, but you shouldn't use it because you don't know which
> task structure it is because you don't know which task you are
> interrupting.  Thus if you look at the current uid in an ISR, you have
> no idea what you will see there and it will change from interrupt to
> interrupt, depending on which task gets interrupted.
>
>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
