From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Install Slack/or/RedHat to SCSI HD???
Date: Thu, 26 Sep 2002 05:52:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D92D8DF.C53D5423@gelm.net>
References: <20020925143657.A562@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@iceweb.net
Cc: linux-newbie@vger.kernel.org

Hi, Hal MacArgle:

did you try Slackware v8.x scsi.s bootdisk?

From Slackware's 'Which.One':

"SCSI controller bootdisks:  3ware.s 7000fast.s acard.s advansys.s
aha152x.s
      aha1542.s aha1740.s aic7xxx.s am53c974.s buslogic.s dtc3280.s
eata.s
      eata_pio.s fdomain.s gdt.s ibmmca.s in2000.s initio.s
      iomega.s megaraid.s n53c4xx.s n_5380.s n_53c7xx.s n_53c8xx.s
no_kbd.s
      no_pci.s no_smp.s old_cd.s pas16.s pci2000.s qlog_fas.s qlog_isp.s
scsi.s
      seagate.s servraid.s sym538xx.s tekram.s trantor.s ultrastr.s
usb.s

 If you have no idea which SCSI controller your machine has, you can
also
 try the generic SCSI bootdisk "scsi.s".  You can determine what
controller
 type you have by watching the boot messages.  Then, you should make the
 bootdisk that matches your controller and use that to install.  (Since
the
 scsi.s kernel is loaded with SCSI drivers, it consumes quite a bit of
memory
 that the disks designed for a single SCSI controller do not, and also 
 contains only the more popular SCSI drivers due to kernel size limits)"

HTH, Chuck
Hal MacArgle wrote:
> 
> Several days RTFM's, Books and trial/error's, no joy w/ a Seagate
> SCSI HD and Adaptec 1515 Controller, except that DRDos7.03, MSDos6.2
> and MSDos7.0 all find it and assign C: automatically. <grin>
> 
> HD configured using Seagates' Dos DM program with three partitions;
> one for Dos, 650mB, and the remainder in limbo, 650mB earmarked for
> Linux native and the remainder of the 1.3gB drive for linux swap.
> 
> Slackware7.1, 2.2.16; Slack8.0, 2.2.19 /or/ 2.4.5 and RedHat6.2, 2.2.16
> a different story all three trys ending by not automatically finding
> the HD.. Slack finds it and reports the Port, IRQ and ID, 0x340, 11
> and 7 - OK - RedHat merely says, "No HD present." W/Slack I used the
> aha152x.s boot image - Docs saying that's proper for the 151x card.
> Tried two different RH boot images - same problem again...(Also tried
> other Slack .s images to no avail.)
> 
> The booted kernel obviously cannot see the drive for some reason and
> after many, many kernel entries, re the Docs, I have partially given
> up. One mysterious, to me, report by the Slack boot is: "aha152x:
> Trying software for interrupts, lost. /and/ aha152x: IRQ possibly
> wrong, Please verify"... Since the card has jumper set IRQ 11 -
> dunno. Changed the jumper to 9 and tried again - same problem, except
> reporting 9 instead of 11, of course.... No other cards fitted except
> an ethernet card at 0x300, IRQ10, that I removed to try all again -
> same reports and problem..
> 
> Both Slack tries actually go thru the beginning of the install but
> balk when I invoke either cfdisk or fdisk to attempt a linux
> partition setup. Cfdisk says something like "can't open HD," and
> fdisk similar..
> 
> I have the onboard IDE controller disabled but strangly the BIOS
> reports CHS as: 172-255-63 but the boot kernel disk report says:
> "non IDE drive, CHS=306/4/17."
> 
> I've never run into this before with several years under my belt with
> MFM, RLL and IDE HD's and SCSI peripherals EXCEPT HD's...(I have no
> other SCSI adapters or HD's available to try a swap.)
> 
> I'm beginning to suspect the problem is the 1515 card, but why does
> it work with Dos???
> 
> I hope someone might have the magic solution.... <grin> TIA..
> 
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
>                haltec@iceweb.net | w8mch@iceweb.net..
> .
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
