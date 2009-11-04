From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: local_irq_disable() V/S disable_irq()
Date: Wed, 4 Nov 2009 11:42:57 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0D7C0E8C@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Newbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org


Hi,

I'm just trying to understand how he things would look like, if the
device sends an interrupt (edge-triggered) while a driver has issued one
of the above mentioned APIs (to disable the interrupts temporarily). 

A) local_irq_disable(): As far as I understand, this API disables the
interrupt by operating at the local CPU registers (disabling the global
interrupt enable bit for THIS CPU). The interrupt is still enabled at
the interrupt controller level.  Assuming that the interrupts are
configured such that only THIS CPU receives all the interrupts, what
would happen in this situation if the device sends an interrupt? Will it
be noticed / acknowledged? When the driver re-enables the interrupts via
local_irq_enable()?

B) disable_irq(): I think this disables the interrupt by disabling the
specific interrupt at the interrupt controller level (Thus for all
CPUs). Any interrupt triggered during this time will be lost, right?

Thanks,

Rajat

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
