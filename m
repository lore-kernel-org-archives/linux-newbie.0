From: "Pharaoh ." <pharaoh137@gmail.com>
Subject: Re: Why is Linux not RTOS?
Date: Thu, 5 Apr 2007 14:35:44 +0530
Message-ID: <61445c750704050205n2158cd1cg5c5a354185618f9d@mail.gmail.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
	 <024901c77752$06e6a170$59c8a8c0@SAGGITARIUS>
	 <f68850780704050201k2fc85b9erb29e715d848cea48@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=jfYkj5iB7jjicifwMG3G3JBtO6gKdy4sQSAkiZZK7vqz/d8bKFYPYBw4dx5DelqSW51L6cgXbKTeoQrlfdV+QgivbNBIyX0qSMpZOYQ/j1zqrYivq+GFXNGL9UefXPtDsw8DeKHERWI4BZuadXBPwBjbbZILp0e/kSaYZcYF1Rs=
In-Reply-To: <f68850780704050201k2fc85b9erb29e715d848cea48@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Raseel Bhagat <raseelbhagat@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux newbie <linux-newbie@vger.kernel.org>

On 4/5/07, Raseel Bhagat <raseelbhagat@gmail.com> wrote:
> Hi
>
> On 4/5/07, Pradeep <pradeep.annavarapu@moschip.com> wrote:
> >
> > > Hi,
> > >
> > > Why is Linux kernel considered a (hard) realtime OS? I already
> >
> > Linux kernel is never considered a real time OS.
> > A real time OS should be predictable.The general linux kernel is not
> > predictable because of many reasons.
>
> To ellaborate more, any RTOS HAS TO be deterministic , i.e, it should
> have a deterministic latecy, a predictable jitter which will never
> cross its threshold even during heavy loads.
>
>
> > > What stops us from classifying kernel as hard RTOS? Is it because at
> >
> > An RTOS is just a facilitator to build Real time systems. A Real time
> system
> > developer should analyse a RTOS wether is will be useful for his system.
> > If some body is holding spin lock and making it non-preemptive its a bad
> > design. So even a RTOS linux has spin locks. Its the designer who should
> > take care.
>
> Basically , a GPOS (General Purpose OS) is build to optimize the
> average-response time. Whereas, an RTOS is designed to optimize the
> worst-case response time. Hence non-RT tasks, in case of an RTOS , are
> given the least prioirity where as the deadlines for RT tasks are not
> to be crossed under ANY circumstances.
>
> Thanks,
> Raseel.
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


Why Linux is not RTOS?

It was not designed to be a RTOS, thats why.

-Pharaoh.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
