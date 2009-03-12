From: Julie Zhu <julie.zhu@xilinx.com>
Subject: level interrupt handling in the Kernel
Date: Thu, 12 Mar 2009 10:22:14 -0700 (PDT)
Message-ID: <22481320.post@talk.nabble.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hello,

We found that level interrupts are handled in the following way in the Linux
kernel:
1. mask irq, disable it
2. ack irq, clear it in interrupt controller.
3. move irq, handle it in handler for the source.
4. unmask irq, reenable it.

This sequnce results in bogus interrupts in the system. The reason is that,
after step 2 but before step 3, interrupt controller sees that the interrupt
source is high, and will re-assert the interrupt. After the interrupt
handler returns and finish step 4, the bogus interrupt causes the sequence
to start again.

We solve this issue by changing the interrupt controller to do nothing in
step 2, ack irq, if it is a level. In step 4, unmask irq, we ack the
interrupt controller then, and then re-enable the interrupt. Since interrupt
is level, and source interrupt handler only clears interrupts once in the
handler, nothing will be missed.

I am not sure whether we are doing the right thing, and why the Linux kernel
chooses to handle level interrupt in that sequence.

Thanks,
Julie.

Thanks,
-- 
View this message in context: http://www.nabble.com/level-interrupt-handling-in-the-Kernel-tp22481320p22481320.html
Sent from the linux-newbie mailing list archive at Nabble.com.

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
