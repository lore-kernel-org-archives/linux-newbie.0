From: "mohammed shareef" <mdshareef@gmail.com>
Subject: unknown partition table
Date: Mon, 16 Jun 2008 23:13:22 +0530
Message-ID: <a1d91fa0806161043w108cfe67o51ebc0ec45cb8fe7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=BkNiHRoJRT4rl0qBJJjtgZLCQKtZaWSWOBjrVbM6rzI=;
        b=SivMrSUF5eTLJtkbVe+E2Zilaox1rAAY9rB0ddMTcFMyU/+gc/c3bfpBNhkMihnnhY
         4Xq+IHIzBmKgN5c1s6+Kv2jpA1+NRo/XT4yEAPmnu0/7hJdP+GM2R4lAf3YM2PwLhicb
         rQWxc6eQlKBTYmx9Q/lXW6GglUk9lYGV8t76k=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: omap <linux-omap@vger.kernel.org>, linux-newbie@vger.kernel.org

Hi,

I am trying to configure usb host on the osk to mount flash pen-drives.

when i do mount i get the following error:
"unknown partition table"

has someone else come across the same kind of issue?

# mount /dev/sda1 /mnt/usb -t vfat
nfs: server 10.114.5.48 not responding, still trying
nfs: server 10.114.5.48 OK
ohci ohci: wakeup
usb 1-1: new full speed USB device using ohci and address 2
usb 1-1: configuration #1 chosen from 1 choice
scsi0 : SCSI emulation for USB Mass Storage devices
  Vendor: CBM       Model: Flash Disk        Rev: 5.00
  Type:   Direct-Access                      ANSI SCSI revision: 02
SCSI device sda: 2051072 512-byte hdwr sectors (1050 MB)
sda: Write Protect is off
sda: assuming drive cache: write through
SCSI device sda: 2051072 512-byte hdwr sectors (1050 MB)
sda: Write Protect is off
sda: assuming drive cache: write through
 sda:<7>usb-storage: queuecommand called
 unknown partition table
sd 0:0:0:0: Attached scsi removable disk sda

thank you,
regards,
Shareef
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
