From: Hal MacArgle <haltec@kvinet.com>
Subject: Compiling sg.o only (2.4.20)
Date: Mon, 15 Sep 2003 13:39:11 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030915173911.GA1802@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Changing to Slackware 9.0, 2.4.20, I discovered the
default kernel, bare.i, does not have the module; sg.o, but sg.c and
sg.h are in the src.. Therefore my HP scanner that worked with 2.4.18
is found OK but has no kernel support.. (At least I think that's the
problem so far.) (The scanner is a scsi job and I have the BusLogic
module, sane-backend, etc, installed.) (With 2.4.18, 'insmod sg', set
up the kernel support for this scanner.)

Perhaps I should know this but; is there a way to compile sg.o
without going through a complete build, since everything else I need
is working fine?

TIA and cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
