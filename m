From: John Aspinall <jgaspinall@rcn.com>
Subject: modules: aliases and configuration
Date: Sat, 08 Nov 2003 22:00:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FADADC8.3070904@rcn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Two questions, if I may, about modules, aliases, and configuration.
(Perhaps they're even related!)

Question 1) Aliases with "formalized" names:
In the BlueZ (bluetooth) How-To we are advised to add the following 
aliases to /etc/modules.conf
     alias net-pf-31         bluez
     alias tty-ldisc-15      hci_uart
     alias char-major-10-250 hci_vhci
In the IrDA (infrared) How-To we are advised to add the following 
aliases (as well as others) to /etc/modules.conf
     alias tty-ldisc-11 irtty
     alias char-major-161 ircomm-tty
So what is it with these "formalized" (for want of a better word) alias 
names?  If I see an alias char-major-<n> (for some number <n>), what is 
the significance of <n>?

Question 2) Module configuration info:
If I look in my system's /etc/modules.conf it consists of 2 lines.
Yet if I do 'modprobe -c' I get a couple of hundred lines.  The man page 
  for modprobe says that 'modprobe -c' shows the "currently used 
configuration (default + configuration file)".  So where does this 
"default" come from?  Presumably it's established somewhere during the 
kernel build, but where?

Thanks, in advance, for the info.  If there's a good reference for this 
and other stuff, I'm sure many members of the list would like to hear 
about it.

John Aspinall

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
