From: Rik van Riel <riel@surriel.com>
Subject: Re: Sleeping after preempt_disable() possible?
Date: Fri, 01 Sep 2006 19:56:37 -0400
Message-ID: <44F8C8B5.2050103@surriel.com>
References: <7783925d0608312224w3a038b5fh6355c5e89c33d485@mail.gmail.com>	 <200609011546.27167.bora.sahin@ttnet.net.tr> <7783925d0609010621j5a2cd857t67336a28782fedb3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0609010621j5a2cd857t67336a28782fedb3@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: "bora.sahin@ttnet.net.tr" <bora.sahin@ttnet.net.tr>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Rick Brown wrote:

> I was curious that after a call to preempt_disable(), can I call a
> function that MAY sleep?

Bad idea.  That can make the kernel do bad things...

Just take a look at schedule() in kernel/sched.c:

asmlinkage void __sched schedule(void)
{
...
	if (unlikely(in_atomic() && !current->exit_state)) {
                 printk(KERN_ERR "BUG: scheduling while atomic: "
                         "%s/0x%08x/%d\n",
                         current->comm, preempt_count(), current->pid);
                 dump_stack();
         }

Of course, in_atomic() checks whether you disabled preemption.

-- 
What is important?  What you want to be true, or what is true?

-- 
VGER BF report: H 1.11022e-16
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
