From: Alan Womack <arwbackup@worldnet.att.net>
Subject: APM and  a fresh linux box
Date: Tue, 20 Aug 2002 14:16:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208202115.g7KLFkS09958@firebin.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm having some issues with getting APM to function under a Linux from Scratch installation I recently did so I could understand linux better.  First issue to resolve:

shutdown -r now  shutsdown to the point where the console informs you it is rebooting.  It never reboots, it halts there.

I have:

Amptron 9100C motherboard which dmesg tells me version 1.2 APM compliant
I have compiled APM in the 2.4.18 kernel
I have enabled power management in the BIOS which is upgraded the latest which is a couple of years old now.

I'm working on compiling apmd, having just been taught how to get the xbat to not cause aborting of the compile since I don't have Xfree installed yet on my LFS system.

Thoughts on what to check?  What to do?  How to test?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
