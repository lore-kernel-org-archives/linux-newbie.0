From: Hal MacArgle <haltec@kvinet.com>
Subject: Cfdisk VS Fdisk??
Date: Sun, 13 Mar 2005 08:15:44 -0500
Message-ID: <20050313131544.GA532@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Greetings: Using both Fdisk and Cfdisk for years I've never run into
the latest "discovery," and was wondering if anyone else has
experienced it..

Various MotherBoards and, mostly, Slackware distribs, I've
standardised on Slack 9.0 or 9.1, kernel 2.4.20 or 2.4.22 on all
machines..

Evaluating a Tyan S1564S MB with Intel 430HX chipsets; Cfdisk and
Fdisk report radical differences depending on which of four HD's I've
tried.. Two WD Caviar 2340's, 340mB, were manipulated by Cfdisk OK
but Fdisk reported _no_ partitions at all.. (In the past I've noted
differences in byte amounts, etc, but never this.) <grin>

At first I thought it was because of the older drives so I fitted a
Maxtor 20gB drive and got the same report.. Fitting a Seagate, 8gB,
fdisk reported correctly with it.. (In all cases a single drive
attached to Primary IDE as Master.)

Reading man fdisk, it surprised me to see the author saying to not
use fdisk because Cfdisk was better and sfdisk should be used if it's
features needed... "Too many bugs," he or she wrote...

Is this something to be concerned about? Or just one of the many
anomolies we've learned to live with thru the years?? TIA..
-- 

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20-1)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
