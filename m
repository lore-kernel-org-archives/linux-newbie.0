From: David Yeu <dyeu@tulane.edu>
Subject: SCSI Emulation w/ DMA
Date: Mon, 19 Aug 2002 16:57:48 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D6169DC.1020700@tulane.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi everyone,

I have SCSI emulation on my CDR drive in order to burn and the like,
but I was confused by the following entries in /var/log/messages...

----------------------------------------------------------------------
Aug  5 12:18:48 localhost kernel: SCSI subsystem driver Revision: 1.00
Aug  5 12:18:19 localhost rc.sysinit: Setting clock  (localtime): Mon
Aug  5 12:18:13 UTC 2002 succeeded
Aug  5 12:18:49 localhost kernel: scsi0 : SCSI host adapter emulation
for IDE ATAPI devices
Aug  5 12:18:19 localhost rc.sysinit: Loading default keymap succeeded
Aug  5 12:18:49 localhost kernel:   Vendor: LITE-ON   Model: LTR-24102B
         Rev: 5S0J
Aug  5 12:18:19 localhost rc.sysinit: Setting default font (lat0-sun16):
   succeeded
Aug  5 12:18:49 localhost kernel:   Type:   CD-ROM        ANSI SCSI
revision: 02
Aug  5 12:18:19 localhost rc.sysinit: Activating swap partitions:  succeeded
Aug  5 12:18:49 localhost kernel: hdc: DMA disabled
-----------------------------------------------------------------------

The last line says that DMA is disabled, but it refers to hdc.  Since
my /dev/cdrom is linked to /dev/scd0, and /dev/cdrecorder is linked
to /dev/sg0, does that mean DMA is working anyhow?  How can I tell?

(I was prompted into peeking around after burning seemed a little
slow..)

Thanks in advance,
Dave.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
