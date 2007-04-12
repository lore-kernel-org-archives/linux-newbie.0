From: Peter <peter@smartbro.net>
Subject: Keyboard  Logic
Date: Thu, 12 Apr 2007 08:58:22 +0800
Message-ID: <200704120058.l3C0wMUn003922@smartbro.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

>Hi,
>
>I am using lilo for a multiple boot system.
>
>If I plug my keyboard into an USB port instead of the PS/2 port I can only 
>boot into the system which is set as default. Lilo will not show the other 
>boot systems.
>
>The same if I boot from a live CD and keyboard is plugged into USB port it 
>cannot be accessed before start-up therefore no boot commands can be given.
>
>In either case once start-up is completed the keyboard is functioning 
properly
>when plugged into USB.

>In BIOS USB legacy is enabled.

>The mother board is Elitegroup P4VMM2 and has 4 USB ports. The keyboard is 
>unbranded.

>What could be the reason for such a behavior?

 Lilo does not support USB

Peter

There are now more than 10 Linux distributions that
are miles ahead of Microsoft Vista in quality, security and beauty.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
