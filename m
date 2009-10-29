From: "Chris Friesen" <cfriesen@nortel.com>
Subject: Re: Questions about linux scheduler
Date: Thu, 29 Oct 2009 13:58:10 -0600
Message-ID: <4AE9F3D2.8030502@nortel.com>
References: <292693080910290808x69f25f6fgc49cb646c1c00466@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080910290808x69f25f6fgc49cb646c1c00466@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>, linux-kernel@vger.kernel.org

On 10/29/2009 09:08 AM, Daniel Rodrick wrote:
> Hi list,
> 
> I'm following the Robert Love's book and am trying to understand the
> Linux O(1) scheduler.

The details of Rob Love's book are now out of date and no longer
applicable to the current scheduler.  Some of the overall concepts are
still applicable though.

> So here is my understanding. The kernel allows
> the applications to specify two types of priorities
> 
> * Realtime Priorities: Range from 0 to 99

Actually, 1 to 99.

> * Non-realtime priorities: Also called "nice" values range from -20 to +19.
> 
> (The above are mutually exclusive)

Correct.

> Over all Scheduling algo
> =================
> * A total of 140 priorities (100 RT + 40 non-RT) - these priorities
> are static - do not change over time.

So far so good.

> * A lower priority process will run only if there are no runnable
> processes in priority above it - this automatically means that all RT
> processes get to run before non-RT processes.

True for RT, not true for non-RT.  In the current scheduler the non-RT
tasks are stored in a time-ordered structure rather than the 40
runqueues that were used before.  A non-RT task will run once it becomes
the most "urgent" task based on its nice level, how much cpu time it
uses, and how long it's been since it ran last relative to other tasks
on the system.

>  * tasks on the same priority level are scheduled round robin

True for RT.  For non-RT, tasks of other nice levels may be interleaved
depending on how much cpu time they've been using.

> Is my above understanding correct? Where my understanding doesn't fit
> is the conncept of dynamic timeslice calculation. IMHO, the dynamic
> timeslice calculation applies only to Non-RT processes, right? Because
> a higher priority RT process should always get to run.

With the new scheduler I think it's fair to say that non-RT tasks don't
really have a fixed "timeslice".  The amount of time they get to run is
determined by their nice level, previous cpu usage, cpu usage of other
tasks, etc.

Chris
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
