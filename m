From: "Mukund JB`." <mukundjb@esntechnologies.co.in>
Subject: RE: Mount the SD card formatted using the DIGITAL CAMREA on Linux box but HOW?
Date: Wed, 17 Aug 2005 21:54:53 +0530
Message-ID: <3AEC1E10243A314391FE9C01CD65429B3808@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck@gelm.net
Cc: linux-newbie@vger.kernel.org

>> #fdisk -lV /dev/tfa0 (both camera & windows are same result)
>>
>> Disk /dev/tfa0: 448 cylinders, 2 heads, 32 sectors/track
>> Units = cylinders of 32768 bytes, blocks of 1024 bytes, counting from
0
>>
>>    Device Boot Start     End   #cyls    #blocks   Id  System
>> /dev/tfa0p1   *      0+    449     450-     14371+   1  FAT12
>> /dev/tfa0p2          0       -       0          0    0  Empty
>> /dev/tfa0p3          0       -       0          0    0  Empty
>> /dev/tfa0p4          0       -       0          0    0  Empty
>> Warning: partition 1 extends past end of disk
>
>  Thanks.  It seems to me that this partitioning is different or wrong.
>Let us see what filesystems are present on the cards:
>
>fdisk -T /dev/tfa0p1
FAT12 is fs found on both the windows formatted & CAM formatted SD cards

>
>Does your linux system support filesystem type fat12?
Yes, My Linux supports FAT12. It is able to mount the FAT12 windows
formatted SD.

>What filesystem does your windows o/s put on the SD media?
>
FAT12
>What filesystem does your camera put on the media?
>
FAT12
>Does your linux system support the same filesystem as your camera ?
>
Yes it support FAT12.

fdisk -l -u /dev/tfa0:
debdev1:~# fdisk -l -u /dev/tfa0

Disk /dev/tfa0: 14 MB, 14680064 bytes
2 heads, 32 sectors/track, 448 cylinders, total 28672 sectors Units =
sectors of 1 * 512 = 512 bytes

   Device Boot      Start         End      Blocks   Id  System
/dev/ tfa0p1		57       28799       14371+   1  FAT12

On a keen look on the above fdisk output on my 16MB SD card, you can
find the cylinder information as 448 where as my driver ioctl returns
450.

I have found from the partition table that Total n/o sector for the
primary partition is 28743 (total sectors).
But my ioctl returns total cylinders as 450 i.e. 28800 sectors.
As 28743 is NOT any multiple of 64(2*32)i.e sectors*heads, the fdisk
tried manipulates it to get multiples of 64.
So, finally the best multiple 448 cylinders (i.e. 28672 sector)
So, finally that NOT a BUG in the driver instead is a generalization
made by fdisk command.

Regards,
Mukund Jampala
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
