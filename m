From: "sandeep lahane" <sandeep.lahane@gmail.com>
Subject: Re: Why can't an ISR cause a page fault?
Date: Tue, 23 Jan 2007 16:49:37 +0530
Message-ID: <2d51cbf80701230319g791925bew936d8be1008b2aa4@mail.gmail.com>
References: <292693080701230005i4d4523a3g3cb3be819608a9b4@mail.gmail.com>
	 <2d51cbf80701230239q2809860bh7589feda903fb5bd@mail.gmail.com>
	 <292693080701230246m2b1ab5c3w798959a2180d925d@mail.gmail.com>
	 <2d51cbf80701230251h652d7a5by22d81879952e73dc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2d51cbf80701230251h652d7a5by22d81879952e73dc@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

On 1/23/07, sandeep lahane <sandeep.lahane@gmail.com> wrote:
> On 1/23/07, Daniel Rodrick <daniel.rodrick@gmail.com> wrote:
> > > > Hi,
> > > >
> > > > I read that ISRs can never cause a page fault. Why is that? What would
> > > > happen if an ISR tries to use a data item that has been swapped out?
> >
> > > Just a guess, when page fault occurs, page fault handler is invoked
> > > which is another ISR. This page fault handler handler does the
> > > required stuff like bringing the data in to memory etc. This
> > > introduces delays , and delayes are not supposed to be there in ISR. I
> > > think when a process causes a page fault, it may sleep (and ive away
> > > cpu to others ! ) till the page is made availabe in memory. But I
> > > think, I am just listing out the reasons why ISR 'should not' cause
> > > page fault.
> > >
> >
> > Okay let me rephrase my question:
> >
> > 1) I read that an ISR cannot cause a page fault. Is the statement true?
> >
> > 2) In the case it is true, how are situations like this handled : an
> > ISR tries to use a data item that has been swapped out?
> >
> > 3) I have the following argument that convinces me that the statement
> > is false. When an ISR causes a page fault, the page fault handler is
> > invoked since its priority is higher. When it finishes the control
> > goes back to ISR, just like the normal case of nested ISR execution.
> > Hence an ISR can cause page fault. Is any thing wrong with this
> > argument?
> >
> > Thanks,
> >
> > Dan
> >
>
>
> The ISR code itself and the variables it talks to are locked
> so that page faults in an ISR can't occur (and possibly result in
> trashing a hard drive). Unfortunately the stack segment is not
> locked. It is rather unlikely that the stack would be paged out but it
> COULD happen. The only way to deal with this is to either have lots of
> RAM so paging isn't needed, or use the <crt0.h> to lock everything!
> This, of course, effectively disables paging generally, which is
> probably not a good idea for commercial code.
>
>
> Regards,
> Sandeep.
>

I think this should clear all confusions, apologies if this is too big
or irrelevant and doesnt make much sense, which I think is not the
case.

Note : The following explaination assumes that the isr and the
interrupted proceess share the stack, afaik isr can seperate stacks,
which is configurable, but I dont know how this explaination holds
good when the isr is having a seperate stack.

1. Why you are not allowed to sleep in an interrupt handler?Was this a
design decision or is there a fundamental reason that makes sleeping
interrupt handlers simply impossible? What about the page fault
handler - it (probably) sleeps when it has to swap in a page, why is
it possible to sleep for the page fault handler and not for an
interrupt handler?

-> Sleeping is implemented using scheduler. Scheduler only schedules
tasks (design decision to keep it simple). So you need a task context
to sleep in. Interrupt is not tied to a process (and uses stack of
whichever happens to be scheduled ) so it can't use the context
because it does not have to be in a sane state.

2. But why.....

You cannot sleep in an interrupt handler because interrupts do not have
a backing process context, and thus there is nothing to reschedule
back into. In other words, interrupt handlers are not associated with
a task, so there is nothing to "put to sleep" and (more importantly)
"nothing to wake up". They must run atomically.
The reason the page fault handler can sleep is that it is invoked only
by code that is running in process context. Because the kernel's own
memory is not pagable, only user-space memory accesses can result in a
page fault. Thus, only a few certain places (such as calls to
copy_{to,from}_user()) can cause a page fault within the kernel. Those
places must all be made by code that can sleep (i.e., process context,
no locks, etc).

3. However can't you consider the interrupt handler as running in the
context of the task A, that was incidentially running when the
interrupt occurred (the interrupt handler
uses the stack of task A, this is not always true, isr might have a
seperate stack). So wouldn't it conceptually be conceivable to put the
interrupt handler to sleep by saving the current CPU state (register
contents) with task A, putting task A asleep, and resume processing of
the interrupt once task A is rescheduled by the scheduler?
Of course this could be considered 'unfair' with respect to task A, in
that the interrupt has no relation to task A besides the fact that
they happend to be on the same CPU at the same time. But I am
interested in learning if there is any fundamental reason against
sleeping in an interrupt handler.

->There are bigger problems. The process is in an arbitrary state when
interrupt is invoked. So it might hold arbitrary spinlocks. It might
be on arbitrary wait_queues. Possibly other funny things might happen.
These either disallow sleeping or could interact badly with the
interrupt trying to sleep.

This is part of conversation happened on the same list before few
years, not verbatim though.
-- 

Regards,
Sandeep.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
