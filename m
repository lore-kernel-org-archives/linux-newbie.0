From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Need for a new spinlock API?
Date: Thu, 22 Mar 2007 06:42:38 +0530
Message-ID: <b115cb5f0703211812x6464f695ha1b3d4e2c58ba364@mail.gmail.com>
References: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com>
	 <1174462330.1158.113.camel@laptopd505.fenrus.org>
	 <623132dc0703211159n3781bfbdu6ffd43743a6fe377@mail.gmail.com>
	 <1174511009.1158.150.camel@laptopd505.fenrus.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ZYUvFQZ5ziwL3wGxK1NA/fWJdeoIyWoWoNKvENClk40nWRoJGDAkl/WDHdFO/Gt1GcChiaIZNHEvtiMSdFNSFbvxVMWntEKvWCUDDj0aBm9f2jxsA7PJO3T36ppP/PyIy5fnnBJlzEIMXZkA27OzeaBU9bdoYKC+bxQlMUqIAJ4=
In-Reply-To: <1174511009.1158.150.camel@laptopd505.fenrus.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Arjan van de Ven <arjan@infradead.org>
Cc: anubhav rakshit <anubhavrocks@gmail.com>, kernel mail <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi Arjan,

> > > > We often have a case where a driver wants to access its data structure
> > > > in process context as well as in interrupt context (in its ISR). In
> > > > such scenarios, we generally use spin_lock_irqsave() to grab the lock
> > > > as well as disable all the local interrupts. AFAIK, disabling of local
> > > > interrupts is required so as to avoid running your ISR (which needs
> > > > the lock) while process context is holding the lock. However, this
> > > > also disables any other ISRs (which DO NOT need the lock) on the local
> > > > processor.
> > > >
> > > > Isn't this sub-optimal? Shouldn't there be a finer grained locking?
> > >
> > > actually it's optimal.
> > how is it optimal,when all  you require is to disable just one particular IRQ?
>
> because if you don't disable all you increase hold times, which
> increases contention. Contention is BAD.

Do you mean the lock hold time here? How is lock hold time affected by
whether we disable just one or all the irqs?

Secondly, is it possible AT ALL to disable a particular irq at the local CPU?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
