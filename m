From: Rik van Riel <riel@surriel.com>
Subject: Re: why "need_resched" per process?
Date: Mon, 25 Sep 2006 08:11:17 -0400
Message-ID: <4517C765.3040907@surriel.com>
References: <292693080609250243r711cc218p55339fbca1f839ee@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080609250243r711cc218p55339fbca1f839ee@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

Daniel Rodrick wrote:
> Hi,
> 
> I was determining a reason for the need_resched flag to be per process
> rather than being a global variable. I read that the sole reason is
> for performance.
> 
> I could not understand how would having it (need_resched) per process
> result in a better performance? Having it as a global variable in the
> kernel address space would be just a matter of getting the value at a
> known address.
> 
> On the other hand, having a per process copy sure results in
> unecessary memory occupancy.

1) not every CPU needs to reschedule simultaneously, think
    about an 8-cpu core SMP system where one of the current
    tasks needs to reschedule

2) the cacheline with the current task_struct pointer in
    it is probably in the CPU's L2 cache, since it is used
    very frequently - a global variable would probably not
    be in the CPU cache

3) the thread struct (IIRC need_resched lives there, please
    correct me if I misremember) is the first few bytes of a
    task's kernel thread, so it doesn't really take any extra
    memory

-- 
"You don't have to be crazy to do this... but it helps." -- Bob Ross
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
