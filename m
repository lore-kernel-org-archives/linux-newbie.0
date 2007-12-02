From: Linda Walsh <lkml@tlinx.org>
Subject: Re: When does bottom half get to run?
Date: Sat, 01 Dec 2007 22:54:45 -0800
Message-ID: <475256B5.8010401@tlinx.org>
References: <f8b4363d0711071113j746b1663t496237c075e4ddfd@mail.gmail.com>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <f8b4363d0711071113j746b1663t496237c075e4ddfd@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Antino Kim <antinokim@gmail.com>
Cc: linux-newbie@vger.kernel.org

An excellent book addressing this is "Linux Kernel Development" 2nd Ed.
 by Robert Love.

BottomHalf, "per se", (BH structured handlers) went away in 2.5. 
Replacing the previous mechanisms were 3 new types:
softirq, tasklets and work queues.

Softirq's and tasklets get a chance to run after each hardware
interrupt.  That means they will generally have higher priority
than user processes.  They can't "sleep", and need to be quick
about what they do (no long routines -- long routines need to be
scheduled later).

"work queues" are run in "process context" -- generically in a kernel
thread named 'events'.  There is usually one for each cpu.  If your
driver needs alot of processing, it might use it's own "private" work
queue thread.  But these threads are scheduled in the same way as are
user-processes.  The standard kernel thread(s) to process work-queues
run at "nice -5".  If you create your own thread, you can set the
priority as you wish.

So if you do "bottom half" work in a "work queue", it may or may not
be scheduled before other user-process work depending on its scheduling
priorities.

At least this is what I "gather" from my readings in the above
mentioned book.  :-) 

Linda

Antino Kim wrote:
> Hello all,
>
> I was reading into top/bottom half handlers of interrupt processing,
> and I couldn't find an answer to my question;
>
> when does bottom half get to run?
>   
> Actually, more specific question would be, can a task (any process...)
> be running when bottom half is not empty ( i.e., there are works to be
> done on be half some interrupts that happened)?
> Or, does bottom half handler have priority over all tasks (meaning
> that all bottom half work has to be completed before a scheduler gets
> to run one of the ready processes)?
>
> Your feedback would be appreciated. Thank you.
>
>   
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
