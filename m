From: dave <dave@dpomeroy.com>
Subject: agpgart
Date: Tue, 23 Sep 2003 10:50:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F7087D6.5020507@dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I'm new to Linux and am using Mandrake 9.1.  I have a nvidia video 
card.  When starting up I get this on the screen and reported in syslog.

Can someone help to understand whats going on here?  Thanks in advance.

Dave Pomeroy K7DNP Southeastern Washington

Sep 23 10:38:48 localhost kernel: Linux agpgart interface v0.99 (c) Jeff 
Hartmann
Sep 23 10:38:48 localhost kernel: agpgart: Maximum main memory to use 
for agp memory: 380M
Sep 23 10:38:48 localhost kernel: agpgart: unsupported bridge
Sep 23 10:38:48 localhost kernel: agpgart: no supported devices found.
Sep 23 10:38:48 localhost insmod: 
/lib/modules/2.4.21-0.13mdk/kernel/drivers/char/agp/agpgart.o.gz: 
init_module: No such device
Sep 23 10:38:48 localhost insmod: Hint: insmod errors can be caused by 
incorrect module parameters, including invalid IO or IRQ 
parameters.       You may find more information in syslog or the output 
from dmesg
Sep 23 10:38:48 localhost modprobe: modprobe: insmod agpgart failed
Sep 23 10:38:48 localhost kernel: 0: NVRM: AGPGART: unable to retrieve 
symbol table
Sep 23 10:38:54 localhost xinetd[1720]: warning: can't get client 
address: Transport endpoint is not connected

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
