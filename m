From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: getting serial ports on STB4COM UP
Date: Sun, 19 Jan 2003 06:04:56 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU05QVjp3b6000002ae@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

 >>  Alan -- In your kernel, have you compiled in support for serial ports 
 >>  sharing interrupts? It's an option (in "make menuconfig") under

 >>  Character Devices
 >>  Extended dumb serial options
 >>  Support for sharing serial interrupts

 >>  The fact that you have problems only on a port that shares an IRQ suggests
 >>  
 >>  that this may be the cause.

 >>  You might also want to enable "Support more than 4 serial ports" in the 
 >>  same location.

I found in my kernel I did have:
CONFIG_PARPORT_SERIAL=y
CONFIG_SERIAL=y
# CONFIG_SERIAL_CONSOLE is not set
# CONFIG_SERIAL_ACPI is not set
CONFIG_SERIAL_EXTENDED=y
CONFIG_SERIAL_MANY_PORTS=y
CONFIG_SERIAL_SHARE_IRQ=y
# CONFIG_SERIAL_DETECT_IRQ is not set

I did not have this one set:

CONFIG_SERIAL_MULTIPORT=y

Last night I set it and set off a rebuild of my kernel.  I also changed port 2 of the STB4Com card to share interrupt 3 with port 1.

It appears one of those two modifications has port 2 working correctly now.  Port 3 and Port 4 still share IRQ 15, and although the pausing is noticebly shorter for port 3, it is still quite slow.  Therefore I have to conclude there is an issue with sharing 15 for some reason.  Next time I take my server down, I will move port 3 to share IRQ 3 and see what happens.

Alan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
