From: chuck gelm <chuck@gelm.net>
Subject: Re: Linux FAT12 mount issue (digital media problem)
Date: Fri, 29 Jul 2005 16:52:39 -0400
Message-ID: <42EA9717.4020808@gelm.net>
References: <C349E772C72290419567CFD84C26E017042020@mail.esn.co.in>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E017042020@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

Mukund JB. wrote:
> Dear all,
> 
> I have a problem with mounting the SD cards formatted on the digital
> camera on my Linux BOX. But I am able to mount and access the same
> devices on WinXP. 
> 
> I think someone might have faced the same problem. Did u find some
> solution to this? Please convey if any.
> 
> When I have tried to find the fs type SD card formatted in camera.
> I found it to be FAT12. Does the linux kernel have the support for FAT12
> fs?
> I suppose it does. But, why am I not able to mount the device.
> 
> Regards,
> Mukund jampala

Dear Mukund JB:

  What did you do that did not work?
I have difficulty also, from time to time, mounting my
Compact Flash device using a CF->USB media reader.

  You may simply be missing the needed drivers.  :-|

I have 'usb-storage' listed when I:
# lsmod

  I first insert the memory device onto the reader.
  Then connect the USB cable to my computer.
# tail -f /var/log/messages

Jul 29 14:42:24 g2000 kernel: hub.c: new USB device 00:10.3-1, assigned address 2
Jul 29 14:42:27 g2000 kernel: Initializing USB Mass Storage driver...
Jul 29 14:42:27 g2000 kernel: usb.c: registered new driver usb-storage
Jul 29 14:42:27 g2000 kernel: scsi1 : SCSI emulation for USB Mass Storage devices
Jul 29 14:42:27 g2000 kernel:  sda: sda1
Jul 29 14:42:27 g2000 kernel: USB Mass Storage support registered.

Then I:

# mount /dev/sda1 /mnt/hd

# df -T

To show mounted filesystems and types.
Mine shows type 'vfat' for my Compact Flash -> USB device.

# tail -f /var/log/messages

To show errors

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
