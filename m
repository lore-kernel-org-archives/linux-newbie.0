From: "Peter H." <heisspf@skyinet.net>
Subject: Xmms Won't Open
Date: Sun, 10 Apr 2005 17:58:53 +0800
Message-ID: <200504100958.j3A9wrJG002856@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

slackware 10.1 kernel 2.4.29

After I upgraded to dropline 2.10.0 from 2.8.3, xmms  1.2.10 will not open. 
The error I get is:

~:$ xmms 
unable to open port `/dev/ttyS1' (Permission denied)
unable to open port `/dev/ttyS1' (Permission denied)
*** glibc detected *** free(): invalid pointer: 0x4078bc79 ***
Aborted

As su I get only the last line of the error about glibc

Dropline is the gnome version for slack.

How to resolve?

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
