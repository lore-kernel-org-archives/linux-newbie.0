From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: Need for a new spinlock API?
Date: Wed, 21 Mar 2007 08:32:10 +0100
Message-ID: <1174462330.1158.113.camel@laptopd505.fenrus.org>
References: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernel mail <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On Wed, 2007-03-21 at 09:23 +0530, Rajat Jain wrote:
> Hi,
> 
> We often have a case where a driver wants to access its data structure
> in process context as well as in interrupt context (in its ISR). In
> such scenarios, we generally use spin_lock_irqsave() to grab the lock
> as well as disable all the local interrupts. AFAIK, disabling of local
> interrupts is required so as to avoid running your ISR (which needs
> the lock) while process context is holding the lock. However, this
> also disables any other ISRs (which DO NOT need the lock) on the local
> processor.
> 
> Isn't this sub-optimal? Shouldn't there be a finer grained locking?

actually it's optimal.
It's fastest to delay the interrupts a little and be done with what you
want to do under the lock quickly, and THEN take the interrupt. This
means the lock hold time is short, which significantly reduces
contention on this lock...

also it's really hard to impossible to get the more complex locking
scenarios and dependencies right in this context; it's just so much
simpler (and even this simple drivers get it wrong often .. :)


-- 
if you want to mail me at work (you don't), use arjan (at) linux.intel.com
Test the interaction between Linux and your BIOS via http://www.linuxfirmwarekit.org

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
