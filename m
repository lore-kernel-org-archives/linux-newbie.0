From: Thorsten Alge <mail@thorsten-alge.de>
Subject: usb-storage
Date: Mon, 02 Feb 2004 17:59:44 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1075668862.6528.4.camel@Abydos>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

hi,

i have some problems with my USB-Harddisk. When i plug it in, i got the
following errors:

hub.c: new USB device 00:09.3-6.1, assigned address 3
usb.c: USB device 3 (vend/prod 0x5e3/0x702) is not claimed by any active
driver.
Initializing USB Mass Storage driver...
usb.c: registered new driver usb-storage
scsi1 : SCSI emulation for USB Mass Storage devices
  Vendor: FUJITSU   Model: MHR2030AT         Rev: 0811
  Type:   Direct-Access                      ANSI SCSI revision: 02
Attached scsi disk sda at scsi1, channel 0, id 0, lun 0
SCSI device sda: 58605120 512-byte hdwr sectors (30006 MB)
 sda:<6>Device not ready.  Make sure there is a disc in the drive.
usb_control/bulk_msg: timeout
...
usb_control/bulk_msg: timeout

I dont know how to fix it. can anyone help??


thanks, 

thorsten


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
