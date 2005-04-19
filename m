From: "Peter H." <heisspf@skyinet.net>
Subject: Gutenbrowser Not Opening
Date: Tue, 19 Apr 2005 16:53:08 +0800
Message-ID: <200504190853.j3J8r8tq000407@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Slackware 10.1 kernel 2.4.29

Trying to open Gutenbrowser I get before it aborts:

Setting up slots.
init finished.
QLayout "unnamed" added to Gutenbrowser "unnamed", which already has a layout
Floating point exception

with strace ending:

write(3, "\22\0\n\0\1\0@\1\"\0\0\0\37\0\0\0\10\0\0\0\r\0\0\0gute"..., 4328) = 
4328
ioctl(4, FIONREAD, [1])                 = 0
--- SIGFPE (Floating point exception) @ 0 (0) ---
+++ killed by SIGFPE +++

Any suggestions what to do that gutenbrowser will open again? What means 
Floating point exception?

Thanks & regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
