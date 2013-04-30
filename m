From: Mario Smarduch <mario.smarduch@huawei.com>
Subject: Re: A spinlock_irqsave question
Date: Tue, 30 Apr 2013 10:54:05 +0200
Message-ID: <517F86AD.1040604@huawei.com>
References: <CANMsd03Ea55cV5aoDP0jfA9_+wgW81omLjzvQLN+-w-hgNyzXQ@mail.gmail.com> <517E3981.5060103@huawei.com> <CANMsd01LVJarAAzSx-Mpvo_CJkWU6hXZCmu4dh44RNHsEY_51g@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CANMsd01LVJarAAzSx-Mpvo_CJkWU6hXZCmu4dh44RNHsEY_51g@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ryan <ryanphilips19@googlemail.com>
Cc: linux-newbie@vger.kernel.org

On 4/29/2013 11:21 AM, Ryan wrote:
>> spin_lock_irqsave(lock,flags)/ affects the running
>> > CPU, it does not disable any device IRQ. Device
>> > interrupts may be taken by other CPUs. There is a whole
>> > other set of calls that deal with individual IRQs.
> You mean to say that
>       a) Device IRQ can be taken care of some other core of the Same CPU?
>       b) If the CPU Load is Less. then only one core will be active.
> In that case - The device irq will be blocked?
> 
> 

I don't understand (a), in SMP you may disable IRQs on a CPU
(via *_irqsave()) but other CPUs may continue to receive interrupts.
The CPU load has nothing to do with blocking IRQs (on vanilla kernel)
To disable device IRQ you must disable it at the interrupt controller
level like disable_irq().
 

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
