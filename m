From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Need for a new spinlock API?
Date: Thu, 22 Mar 2007 10:03:47 +0530
Message-ID: <b115cb5f0703212133v4c8fa36cm528866fef3e3e8f9@mail.gmail.com>
References: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com>
	 <1174462330.1158.113.camel@laptopd505.fenrus.org>
	 <623132dc0703211159n3781bfbdu6ffd43743a6fe377@mail.gmail.com>
	 <1174511009.1158.150.camel@laptopd505.fenrus.org>
	 <b115cb5f0703211812x6464f695ha1b3d4e2c58ba364@mail.gmail.com>
	 <677342AB6AE12D4DB59A9D473F40D74B028E0441@xmb-blr-416.apac.cisco.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=US0YZzZOSHFZSlz7vxCYgT3VXrd+7yz/ExDlzDtp/gjRs6EQBBiHVbKfJiaKutDxiDCwaPKpblgnEOD5yaqDVOI+9cXXRUycoY8da1k3AaVteyZE8Bi9yOqG2MuPl6VKdGzb0c/uceA6bytSjhKw4R3JqzBVIXc/v6owrIvug9g=
In-Reply-To: <677342AB6AE12D4DB59A9D473F40D74B028E0441@xmb-blr-416.apac.cisco.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Ajay Singh (ajaysi)" <ajaysi@cisco.com>
Cc: Arjan van de Ven <arjan@infradead.org>, anubhav rakshit <anubhavrocks@gmail.com>, kernel mail <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On 3/22/07, Ajay Singh (ajaysi) <ajaysi@cisco.com> wrote:
>
>
> > -----Original Message-----
> > From: kernelnewbies-bounce@nl.linux.org
> > [mailto:kernelnewbies-bounce@nl.linux.org] On Behalf Of Rajat Jain
> > Sent: Thursday, March 22, 2007 6:43 AM
> > To: Arjan van de Ven
> > Cc: anubhav rakshit; kernel mail; newbie
> > Subject: Re: Need for a new spinlock API?
> >
> > Hi Arjan,
> >
> > > > > > We often have a case where a driver wants to access its data
> > > > > > structure in process context as well as in interrupt
> > context (in
> > > > > > its ISR). In such scenarios, we generally use
> > > > > > spin_lock_irqsave() to grab the lock as well as
> > disable all the
> > > > > > local interrupts. AFAIK, disabling of local interrupts is
> > > > > > required so as to avoid running your ISR (which needs
> > the lock)
> > > > > > while process context is holding the lock. However, this also
> > > > > > disables any other ISRs (which DO NOT need the lock)
> > on the local processor.
> > > > > >
> > > > > > Isn't this sub-optimal? Shouldn't there be a finer
> > grained locking?
> > > > >
> > > > > actually it's optimal.
> > > > how is it optimal,when all  you require is to disable
> > just one particular IRQ?
> > >
> > > because if you don't disable all you increase hold times, which
> > > increases contention. Contention is BAD.
> >
> > Do you mean the lock hold time here? How is lock hold time
> > affected by whether we disable just one or all the irqs?
>
> The lock hold time may increase if you are in one ISR holding a lock and
> some other interrupt occurs. Processor will now call ISR linked to that
> interrupt (nested interrupts) assuming that priority of newly arrived
> interrupt is more.

Yes, but isn't that desired? Because the newly arrived interrupt is of
higher priority than the currently executing ISR and it doesn't need
any lock at all, shouldn't the new ISR experience a lesser interrupt
latency (executed before the current ISR finishes)?

>
> >
> > Secondly, is it possible AT ALL to disable a particular irq
> > at the local CPU?
>
> It depends on the interrupt controller implementation in h/w. In most
> cases it should be possible. Most of them are quite programmable where
> you can mask out, disable, enable any interrupt line, set the priority
> of the interrupt line.

So we can disable a single interrupt ONLY for the local CPU (leaving
it enabled for other CPUs), right?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
