From: "John Anthony Kazos Jr." <jakj@j-a-k-j.com>
Subject: Re: Why is Linux not RTOS?
Date: Wed, 4 Apr 2007 09:00:13 -0400 (EDT)
Message-ID: <alpine.DEB.0.83.0704040858070.28216@sigma.j-a-k-j.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rick Brown <rick.brown.3@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

> Why is Linux kernel considered a (hard) realtime OS? I already
> understand the basic reason is that the linux kernel does not
> guarantee that a task will be completed on time. But I would
> appreciate answers in terms of more of kernel jargons.
> 
> What stops us from classifying kernel as hard RTOS? Is it because at
> times the kernel is non-preemptive (for e.g. while holding spinlocks)?
> Has it got something to do with interrupt latency / scheduling latency
> etc?
> 
> Is the behaviour of the kernel (when it is preemptive) similar to hard
> real time OS ??

From what I've read, the preemption in the kernel is mostly a hack because 
nobody's found a way to reduce the latency of certain long functions yet.

And there is a separate RTOS version called Real-Time Linux or RTL...I 
think. Try googling. It's used in life-support machinery and so forth.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
