From: Mario Smarduch <mario.smarduch@huawei.com>
Subject: Re: A spinlock_irqsave question
Date: Mon, 29 Apr 2013 11:12:33 +0200
Message-ID: <517E3981.5060103@huawei.com>
References: <CANMsd03Ea55cV5aoDP0jfA9_+wgW81omLjzvQLN+-w-hgNyzXQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CANMsd03Ea55cV5aoDP0jfA9_+wgW81omLjzvQLN+-w-hgNyzXQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ryan <ryanphilips19@googlemail.com>
Cc: linux-newbie@vger.kernel.org

On 4/29/2013 10:30 AM, Ryan wrote:

> 
> 
> 
> spinlock_irqsave()  <== Disables the IRQ?
> 
>                             <== No IRQs (that means no KB
> interrupt,Interrupts from touch screen... etc..)
> 
> 
> 
> spinlock_irqrestore()
spin_lock_irqsave(lock,flags)/ affects the running
CPU, it does not disable any device IRQ. Device
interrupts may be taken by other CPUs. There is a whole
other set of calls that deal with individual IRQs.

> 
> 
> Is my understanding correct?
> So the "time spend between spinlock_irqsave and spinlock_restore
> should be very short?
> 
> For example there should not be something like this? Am i correct?
> 
> 
> spinlock_irqsave()
> 
> mdelay(1000);
> 
> 
> spinlock_irqrestore()

Yes, but much shorter then mdelay(1000)
> 
> 
> 
> 
> Also, what is meant by "spinlock_irqsave" disabled irq locally?

spin_lock_irqsave()disables interrupts on the CPU it's issued.




--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
