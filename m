From: Hal MacArgle <haltec@kvinet.com>
Subject: 3Com NIC Driver?
Date: Wed, 26 May 2004 10:33:11 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040526143311.GA790@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: I made the, probable, mistake of buying a 3Com 3C900B-TPC
PCI BNC NIC discovering that the module automatically installed by
Slackware 9.0, 2.4.20 - 3c59x.o - does not ping.. Checking the Web I
find that 3c59x.o is for the 3C900 (no suffix) models and that I may
need 3c90x.o instead..

Downloaded the source for that but it wont compile under Slack9.0..
An attempt to -f (force) using a pre-compiled version didn't work
either..

I may be stuck but was wondering if someone may have run into this
and solved the problem, and/or has a module compiled for 2.4.20..

Rather than go into further details of what I did, suffice it to say
that I swapped a RealTec NIC into the same PCI slot, and it worked
perfectly with the ifconfig and route add entries, so I must presume
the cables, etc are OK.. dmesg listed the 3Com NIC, with the same
IRQ# and Port# that were assigned to the RealTec NIC..

Appreciate and TIA.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
           
	     Anyone can pile complexity upon complexity;
                  only a genius can truly simplify..
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
