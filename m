From: "Raseel Bhagat" <raseelbhagat@gmail.com>
Subject: Re: Why is Linux not RTOS?
Date: Thu, 5 Apr 2007 14:31:00 +0530
Message-ID: <f68850780704050201k2fc85b9erb29e715d848cea48@mail.gmail.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
	 <024901c77752$06e6a170$59c8a8c0@SAGGITARIUS>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=W7XFYk7C4bW9Pd2jz7BmAEk+YxmWAyYeQiRlEv5W/mwv3FcCibSSNAY8JpQ8VFPC5H7UaRQLBFZGUuVCgwX2cTl2ayw+KFpTve2dVYHx+jcHogMz3ArCACEUSQoqefTauS1ByqNKdXb8LhQ6cldd8essLjo2kG5pptOlFkiFk2E=
In-Reply-To: <024901c77752$06e6a170$59c8a8c0@SAGGITARIUS>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>
Cc: linux newbie <linux-newbie@vger.kernel.org>

Hi

On 4/5/07, Pradeep <pradeep.annavarapu@moschip.com> wrote:
>
> > Hi,
> >
> > Why is Linux kernel considered a (hard) realtime OS? I already
>
> Linux kernel is never considered a real time OS.
> A real time OS should be predictable.The general linux kernel is not
> predictable because of many reasons.

To ellaborate more, any RTOS HAS TO be deterministic , i.e, it should
have a deterministic latecy, a predictable jitter which will never
cross its threshold even during heavy loads.


> > What stops us from classifying kernel as hard RTOS? Is it because at
>
> An RTOS is just a facilitator to build Real time systems. A Real time system
> developer should analyse a RTOS wether is will be useful for his system.
> If some body is holding spin lock and making it non-preemptive its a bad
> design. So even a RTOS linux has spin locks. Its the designer who should
> take care.

Basically , a GPOS (General Purpose OS) is build to optimize the
average-response time. Whereas, an RTOS is designed to optimize the
worst-case response time. Hence non-RT tasks, in case of an RTOS , are
given the least prioirity where as the deadlines for RT tasks are not
to be crossed under ANY circumstances.

Thanks,
Raseel.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
