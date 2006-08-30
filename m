From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Interrupt handler registration for multiple devices
Date: Wed, 30 Aug 2006 20:42:14 +0530
Message-ID: <7783925d0608300812j2175164dja401b4e763a5ac43@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org, linux-kernel@vger.kernel.org

Hi,

I want to write a driver that will handle multiple devices. These
devices will share the IRQ line. Do I need to register my (same)
interrupt handler as many times as the number of devices(by calling
request_irq())?

Also an unrelated query. Can I sleep after a call to preempt_kernel()??

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
