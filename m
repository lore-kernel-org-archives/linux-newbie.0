From: "Peter H." <heisspf@skyinet.net>
Subject: Hang With EHCI_HCD Activated
Date: Sun, 28 Aug 2005 10:53:11 +0800
Message-ID: <200508280253.j7S2rBOO000986@meridian.ph>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Recently I tried to boot PuppyLinux from a CD and it would hang when this line 
on the console showed:

ehci_hcd 00:10.3: Via Technologies, Inc USB 2.0

Then in slackware 10.1 kernel 2.4.29 I activated EHCI HCD support putting it 
to yes in USB Support.

When rebooting slackware from the HD the system then hang at exactly the same 
line.

I then rebooted from the slackware CD and put the old kernel configuration 
back w/o EHCI HCD support.

My motherboard has USB 2.0 support including EHCI Host Controller core for 
high speed signaling.

What could be the cause for this hang on booting when EHCI is activated?

Thanks & regrds
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
