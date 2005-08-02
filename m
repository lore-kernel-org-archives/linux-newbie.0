From: chuck gelm <chuck@gelm.net>
Subject: Re: Unable to mount the SD card formatted using the DIGITAL CAMREA
 on Linux box
Date: Tue, 02 Aug 2005 18:18:55 -0400
Message-ID: <42EFF14F.4050106@gelm.net>
References: <C349E772C72290419567CFD84C26E017042219@mail.esn.co.in>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E017042219@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

Mukund JB. wrote:
> Dear all,
> 
> I have problem in mounting my SD device.
> I have a commotion in resolving an issue with sfdisk info.
> The sfdisk displays my device partition and cylinder info as follows.
> 
> #sfdisk -lV /dev/tfa0
> 
> Disk /dev/tfa0: 448 cylinders, 2 heads, 32 sectors/track
> Units = cylinders of 32768 bytes, blocks of 1024 bytes, counting from 0
> 
>    Device Boot Start     End   #cyls    #blocks   Id  System
> /dev/tfa0p1   *      0+    449     450-     14371+   1  FAT12
> /dev/tfa0p2          0       -       0          0    0  Empty
> /dev/tfa0p3          0       -       0          0    0  Empty
> /dev/tfa0p4          0       -       0          0    0  Empty
> Warning: partition 1 extends past end of disk
> 
> The SD card driver is returning the following info to the HDIO_GETGEO
> ioctl called from sfdisk.
> ------------- driver messages ---------------------------
> TIFM INFO | <tifm_ioctl> invoked! 
> TIFM INFO | <GetGeometry_ioctl> geo.cylinders = 450
> TIFM INFO | <GetGeometry_ioctl> geo.heads = 2
> TIFM INFO | <GetGeometry_ioctl> geo.sectors = 32
> TIFM INFO | <GetGeometry_ioctl> geo.start = 0
> 
> When we have a close look at the cylinder info returned by driver &
> sfdisk, they differ. 
> When I refer to the SD card manufacture spec, it reveals the n/o
> cylinders are 450. So, driver is returning the exact/proper cylinder
> value.
> 
> Why is sfdisk giving improper cylinder info?
> Can some one explain me how this mismatch info between the driver and
> application can effect my mounting of my device?
> I assume HDIO_GETGEO is the only way sfdisk communicates with the
> driver.
> 
> Regards,
> Mukund Jampala
SFDISK(8)           Linux Programmer's Manual           SFDISK(8)

NAME
        sfdisk - Partition table manipulator for Linux

SYNOPSIS
        sfdisk [options] device
        sfdisk -s [partition]

DESCRIPTION
        sfdisk has four (main) uses:
         list the size of a partition,
         list the partitions on a device,
         check the partitions on a        device, and
         - very dangerous - repartition a device.

Uh, let me repeat that last line:
  - very dangerous - repartition a device.

I suggest using fdisk to partition the device or let your
camera (re)format the media.

HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
