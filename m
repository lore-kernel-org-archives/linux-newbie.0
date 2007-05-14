From: "Learning Linux" <learninglinux4@gmail.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Mon, 14 May 2007 12:46:26 +0530
Message-ID: <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>
	 <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=dYkwdfDJ6OVdRxMt2363q/y8+6oSnNMwqrImH4ipF98eR6Bt18tncBN5/eNjMxEoG0W04Xn5WvZrRCXrgmtcEeUh8CnICD5S5c4MWgbUfZajQk3q+hpqe2pTio0sqOVoInuasHCthEQU09Uew7fCNmY2NJtYoFEjqD57GbLG6XU=
In-Reply-To: <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: pradeep singh <2500.pradeep@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

> > I have a very basic doubt here ... what makes it impossible to sleep
> > in an ISR? I mean, I know that the kernel preemption is disabled and
> > the kernel will panic, but I could not understand why?
>
> Because the interrupt which you are serving in the
> ISR has been masked to avoid preemption(
> true for maskable inetrrupts ).Any locks you are holding in ISR are now with
> you solely. So, if you try to sleep you take the locks you untill you are
> rescheduled and complete. This may lead to
> a deadlock for the lock resource.

Ok, but how about an ISR, that does not take any locks? Why can't we
sleep in SUCH an ISR?

AFAIK, taking a lock disables kernel preemption, and hence it is not
allowed to sleep. So I think my question would boil down to why is
sleeping not allowed when the kernel preemption is disabled.

LL
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
