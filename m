From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: APM not rebooting or shutting down machine
Date: Tue, 27 Aug 2002 06:54:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU08c00goZo000018a1@cpimssmtpu08.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

I have partially "fixed" the problem with APM by changing my 2.4.18 kernel to not use APM and to use ACPI.  I am now able to reboot the machine with shutdown -r now.  It did reboot just fine.

The poweroff command stopped there, but a "three finger salute" caused it to reboot.  Before I had to go hit the reset button.

I need to get the poweroff to shutdown as well so when I get my APC UPS connected and power has been lost, I need to be able to turn that machine off.  I supposed I could just have it powerdown and wait there, but, how does one get it to come back up when the power is restored?  Have to check the bios for that one.

Alan

 >>  Once that's working, you can at least use the thing as a server ok; it's
 >>  rare that you need to remotely switch off a server (although I admit
 >>  that you might want to do that in certain circumstances). Since you are
 >>  probably going to be next to the box when you tell it to shut down,
 >>  pushing the power switch isn't really a problem :)

 >>  Hope this helps a little.

 >>  Paul.




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
