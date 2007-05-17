From: Phillip Susi <psusi@cfl.rr.com>
Subject: Re: Why can't we sleep in an ISR?
Date: Thu, 17 May 2007 12:07:01 -0400
Message-ID: <464C7DA5.7070008@cfl.rr.com>
References: <9f1dc2cf0705132337k13aa3ccesc575d4550492a24e@mail.gmail.com>  <366312910705140010m78b215a2t1753445e81120288@mail.gmail.com>  <9f1dc2cf0705140016w6d8f44f9wec7586e7879af873@mail.gmail.com>  <7ac1e90c0705140824i54e1c43ela3ab3d89827c0339@mail.gmail.com>  <a <a2ebde260705161617u260bcb55i8c4a56e4a4875954@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <a2ebde260705161617u260bcb55i8c4a56e4a4875954@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dong Feng <middle.fengdong@gmail.com>
Cc: pradeep singh <2500.pradeep@gmail.com>, Bahadir Balban <bahadir.balban@gmail.com>, Learning Linux <learninglinux4@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Dong Feng wrote:
> OK. I think the gap between you and me is the definition of term
> *context*. If you go to Linux Kernel Development, 2nd Edition (ISBN
> 0-672-32720-1), Page 6, then you will read the following:
> 
> ....  in Linux, ... each processor is doing one of three things at any
> given moment:
> 
> 1. In kernel-space, in process context, ...
> 2. In kernel-space, in interrupt context, not associated with a process, 
> ...
> 3. In user-space ...
> 
> This list is inclusive. ...

Yep, I disagree with that use of the term, because it is misleading and 
caused your confusion.  The context that the ISR executes in is not 
associated with a _known_ process is more correct.

> Maybe you prefer other terminology system, but I do like the above
> definition given by Robert Love. So maybe in your system *context*
> mean something at hardware level and you say ISR is in process
> context, but I think it is more like a logical level and agree with
> Rovert's definition.
> 
> And in hardware level, Robert's *context* definition also mean
> something specific, that I started to be aware of. That is, *in the
> same context* means a kernel-code is triggered by a user-space code.
> *in different context* means a kernel-code is triggered by an external
> interrupt source other than a user-space code.

Right, and that becomes more clear when you say that the ISR's is 
executing in an indeterminate process context, rather than saying it 
does not have any context at all, or has its own special context.

> Context has nothing to do with whether an ISR borrow any data
> structure of a process, instead, its something logical or related to
> causality.

No, it has everything to do with the data structures of the process. 
When you are executing "in the same context" as you put it, as called 
from the user mode code, you know you are using the task structure of 
that process and so you can make use of that structure.  For example, 
you can look at the current uid to decide if you should allow an 
operation to proceed.  When you are in an ISR, there _is_ a task 
structure there, but you shouldn't use it because you don't know which 
task structure it is because you don't know which task you are 
interrupting.  Thus if you look at the current uid in an ISR, you have 
no idea what you will see there and it will change from interrupt to 
interrupt, depending on which task gets interrupted.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
