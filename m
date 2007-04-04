From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Need for a new spinlock API?
Date: Wed, 4 Apr 2007 08:56:42 +0530
Message-ID: <b115cb5f0704032026k4f587189g94a7805ff6d93c06@mail.gmail.com>
References: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com>
	 <1174462330.1158.113.camel@laptopd505.fenrus.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=QgNjUuQPu02Rh6wpycr0bmP6P3WcHWiaIsI788wTf5y5kKPjTBfgZJHrhHjsN6zgwV/gqlu6XiAVE7H45jtpxyH2yiDpNhy90xckQCLYjBUjCWpe/jAy8ZBK3N9WgPQCAaTOui8mg2CwbOC0gu05yt/trCUvmOqTxvOXDBV9wDg=
In-Reply-To: <1174462330.1158.113.camel@laptopd505.fenrus.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Arjan van de Ven <arjan@infradead.org>
Cc: kernel mail <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

> > We often have a case where a driver wants to access its data structure
> > in process context as well as in interrupt context (in its ISR). In
> > such scenarios, we generally use spin_lock_irqsave() to grab the lock
> > as well as disable all the local interrupts. AFAIK, disabling of local
> > interrupts is required so as to avoid running your ISR (which needs
> > the lock) while process context is holding the lock. However, this
> > also disables any other ISRs (which DO NOT need the lock) on the local
> > processor.
> >
> > Isn't this sub-optimal? Shouldn't there be a finer grained locking?
>
> actually it's optimal.
> It's fastest to delay the interrupts a little and be done with what you
> want to do under the lock quickly, and THEN take the interrupt. This
> means the lock hold time is short, which significantly reduces
> contention on this lock...

So on the same lines, if a data structure is accessed in both process
context and in a (single) driver ISR, should a driver use
spin_lock_irqsave() to get the lock in ISR? Or will a simple
spin_lock()  suffice?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
