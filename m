From: Hal MacArgle <haltec@kvinet.com>
Subject: Sanyo CDR-H94A (non-atapi) Booting???
Date: Fri, 28 Mar 2003 13:18:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030328131832.A249@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Trying to install Slackware 8.0 in a AM586-P75 box with
32mB RAM - I can't find the magic entry/ies to install the packages
from the CD.. The CD is working OK from the Dos5.0 partition of
course. :^)..

I've tried the Slackware boot image - sanyo.i - from both the 8.0 and
7.1 distribution and I can't get "setup" to find the CDR.. The report
is always: "SJCD: Sanyo CDR-H94A Cdrom driver version 1.7
            SJCD: Resetting............ reset failed, no drive found."

Ignoring that and forging ahead still no joy as later probing for the
drive fails too.. I've also tried entering parameters in the lilo
boot: but none I've tried seem to work.. (The drive port is: 0x340)

Perhaps the only answer is to copy the basic files from the CD to the
HD and then install from there but was hoping a better way.. The BIOS
of the machine does not support CD booting, so I'm stuck from that
angle.. Any suggestions?? TIA and cheers.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
