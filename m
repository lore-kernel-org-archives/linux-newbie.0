From: Quinn Harris <quinn@nmt.edu>
Subject: Re: Preventing signal interrupt in Kernel module code
Date: 13 Sep 2002 09:56:50 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1031932610.6322.24.camel@quinn.rcn.nmt.edu>
References: <7C078C66B7752B438B88E11E5E20E72E0EF512@GENERAL.farsite.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7C078C66B7752B438B88E11E5E20E72E0EF512@GENERAL.farsite.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Would placing the process waiting for the hardware in an
TASK_UNINTERRUPTIBLE state do what you want?  As far as I understand
it,  the TASK_UNINTERRUPTIBLE state is used to prevent anything from
waking up a process when it is waiting for something it can't be
interrupted by a signal from.  If you call wait_event(wq, condition);
(actually a define in sched.h) the process will be placed in a
TASK_UNINTERRUPTIBLE state until the wait queue is woken up and the
condition is met.  wait_event_interruptible(wq, condition) would allow a
process to be interrupted by a signal.  You might be doing essentially
what wait_event does without using it.  I have seen a bit of kernel code
(I think usually older code) that doesn't used wait_event when it could
to place the current process on a wait queue.


On Fri, 2002-09-13 at 07:54, Kevin Curtis wrote:
> Hi,
> 	I have written a Kernel module and I'm having a small problem with
> signals that I hope someone can steer me through.  The signal in question
> are SIGCHILD, but that is not really relevant.  I must be able to handle any
> signal that the process has enabled.
> 
> 	My module has several wait queues, most of which I can cope with
> being interrupted by a signal (returning EINTR to the process).  However,
> there are some hardware operations that I need to wait for completion of, as
> it would be impossible to restart them or pick up where we left off.  I
> still want to use a wait queue so other things can run.  Is there some
> system call I can make to mask signals until the operation has completed.
> Would I still call signal_pending() to see if one had occurred while they
> were blocked?
> 
> I'm sure the answer is really simple but I haven't stumbled across it yet.
> 
> TIA
> 
> Kevin
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
