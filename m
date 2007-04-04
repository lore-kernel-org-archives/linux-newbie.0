From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Re: Why is Linux not RTOS?
Date: Wed, 4 Apr 2007 18:35:23 +0530
Message-ID: <7783925d0704040605s4590d421y39ae5b13a020a8a@mail.gmail.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
	 <alpine.DEB.0.83.0704040858070.28216@sigma.j-a-k-j.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=jYS9PlGfierFwdf9wRvgdtwEixvkJwU3z6FR2wwWhzCuFPbXx2rniX9e2LuUyzbWh2NZSJnLNpM9Q5ZxjjBtDnQQReC6KptN9zYJMxK0d9OKS0h6t+grTks1lBGr6yRR6lG1CFEmZXWaopsO/5IBUxzrzwNUsk2TX43vWh1vB3s=
In-Reply-To: <alpine.DEB.0.83.0704040858070.28216@sigma.j-a-k-j.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "John Anthony Kazos Jr." <jakj@j-a-k-j.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

On 4/4/07, John Anthony Kazos Jr. <jakj@j-a-k-j.com> wrote:
> > Why is Linux kernel considered a (hard) realtime OS? I already
> > understand the basic reason is that the linux kernel does not
> > guarantee that a task will be completed on time. But I would
> > appreciate answers in terms of more of kernel jargons.
> >
> > What stops us from classifying kernel as hard RTOS? Is it because at
> > times the kernel is non-preemptive (for e.g. while holding spinlocks)?
> > Has it got something to do with interrupt latency / scheduling latency
> > etc?
> >
> > Is the behaviour of the kernel (when it is preemptive) similar to hard
> > real time OS ??
>
> From what I've read, the preemption in the kernel is mostly a hack because
> nobody's found a way to reduce the latency of certain long functions yet.
>
> And there is a separate RTOS version called Real-Time Linux or RTL...I
> think. Try googling. It's used in life-support machinery and so forth.

Yes, I'm aware that there are quite a lot of different patches /
projects aimed at giving better RTOS behaviour ... but my question was
aimed at vanilla kernel.

Thanks,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
