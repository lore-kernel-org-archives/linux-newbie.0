From: Hal MacArgle <haltec@kvinet.com>
Subject: Slack9.0/Atapi-ZIP250???
Date: Sat, 28 Jun 2003 15:14:07 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030628151407.A244@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Several days; RTFM, FAQ's, HOW-TO's - no joy...

This box w/Slack8.0/2.4.18; running AOK with an Atapi ZIP250
internal, as /dev/sda4, as long as I insmod ide-scsi.o.. ( That file
also installs sd_mod.o )..

Installing Slackware9.0/2.4.20, on another partition, a different
story, reporting the dreaded "mount: /dev/sda4 is not a valid block
device," meaning, AFAIK, the kernel can't see it.. I note that 2.4.20
does _not_ load, or even have, sd_mod.o, or anything similar.. Please
note the permissions, etc, are the same on both partitions..

There must be another module that I can't seem to find.. Of course
the HOWTOs and Mini HOWTOs, are correct for earlier kernels, but no
help here..

Installing Slack9.0/2.4.20 on another machine with a parallel port
ZIP250 finds the drive OK w/ insmod imm.o and ide-scsi.o - as per
normal, so that scheme seems OK.. (imm.o, of course, is only for
parallel port devices.)

Any suggestions, comments, etc?? I've looked at all the modules
available and I can't find anything that rings a bell so far...

Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
