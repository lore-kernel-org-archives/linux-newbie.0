From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: Slack9.0/Atapi-ZIP250???
Date: Mon, 30 Jun 2003 19:37:10 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAGEDPEIAA.Riley@Williams.Name>
References: <20030630065631.A148@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030630065631.A148@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

Hi Hal.

 >>> This box w/Slack8.0/2.4.18; running AOK with an Atapi ZIP250
 >>> internal, as /dev/sda4, as long as I insmod ide-scsi.o..
 >>> (That file also installs sd_mod.o )..

 >> You're doing this wrong. I have the Atapi Zip100 internal. It 
 >> does not need the ide-scsi.co. Just set it up like this:
 >>
 >> /dev/hdc4       /zip            auto    noauto,user 0 0
 >>
 >> You only need the scsi stuff when using the external type Zip 
 >> (which I also have). 

 > Greetings and - Gad Zooks.. Where did you discover the above?
 > Everything I've read about ZIP drives say they _must_ use scsi
 > emulation..

SCSI emulation is needed for PARALLEL PORT and SCSI INTERFACE zip
drives only - and NOT for ATAPI IDE zip drives - UNLESS you included
the string "hdc=ide-scsi" as a kernel parameter. If you did that,
then you told the kernel to use the ide-scsi driver to access the
drive in the secondary master IDE position independent of whether
such was necessary or not.

I bought my IDE ZIP-250 drive when the 2.3 kernel series was the
current development series, and I've always used the standard IDE
driver to access it. The only difference from your setup is that
I have mine set to use hdc1 rather than hdc4 since I normally buy
the MAC formatted zip-250 disks rather than the PC formatted ones
as they are 10% cheaper locally. Since I always reformat them as
ext3 the original format is irrelevant to me.

Indeed, it was only when I bought a PC formatted one due to the
shop being out of MAC formatted ones that I discovered that the
PC formatted ones use hdc4 whereas the MAC formatted ones use hdc1
instead !!!

 > Adding the above to /etc/fstab and then mounting /dev/hdc4 on
 > /zip worked with Slack9.0/2.4.20 but _not_ with Slack8.0/2.4.18,
 > which required ide-scsi.o.. All disks formatted with ext2..

That is either a configuration error with Slack8.0 or one of the
bugs in the 2.4.18 kernel that was fixed by 2.4.20.

 > I don't think I'll ever learn a thing about computers. Thanks
 > for the solution. Now I hope it'll work with NFS.. Appreciate!!

The best thing to learn from this saga is simply that if a device
(other than a CD-Writer or DVD-Writer) is labelled as IDE, then one
should expect to use the IDE driver to access it. The writers are
excluded because the cd writing software all expects to be talking
to a SCSI writer, and in general won't talk to an IDE one directly,
so one has to use the ide-scsi driver to let it talk to them. Note
that the IDE CD-writers and IDE DVD-writers can all be successfully
READ from using the IDE driver, and this problem is entirely due to
the cd writing software, not to the drives themselves.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.493 / Virus Database: 292 - Release Date: 25-Jun-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
