From: Peter <heisspf@skyinet.net>
Subject: Printing with Kernel 2.6.14.4
Date: Tue, 21 Mar 2006 10:40:59 +0800
Message-ID: <200603210240.k2L2exYo003730@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

Slackware 10.2    kernel 2.6.14.4

Putting /sbin/modprobe parport_pc and ... lp in rc.local I can print, however, 
only when I am connected to the Internet since the print configuration tool 
has no provisions for parallel port when local printer is selected. Only 
Network Printer will show the setting for parallel port and Epson printers.

In my Fedora4 box with kernel 2.6.14-1... selecting local printer will show 
parallel port and Epson printers and I can print w/o being connected.

How could I correct to be able to print in slackware w/o being connected.

Should I just copy the files of /lib/modules/kernel/drivers from Fedora over 
the slackware?

Thanks & regards
-- 
Peter









-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
