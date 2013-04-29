From: Ryan <ryanphilips19@googlemail.com>
Subject: Re: A spinlock_irqsave question
Date: Mon, 29 Apr 2013 14:51:00 +0530
Message-ID: <CANMsd01LVJarAAzSx-Mpvo_CJkWU6hXZCmu4dh44RNHsEY_51g@mail.gmail.com>
References: <CANMsd03Ea55cV5aoDP0jfA9_+wgW81omLjzvQLN+-w-hgNyzXQ@mail.gmail.com>
	<517E3981.5060103@huawei.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:x-received:in-reply-to:references:date:message-id
         :subject:from:to:cc:content-type;
        bh=jAsFd9XS6q7/c3rIiIv9gkR+xHtjBiLXSDZeXEfOopE=;
        b=G26uozwReMnAsx/+cOkT3317qLI6fxTfbOC7zADdcp5gXqCKBh9PYCymNJJL1mCzoy
         3N/SeO53l4j5zH8ZMCNgi4v5rtW5tK58OvBTp7YWuK2yuaxtkGr8WCMeTTUruDCuM7oD
         XwNvWpHxgJyLvaAPJzFVPn6+rxMMcFMwTWotUgdZm44P/w4rlXx2INLcJtcSj/DZIv5X
         Un3NjKzO9ha4Gwq79S6UCuiV3NmLPfZHuLsd85y28weYDVuxpgK1i2KL83PLvXAmqDzv
         qltxpARHnfo1dTsMPa24QRB6TzKdsObcMcX2ZApM97juhLen5evnqRxqpw68/RV1nDM8
         BgeQ==
In-Reply-To: <517E3981.5060103@huawei.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mario Smarduch <mario.smarduch@huawei.com>
Cc: linux-newbie@vger.kernel.org

On Mon, Apr 29, 2013 at 2:42 PM, Mario Smarduch
<mario.smarduch@huawei.com> wrote:
> On 4/29/2013 10:30 AM, Ryan wrote:
>
>>
>>
>>
>> spinlock_irqsave()  <== Disables the IRQ?
>>
>>                             <== No IRQs (that means no KB
>> interrupt,Interrupts from touch screen... etc..)
>>
>>
>>
>> spinlock_irqrestore()
> spin_lock_irqsave(lock,flags)/ affects the running
> CPU, it does not disable any device IRQ. Device
> interrupts may be taken by other CPUs. There is a whole
> other set of calls that deal with individual IRQs.

You mean to say that
      a) Device IRQ can be taken care of some other core of the Same CPU?
      b) If the CPU Load is Less. then only one core will be active.
In that case - The device irq will be blocked?


>
>>
>>
>> Is my understanding correct?
>> So the "time spend between spinlock_irqsave and spinlock_restore
>> should be very short?
>>
>> For example there should not be something like this? Am i correct?
>>
>>
>> spinlock_irqsave()
>>
>> mdelay(1000);
>>
>>
>> spinlock_irqrestore()
>
> Yes, but much shorter then mdelay(1000)
>>
>>
>>
>>
>> Also, what is meant by "spinlock_irqsave" disabled irq locally?
>
> spin_lock_irqsave()disables interrupts on the CPU it's issued.

This also include device irqs right? Apart from device irqs (touch
screen and so on).
what other irqs can be there. So what about mdelay(1000) in the above?
does that effect performance.

>
>
>
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
