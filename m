From: Vinod KK <kkvinod@gmail.com>
Subject: CONFIG_PREEMPT_SOFTIRQS
Date: Tue, 31 Jan 2006 21:15:43 +0530
Message-ID: <c2f233c10601310745p5111bd6are32bb66c9f381e6b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I am using linux 2.6.10 (with Ingo Molnars real time patches) on my mips board.

When I try running high network traffic (10% traffic on a 100Mbps
link) on my target board with the CONFIG_PREEMPT_DESKTOP=y and
CONFIG_PREEMPT_SOFTIRQS=y options enabled I notice that the console
freezes and recovers only after the traffic stops. I do not notice
this behaviour with the CONFIG_PREEMPT_SOFTIRQS option disabled.

I understand that the CONFIG_PREEMPT_SOFTIRQS option puts all softirq
processing to the ksoftirqd daemon, but i do not see why this should
stall the console. I believe there should be some task which is
starving for CPU, but I do not know which one.

The console is on an 16550 serial port.

Could someone please give me some pointers on where I should start looking?

Thanks,
Vinod K.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
