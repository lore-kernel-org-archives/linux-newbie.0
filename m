From: Jing Xu <xujing_cn2001@yahoo.com>
Subject: irqmask doesn't work
Date: Wed, 26 Nov 2003 13:50:12 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031126215012.86010.qmail@web41311.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello, 

I'm having some trouble with PCI IRQ's and I was
hoping someone here could help. 

I'm running linux 2.4.20 and rtai 24.1.11. My linux
kernel module needs to use IRQ 9 10 11 for AGP graphic
card, sound card and PCI-Dio24 IO card. These irqs are
also shared by USB controllers. My module hangs when
it tries to request the above irqs used by USB
devices. I figured it would be a good idea to remove
this apparent conflict. I have scoured the web and
found that I can reserve these IRQs by specifying
pci=irqmask=0xxxxx on the kernel boot line.

I have tried to set "pci=irqmask=0xf1e8" to reserve
Irq 9 10 11 4 from my driver, and it hasn't had any
effect - those irqs are still used by usb controllers
on initialization. 

How do I change these IRQ's?  Is there some other
configuration file I haven't found? If anyone can
provide any insight into this, I would appreciate it
greatly. Let me know what/if any details you need - I
am by no means an expert in this area and didn't want
to post reams of irrelevant information, but if there
is something I'm missing let me know and I'll get
it...

Thanks in advance,

jing 

__________________________________
Do you Yahoo!?
Free Pop-Up Blocker - Get it now
http://companion.yahoo.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
