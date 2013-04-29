From: Ryan <ryanphilips19@googlemail.com>
Subject: A spinlock_irqsave question
Date: Mon, 29 Apr 2013 14:00:48 +0530
Message-ID: <CANMsd03Ea55cV5aoDP0jfA9_+wgW81omLjzvQLN+-w-hgNyzXQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:x-received:date:message-id:subject:from:to
         :content-type;
        bh=HrvpofP17UOYUa6CMC+pzgyAj4gidY6JjdXIW0xfkTM=;
        b=q9FR9vGUDAU0j257Lu3gL1U6CIOQkTVmVzGDhISIPzOVuBAQx5SM/dnPQAwl2l/sIW
         FS+gO8LOEHBBek2ZZVpR5lcIaoINwDLiIxip5R9JDXfLeqjgQWy8TgZHeP0TLF8l7CRC
         ktA0fXQ4x4GsnNcQ+9ez77RbV2IVtbO2X6egl5RGU3ANoQ4WiZnwNRsDknwqrpOdluSJ
         yMNfPR8GxTwDs5dQb5n6qn1LhHWz3vPjrzNqZfL/48pt8uNI1rrv+EZCRfzt5uw0MATq
         dgLxLHtasNOwf2f9KIjFWZCPnpbAL98L5R7U6WTkNxi7VkBydgn8Nbs7kg4MgR/r77t2
         38CA==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I have a question on spinlock_irqsave api. Am not sure if this is the
right place to ask.
Any help is highly appreciated.


let me know if my understanding is correct?



spinlock_irqsave()  <== Disables the IRQ?

                            <== No IRQs (that means no KB
interrupt,Interrupts from touch screen... etc..)



spinlock_irqrestore()


Is my understanding correct?
So the "time spend between spinlock_irqsave and spinlock_restore
should be very short?

For example there should not be something like this? Am i correct?


spinlock_irqsave()

mdelay(1000);


spinlock_irqrestore()




Also, what is meant by "spinlock_irqsave" disabled irq locally?


What is locally here?




Thanks,
Ryan
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
