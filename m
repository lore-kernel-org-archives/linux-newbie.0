From: Peter <heisspf@skyinet.net>
Subject: No Printing with Kernel 2.6.14.4
Date: Sun, 19 Mar 2006 13:43:48 +0800
Message-ID: <200603190543.k2J5hmPC001185@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Slackware 10.2

When I change from kernel 2.4.31 to kernel 2.6.14.4 by installing 
kernel-generic-2.6.14.4-i686-2sh.tgz and kernel-modules-2.6.14.4-i686-2sh.tgz
I cannot print anymore since apparently there is no provision for a parallel 
port which my printer Epson LQ 300 is using. At least when configuring the 
printer using gnome-cups-manager with kernel 2.6.14.4 it only shows serial and 
usb ports.

How would I go about getting a parallel port into the 2.6.14.4 kernel. Could I 
copy it from the 2.4.31 modules and which one?

In /usr/src I have no linux-2.6.14 directory only one for linux-2.4.31.

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
