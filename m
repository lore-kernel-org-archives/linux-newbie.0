From: chuck gelm <chuck@gelm.net>
Subject: Re: Mount the SD card formatted using the DIGITAL CAMREA on Linux
 box but HOW?
Date: Wed, 10 Aug 2005 07:32:39 -0400
Message-ID: <42F9E5D7.7010909@gelm.net>
References: <C349E772C72290419567CFD84C26E017042711@mail.esn.co.in>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E017042711@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

Dear Mukund JB:

  It seems to me that the partition table is in error.
My digital camera formats my CF media as a single fat12 partition.
Both 'sfdisk' and 'fdisk' report a partition error on the first partition.

  I am still wondering if your two SD media cards were originally
formatted with four (4) partitions as 'sfdisk -l' displays?
I would like to assume that both cards were originally formatted
with a single fat12 partition.

more comments inline...

Mukund JB. wrote:
> Dear chem.,
> See my inline comments.
> 
> 
>>>I have an SD card problem that mounts when formatted on windows but
>>>fails when formatted on camera as you all know.
>>>
>>>Now, I an able mount the SD card formatted using the DIGITAL CAMREA
> 
> on
> 
>>>Linux box using the windows formatted SD cards first 512 bytes.
>>
>> Uh, which is it?
>>"formatted using the DIGITAL CAMREA"
>> or
>>"windows formatted SD cards"
> 
> 
> The SD car that is formatted in windows is mounting but the SD card
> formatted in Digital CAMRA is NOT mounting. 
> 
> 
>> Is the SD card formatted by the camera or by windows?
>>
>>What is the result of "fdisk -l" of this SD card?
> 
> 
> #fdisk -lV /dev/tfa0 (both camera & windows are same result)
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

  Thanks.  It seems to me that this partitioning is different or wrong.
Let us see what filesystems are present on the cards:

fdisk -T /dev/tfa0p1

Does your linux system support filesystem type fat12?
more...

>>I recall that you are using 'sfdisk' and that it reported an error
>>in the partitioning scheme of that SD card.
>>
>>Of less significance:  How did the partitioning get corrupted?
>>Did it happen after using 'sfdisk' to modify the SD card's partitions?
> 
> The SD card that is formatted on DIGITAL CAMARA is NOT mounting in
> Linux.
> It says:
> 
> #Mount -t /dev/tfa0 /mnt
> FAT: bogus number of reserved sectors
> Mount: wrong fs type, bad option, bas superblock on /dev/tfa0,
> 	 or too many mounted file systems

  I have used the mount command's -t option with an argument; i.e.
auto, fat12, iso9660, ...

  -and-

you did not specify which partition to mount; i.e.

mount -t fat12 /dev/tfa0p1 /mnt/mountpoint
                         ^^
  I would expect your mount command to fail due to these two omissions.

more...

> So, I tried the sfdisk -lV to know the configuration. However, sfdisk is
> a read-only command & it will NOT alter the partition table.

  I believe that 'sfdisk' is capable of altering a partition table.
 From 'man sfdisk':

"Create partitions
  The fourth type of invocation: sfdisk  device  will  cause
  sfdisk  to  read  the specification for the desired parti-
  tioning of device from its standard  input,  and  then  to
  change the partition tables on that disk. Thus, it is pos-
  sible to use sfdisk  from  a  shell  script.  When  sfdisk
  determines  that its standard input is a terminal, it will
  be conversational; otherwise it will abort on any error.

  BE EXTREMELY CAREFUL - ONE TYPING  MISTAKE  AND  ALL  YOUR DATA IS LOST"

> The partition table is NOT corrupted as we are able to mount the SD card
> on Windows.


>>If yes, perhaps using 'sfdisk' is not the appropriate application
>>to modify the SD card's partitions.
>>
>> I am guessing that you may need to use a partitioning application
>>to restore the SD card to something that the camera will recognize.
>>I fear that the application to accomplish this is not 'sfdisk'.
>>HTH, Chuck
> 
> 
> So, point here why it is mounting when I alter the first 512 bytes as
> like windows formatted device using dd?

  Because, using 'dd, you made the other SD media 'look like' the
windows formatted SD media.

What filesystem does your windows o/s put on the SD media?

fdisk -T /dev/tfa0p1

What filesystem does your camera put on the media?

fdisk -T /dev/tfa0p1

Does your linux system support the same filesystem as your camera ?

cat /proc/filesystems

Does your windows o/s format the SD media with the same filesystem as your camera ?

HTH, Chuck

> Regards,
> Mukund Jampala


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
