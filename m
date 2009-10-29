From: Jonathan Corbet <corbet@lwn.net>
Subject: Re: Questions about linux scheduler
Date: Thu, 29 Oct 2009 14:05:42 -0600
Message-ID: <20091029140542.21970ff2@bike.lwn.net>
References: <292693080910290808x69f25f6fgc49cb646c1c00466@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080910290808x69f25f6fgc49cb646c1c00466@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>, linux-kernel@vger.kernel.org

Hi, Daniel,

I'm not a scheduler expert by any stretch, but I can try to play one on
the net...

> I'm following the Robert Love's book and am trying to understand the
> Linux O(1) scheduler. 

Note that the O(1) scheduler is no more; it was replaced by the
completely fair scheduler in 2.6.23.  For the purposes of your
questions things haven't changed a lot, but it's completely different
internally.

> So here is my understanding. The kernel allows
> the applications to specify two types of priorities
> 
> * Realtime Priorities: Range from 0 to 99
> * Non-realtime priorities: Also called "nice" values range from -20 to +19.

You're really talking about different scheduling classes.  There are
two realtime classes (FIFO and RR), both of which trump the interactive
class (SCHED_OTHER).

> * A total of 140 priorities (100 RT + 40 non-RT) - these priorities
> are static - do not change over time.

Sort of, but realtime priorities are really an entirely different scale.

> * A lower priority process will run only if there are no runnable
> processes in priority above it - this automatically means that all RT
> processes get to run before non-RT processes.

That is true for the realtime classes.  SCHED_OTHER will give
lower-priority processes a bit of time even in the presence of runnable
high-priority processes.

>  * tasks on the same priority level are scheduled round robin

SCHED_RR does that, SCHED_FIFO does not.  SCHED_OTHER is
fairness-based, which has RR-like characteristics but is not quite the
same.

Hope that helps,

jon

Jonathan Corbet / LWN.net / corbet@lwn.net
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
