From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: Slack9.0/Atapi-ZIP250???
Date: Mon, 30 Jun 2003 21:44:18 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAKEECELAA.Riley@Williams.Name>
References: <Pine.LNX.4.53.0306301419160.466@veclin.office>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306301419160.466@veclin.office>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "James Miller (office)" <jamtat@mailsnare.net>, linux-newbie <linux-newbie@vger.kernel.org>

Hi James.

 >>>>> This box w/Slack8.0/2.4.18; running AOK with an Atapi ZIP250
 >>>>> internal, as /dev/sda4, as long as I insmod ide-scsi.o..
 >>>>> (That file also installs sd_mod.o )..

 >>>> You're doing this wrong. I have the Atapi Zip100 internal. It
 >>>> does not need the ide-scsi.co. Just set it up like this:
 >>>>
 >>>> /dev/hdc4       /zip            auto    noauto,user 0 0
 >>>>
 >>>> You only need the scsi stuff when using the external type Zip
 >>>> (which I also have).

 >>> Greetings and - Gad Zooks.. Where did you discover the above?
 >>> Everything I've read about ZIP drives say they _must_ use scsi
 >>> emulation..

 >> SCSI emulation is needed for PARALLEL PORT and SCSI INTERFACE zip
 >> drives only - and NOT for ATAPI IDE zip drives - UNLESS you included
 >> the string "hdc=ide-scsi" as a kernel parameter. If you did that,
 >> then you told the kernel to use the ide-scsi driver to access the
 >> drive in the secondary master IDE position independent of whether
 >> such was necessary or not.

 > Doesn't scsi emulation also apply to USB Zip (and other IDE) devices
 > as well? I have an external Zip100 drive that plugs into the computer
 > via USB, and it appears under the /dev/sdaX node. It shows up as a
 > scsi device, even though it's apparently using some sort of IDE to 
 > USB trickery - which makes me believe that these also use scsi
 > emulation. I could be seriously miscomprehending - an ever-present
 > danger to my semi computer-literate cognitive apparatus.

I know zilch about the USB version, which is why I specifically didn't
mention it in the above. However, from your description, the USB models
appear to the computer as being a USB-SCSI interface with a SCSI Zip
drive behind it. In that case, they would use the relevant SCSI driver.

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
