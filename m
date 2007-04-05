From: "Pradeep" <pradeep.annavarapu@moschip.com>
Subject: Re: Why is Linux not RTOS?
Date: Thu, 5 Apr 2007 12:44:18 +0530
Message-ID: <024901c77752$06e6a170$59c8a8c0@SAGGITARIUS>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"; reply-type="response"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux newbie <linux-newbie@vger.kernel.org>


> Hi,
>
> Why is Linux kernel considered a (hard) realtime OS? I already

Linux kernel is never considered a real time OS.
A real time OS should be predictable.The general linux kernel is not 
predictable because of many reasons.
A few are it uses virtual memory. when there is virtual memory there will be 
page swaps which are un predictable.
And the linux scheduler is not a deterministic one.
There is a scheduler project which provides a deternistic behaviour to the 
scheduler.This scheduler is called O(1) scheduler.
This gives a constant scheduling latency. This is used in many embedded 
linux to make it a real time OS. Ex: motavista

> understand the basic reason is that the linux kernel does not
> guarantee that a task will be completed on time. But I would
> appreciate answers in terms of more of kernel jargons.
>
> What stops us from classifying kernel as hard RTOS? Is it because at

An RTOS is just a facilitator to build Real time systems. A Real time system 
developer should analyse a RTOS wether is will be useful for his system.
If some body is holding spin lock and making it non-preemptive its a bad 
design. So even a RTOS linux has spin locks. Its the designer who should 
take care.

> times the kernel is non-preemptive (for e.g. while holding spinlocks)?
> Has it got something to do with interrupt latency / scheduling latency
> etc?
>
> Is the behaviour of the kernel (when it is preemptive) similar to hard
> real time OS ??
>
> Thanks,
>
> Rick
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
