From: Haines Brown <brownh@hartford-hwp.com>
Subject: Choice of NIST daemon
Date: Thu, 22 Aug 2002 06:40:06 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208221040.g7MAe6p06770@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I'd like to have my system clock automatically corrected through an
online connection that remains always up. I gather that xntpd is a
commonly used daemon to do that for me.

However, I find that the Red Hat version of this application is rather
old, and when I try to install it, it conflicts with installed ntp. I
did not uninstall ntp because it is needed by another program. At one
time I was interested in nisttime, but that led to questions regarding
reconfiguration of uucp.

What is the most straightforward way to implement a NIST server that
does not interfere with other programs? I'm running RedHat 7.3

Haines Brown
 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
