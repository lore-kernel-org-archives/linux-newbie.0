From: chuck gelm <chuck@gelm.net>
Subject: Re: Card Reader
Date: Thu, 07 Apr 2005 22:24:42 -0400
Message-ID: <4255EB6A.80405@gelm.net>
References: <d345eq$cuc$1@sea.gmane.org> <5.1.0.14.1.20050407142351.0202e3e0@celine> <d349ga$qln$1@sea.gmane.org> <4255B0C6.5000203@gelm.net> <d34drn$722$1@sea.gmane.org> <Pine.LNX.4.60.0504080206320.885@grinch.ro> <d34fua$c59$1@sea.gmane.org>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d34fua$c59$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: smertens@mho.com
Cc: linux-newbie@vger.kernel.org

Mounting thumb drive.

On my two Slackware 9.1 (kernel 2.4.22) systems
each mounted my thumbdrive (Sandisk microcruzer 128 MB) with

mount /dev/sda1 /mnt/hd

df -T indicated that it was a 'umsdos' filesystem.

Slackware v10.0 & 10.1's kernel (2.4.26 & 2.4.29) found a
  /dev/sda1 device and I could

mount /dev/sda1 /mnt/hd
  and
df -T indicated that it was a 'msdos' filesystem.


tail /var/log/messages indicated that the kernel found a
/dev/sda1 USB device.

Does your kernel find your USB device and put information into
/var/log/messages?

...
Apr  7 21:59:40 g2000 kernel: hub.c: new USB device 00:10.3-1, assigned 
address 2
Apr  7 21:59:43 g2000 kernel: Initializing USB Mass Storage driver...
Apr  7 21:59:43 g2000 kernel: usb.c: registered new driver usb-storage
Apr  7 21:59:43 g2000 kernel: scsi1 : SCSI emulation for USB Mass 
Storage devices
Apr  7 21:59:43 g2000 kernel:  sda: sda1
Apr  7 21:59:43 g2000 kernel: USB Mass Storage support registered.
...

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
