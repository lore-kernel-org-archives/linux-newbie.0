From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: Mount the SD card formatted using the DIGITAL CAMREA on Linux box but HOW?
Date: Tue, 9 Aug 2005 10:24:54 +0530
Message-ID: <C349E772C72290419567CFD84C26E017042711@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck@gelm.net
Cc: linux-newbie@vger.kernel.org

Dear chem.,
See my inline comments.

>> I have an SD card problem that mounts when formatted on windows but
>> fails when formatted on camera as you all know.
>>
>> Now, I an able mount the SD card formatted using the DIGITAL CAMREA
on
>> Linux box using the windows formatted SD cards first 512 bytes.
>
>  Uh, which is it?
>"formatted using the DIGITAL CAMREA"
>  or
>"windows formatted SD cards"

The SD car that is formatted in windows is mounting but the SD card
formatted in Digital CAMRA is NOT mounting. 

>  Is the SD card formatted by the camera or by windows?
>
>What is the result of "fdisk -l" of this SD card?

#fdisk -lV /dev/tfa0 (both camera & windows are same result)

Disk /dev/tfa0: 448 cylinders, 2 heads, 32 sectors/track
Units = cylinders of 32768 bytes, blocks of 1024 bytes, counting from 0

   Device Boot Start     End   #cyls    #blocks   Id  System
/dev/tfa0p1   *      0+    449     450-     14371+   1  FAT12
/dev/tfa0p2          0       -       0          0    0  Empty
/dev/tfa0p3          0       -       0          0    0  Empty
/dev/tfa0p4          0       -       0          0    0  Empty
Warning: partition 1 extends past end of disk

>I recall that you are using 'sfdisk' and that it reported an error
>in the partitioning scheme of that SD card.
>
>Of less significance:  How did the partitioning get corrupted?
>Did it happen after using 'sfdisk' to modify the SD card's partitions?
The SD card that is formatted on DIGITAL CAMARA is NOT mounting in
Linux.
It says:

#Mount -t /dev/tfa0 /mnt
FAT: bogus number of reserved sectors
Mount: wrong fs type, bad option, bas superblock on /dev/tfa0,
	 or too many mounted file systems

So, I tried the sfdisk -lV to know the configuration. However, sfdisk is
a read-only command & it will NOT alter the partition table.
The partition table is NOT corrupted as we are able to mount the SD card
on Windows.

>If yes, perhaps using 'sfdisk' is not the appropriate application
>to modify the SD card's partitions.
>
>  I am guessing that you may need to use a partitioning application
>to restore the SD card to something that the camera will recognize.
>I fear that the application to accomplish this is not 'sfdisk'.
>HTH, Chuck

So, point here why it is mounting when I alter the first 512 bytes as
like windows formatted device using dd?

Regards,
Mukund Jampala

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
