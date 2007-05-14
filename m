From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 23:56:15 +0800
Message-ID: <a2ebde260705140856m3917d761xe1067c76fa000b18@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
	 <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
	 <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=m250CN5ffSLz7QHRvpN94cpJVdb1m9C5e9DiyllMzBwLUBoNGIq61UsaMWzu1o9Ll3XQqGETm9oJyho0n0Kkz9/A8mYkIZ4ENucEjKVRQM7ZlaULRbnTZ6J8O+WttsOYwfA34Kgy96MPms7NuZJ2hNfjl6wEMiso1WdIMOK4qyc=
In-Reply-To: <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Bahadir Balban <bahadir.balban@gmail.com>
Cc: Learning Linux <learninglinux4@gmail.com>, pradeep singh <2500.pradeep@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

I agree that the reason an interrupt can not sleep is because an
interrupt is not associated with any context. But I do not agree that
it is specifically because the scheduler can not *resume* the context.

In early version, the ISR always borrow the stack of the currently
running process, so if the kernel design had allowed ISR sleep, it
would automatically be able to implement the context switch naturally.
But ISR sleep has been forbidden from the very beginning.

The reason why kernel design does not allow ISR sleep is because a
process should not be forced to wait for a event that irrelative to
itself. When an exception handler sleep, the event it sleeps on is
always in some sense related to the process incurring that exception.
But if an ISR was allowed to sleep, the event it sleeps on would have
nothing to do with the process being interrupted.

So my understanding is, the forbidden of ISR sleep is not because of
the difficulty to resume context, but because a process should not
wait for irrelative event.


2007/5/14, Bahadir Balban <bahadir.balban@gmail.com>:
> On 5/14/07, Learning Linux <learninglinux4@gmail.com> wrote:
> > Ok, but how about an ISR, that does not take any locks? Why can't we
> > sleep in SUCH an ISR?
> > LL
> > -
>
> The killer reason why you can't sleep in an interrupt is because an
> interrupt is not associated with any context in the first place. What
> is a context, then? It is the state information for a process. This
> includes the kernel and userspace stack pointers, the register set,
> and the page tables for that process. The scheduler has access to all
> this information, to preempt one process and run another. Contrary to
> this, an interrupt, depending on the version of your kernel and arch,
> uses a separate irq stack or the kernel stack of the interrupted
> process. An irq is not a context but merely a temporary execution to
> be concluded asap.
>
> Hope this helps,
> Bahadir
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
