From: "Dong Feng" <middle.fengdong@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 21:36:24 +0800
Message-ID: <a2ebde260705140636n1428f808s839505825a71df49@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <4648552D.3060808@aitel.hist.no>
	 <366312910705140552o6a507cbbl806f2ad0efc9d90c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=rEFfjNgM5m8tySGRpUCMdWUoVy04dYp8soNqYSdNrEpdHpWdj8Y1dgc+kIkLYdgQFIJDmO5teFRocQvOkUfEv+vIDErYJGHHBIG8xVIcgKB3XvJ5phlqB/15C2kVBs+x3KpsTslaTFSxKi2w19nDKzMsXXsisFoKafk5UBhfYls=
In-Reply-To: <366312910705140552o6a507cbbl806f2ad0efc9d90c@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: pradeep singh <2500.pradeep@gmail.com>
Cc: Helge Hafting <helge.hafting@aitel.hist.no>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

My understanding is as follows.

Whenever the kernel code sleeps, it means the latest process running
in user space will have to wait for the event on which the kernel code
sleeps.

It makes sense for an exception handler to sleep because an exception
handler always serves the latest process running in user space. So a
process can complain nothing for it having to wait for the event on
which the exception handler in its own context sleeps.

It makes no sense for an ISR to sleep because an ISR does not
necessarily serve the latest process (that is, the interrupted
process). It makes no sense having a process wait for the event having
nothing to do with it.

I could be wrong, so please correct me if the understanding is not right.


2007/5/14, pradeep singh <2500.pradeep@gmail.com>:
>
>
> On 5/14/07, Helge Hafting <helge.hafting@aitel.hist.no> wrote:
> > Learning Linux wrote:
> > > I have a very basic doubt here ... what makes it impossible to sleep
> > > in an ISR? I mean, I know that the kernel preemption is disabled and
> > > the kernel will panic, but I could not understand why?
> > First: an ISR is meant to be very quick. It is supposed to do only a
> > minimum of work needed to service the interrupt, then exit.
> > This is important, as other interrupts might be blocked during your ISR.
> > Sleeping is out of question, even a long-running loop in no-no.
> >
> > Second: You don't ever need to sleep in an ISR anyway.
> > Complicated work that might take time or might need to sleep
> > is not supposed to be in an ISR.  If you think you have a need,
> > tell us what you're up to and hopefully someone will explain
> > how do do things properly.
> >
> > When an interrupt happens that needs complicated servicing, the
> > ISR don't do the whole job.  It just acknowledges the interrupt,
> > perhaps does a few things with the device in question, then it
> > exits. It leaves the rest of the work for a bottom half or kernel
> > thread or something like that.  Kernel threads may sleep . . .
>
> Helge, i think the Original poster wants to know why
> *exactly* cannot you sleep?  What prevents me from
> sleeping?
>
> What is this complicated processing which force an ISR not to sleep?
>
> Thanks
>
> > Helge Hafting
> >
> > --
> > To unsubscribe from this list: send an email with
> > "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> > Please read the FAQ at http://kernelnewbies.org/FAQ
> >
> >
>
>
>
> --
> play the game
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
