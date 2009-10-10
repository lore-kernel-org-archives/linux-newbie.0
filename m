From: Frederic Weisbecker <fweisbec@gmail.com>
Subject: Re: preempt_disable() as synchronization tool
Date: Sat, 10 Oct 2009 19:41:59 +0200
Message-ID: <20091010174157.GF5150@nowhere>
References: <292693080910082043v74114d6dvbe3c39f166a59e1b@mail.gmail.com> <edf0f34e0910091900v305ec56u44913503cc8689dd@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=Y4ZC/T+LQDdnTqn6ZxRRxH+Iw92OqhU65kU3/XxV/zw=;
        b=VRW5ywWYUY5h4kwNmRtc1Iq8B223NqtaXO5O5rNXfQZTPvI+hvuPorLL9HG01RNKCy
         2CdF5Okjgza6p3KNrMqHstWM85FzsFqF5sGzYcRdudrI9kdkYY97SAzXNiY/29O+rkCo
         dVllbY5Znt2yAoPY5vi/LmipM5VlPbB0pX/uE=
Content-Disposition: inline
In-Reply-To: <edf0f34e0910091900v305ec56u44913503cc8689dd@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: vinit dhatrak <vinit.dhatrak@gmail.com>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

On Sat, Oct 10, 2009 at 07:30:08AM +0530, vinit dhatrak wrote:
> On Fri, Oct 9, 2009 at 9:13 AM, Daniel Rodrick <daniel.rodrick@gmail.com> wrote:
> > Hi List,
> >
> > I have few queries related to preempt_disable() and would appreciate
> > any answers to it.
> >
> > Firstly, Does preempt_disable() disable the preemption on all the
> > processors or on just the local processor?
> 
> I guess just local processor as the preempt count is maintained in
> current thread_info struct. Correct me if I am wrong here.



Yeah, once you disable the preemption, the current task will stay
on the current cpu until you reenable preemption.

So no other task can be scheduled in this cpu until it's reenabled.

 
> >
> > Secondly, a preempt_disable() a sufficient synchronization technique
> > to guard a data that is shared only among process context code on a
> > Uni-processor? And on SMP?
> 
> It is sufficient only in case of uni-processor (Actually spin_lock
> also just disables preemption in case of uni-processor) 
> >
> > Lastly, is it allowable to schedule / sleep immediately after a call
> > to preempt_disable()?
> 
> No I guess kernel will panic with some error like , "scheduling while
> in Atomic Context".


It won't panic but it won't be happy either :-) You'll get the warning
message but things will continue to go ahead...badly...

In most cases, disabling preemption is done when you need to manipulate
per cpu data and then you don't want to be preempted in the middle and
risk to be scheduled in another cpu, or let another task touch the same
cpu data while you were in the middle of your work. That's why it warns
when you voluntarily schedule while you have disabled preemption, because
you are supposed to be manipulating per cpu data and it's dangerous.


> >
> > Thanks & Best Regards,
> >
> > Dan
> >
> > --
> > To unsubscribe from this list: send an email with
> > "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> > Please read the FAQ at http://kernelnewbies.org/FAQ
> >
> >
> 
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
> 

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
