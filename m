From: Hal MacArgle <haltec@iceweb.net>
Subject: Install Slack/or/RedHat to SCSI HD???
Date: Wed, 25 Sep 2002 14:36:57 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020925143657.A562@lnx2.w8mch.ampr.org>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Several days RTFM's, Books and trial/error's, no joy w/ a Seagate
SCSI HD and Adaptec 1515 Controller, except that DRDos7.03, MSDos6.2
and MSDos7.0 all find it and assign C: automatically. <grin>

HD configured using Seagates' Dos DM program with three partitions;
one for Dos, 650mB, and the remainder in limbo, 650mB earmarked for
Linux native and the remainder of the 1.3gB drive for linux swap.

Slackware7.1, 2.2.16; Slack8.0, 2.2.19 /or/ 2.4.5 and RedHat6.2, 2.2.16
a different story all three trys ending by not automatically finding
the HD.. Slack finds it and reports the Port, IRQ and ID, 0x340, 11
and 7 - OK - RedHat merely says, "No HD present." W/Slack I used the
aha152x.s boot image - Docs saying that's proper for the 151x card.
Tried two different RH boot images - same problem again...(Also tried
other Slack .s images to no avail.)

The booted kernel obviously cannot see the drive for some reason and
after many, many kernel entries, re the Docs, I have partially given
up. One mysterious, to me, report by the Slack boot is: "aha152x:
Trying software for interrupts, lost. /and/ aha152x: IRQ possibly
wrong, Please verify"... Since the card has jumper set IRQ 11 -
dunno. Changed the jumper to 9 and tried again - same problem, except
reporting 9 instead of 11, of course.... No other cards fitted except
an ethernet card at 0x300, IRQ10, that I removed to try all again -
same reports and problem..

Both Slack tries actually go thru the beginning of the install but
balk when I invoke either cfdisk or fdisk to attempt a linux
partition setup. Cfdisk says something like "can't open HD," and
fdisk similar..

I have the onboard IDE controller disabled but strangly the BIOS
reports CHS as: 172-255-63 but the boot kernel disk report says:
"non IDE drive, CHS=306/4/17."

I've never run into this before with several years under my belt with
MFM, RLL and IDE HD's and SCSI peripherals EXCEPT HD's...(I have no
other SCSI adapters or HD's available to try a swap.)

I'm beginning to suspect the problem is the 1515 card, but why does
it work with Dos???

I hope someone might have the magic solution.... <grin> TIA..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
	       haltec@iceweb.net | w8mch@iceweb.net..
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
