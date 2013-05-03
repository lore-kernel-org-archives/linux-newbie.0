From: Ryan <ryanphilips19@googlemail.com>
Subject: Re: A spinlock_irqsave question
Date: Fri, 3 May 2013 12:15:23 +0530
Message-ID: <CANMsd00zmNx-xb12zoum49oC+sa2icBe9sULfm28s36FVMO6vA@mail.gmail.com>
References: <CANMsd03Ea55cV5aoDP0jfA9_+wgW81omLjzvQLN+-w-hgNyzXQ@mail.gmail.com>
	<517E3981.5060103@huawei.com>
	<CANMsd01LVJarAAzSx-Mpvo_CJkWU6hXZCmu4dh44RNHsEY_51g@mail.gmail.com>
	<517F86AD.1040604@huawei.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:x-received:in-reply-to:references:date:message-id
         :subject:from:to:cc:content-type;
        bh=6SwvMam+o2BttGc0ISb0rv73SzDunZOQxSzshTdsCSc=;
        b=0qcJxeZqVIgVakaONXmgD/CrHYfyVFE5uXZbPmCvm7vBt41KK7QeQKmRtiYEUL3tuJ
         Tj9Ql6on7AIIywpiidJUTranfyFLEOR0FQbsd9mojStDuXj4RlDBls1OPF3z+DZF+bZD
         x7u6FEA5AO/H5MCX5lY3GH0uHjuyUS7kqPvGL2XUztz4g+OpvhjNebSyH0hP58KHhgIu
         oPXtN/GHa+ENSJDrGC2aIpLZ9WB7cGE/zvmmXFNi95B5OxIO3Qd0SU/SvqsMrRnN6EOq
         SMKzIVuZYVl1likcS5opMkhFIgifwkT5ccgcCnvw0FCbCl8a15KcwyxgVD7k2dKLah38
         yH/A==
In-Reply-To: <517F86AD.1040604@huawei.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mario Smarduch <mario.smarduch@huawei.com>
Cc: linux-newbie@vger.kernel.org

Hi Mario,
   Thanks for your inputs. I understood the diabling the irq on the
local CPU by spinlock_irqsave function.

   Can you also explain why should someone use spinlock_irqsave
instead of spinlock call.
   Why someone would want to also disable interrupts while holding a spinlock.

   One situation i can think of is as using spinlock_irqsave inside an
interrupt handler. Is this correct.
   But i also read that when one interrupt handler is being processed
- Linux will mask the same interrupt handler from being called again
until the current one has finished processing.
   that is  - Until the processing of interrupt handler is complete.
Linux will disable the future interrupts of the same type.
   In that case why should be disable interrupts by calling (
spinlock_irqsave) and use only spin_lock call alone.


Thanks


On Tue, Apr 30, 2013 at 2:24 PM, Mario Smarduch
<mario.smarduch@huawei.com> wrote:
> On 4/29/2013 11:21 AM, Ryan wrote:
>>> spin_lock_irqsave(lock,flags)/ affects the running
>>> > CPU, it does not disable any device IRQ. Device
>>> > interrupts may be taken by other CPUs. There is a whole
>>> > other set of calls that deal with individual IRQs.
>> You mean to say that
>>       a) Device IRQ can be taken care of some other core of the Same CPU?
>>       b) If the CPU Load is Less. then only one core will be active.
>> In that case - The device irq will be blocked?
>>
>>
>
> I don't understand (a), in SMP you may disable IRQs on a CPU
> (via *_irqsave()) but other CPUs may continue to receive interrupts.
> The CPU load has nothing to do with blocking IRQs (on vanilla kernel)
> To disable device IRQ you must disable it at the interrupt controller
> level like disable_irq().
>
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
