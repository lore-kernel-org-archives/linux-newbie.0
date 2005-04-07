From: smertz <smertens@mho.com>
Subject: Re: Card Reader
Date: Thu, 07 Apr 2005 15:44:49 -0600
Message-ID: <d349ga$qln$1@sea.gmane.org>
References: <d345eq$cuc$1@sea.gmane.org> <5.1.0.14.1.20050407142351.0202e3e0@celine>
Reply-To: smertens@mho.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050407142351.0202e3e0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> At 02:35 PM 4/7/2005 -0600, smertz wrote:
> 
>> I have a new computer I installed Linux on Red Hat Enterprise Linux ES 
>> release 4 (Nahant), it has one of those all-in-one card readers on it. 
>> I have made mountpoints as root as follows for my thumb, Compact flash 
>> and secure digital drive.
>>
>> mkdir /mnt/thumb
>> mkdir /mnt/cf
>> mkdir /mnt/sd
>>
>>
>> Now when I tried to mount the Thumb (USB) drive I got an error # mount 
>> /dev/sda2 /mnt/thumb
>> mount: /dev/sda2 already mounted or /mnt/thumb busy.
>>
>>
>> So what have I done wrong? I'm thinking sda2 is wrong, but don't know 
>> why?
>>
>> df -h shows the following
>>
>> [root localhost mnt]# df -h
>> Filesystem            Size  Used Avail Use% Mounted on
>> /dev/mapper/VolGroup00-LogVol00
>>                      183G  2.9G  171G   2% /
>> /dev/sda1              99M   19M   76M  20% /boot
>> none                  247M     0  247M   0% /dev/shm
>> [root localhost mnt]#
> 
> 
> You don't tell us anything about your hardware, so any responses really 
> are largely guesses. From the df output you show above, I'd infer that 
> sda is a physical hard disk of some type.
> 
> The card reader, then, is more likely sdb than sda, so I'd be trying 
> sdb1 or sdb2 for the thumbdrive. Each possible device will have a 
> different sdb* value, and figuring oout which is which is largely 
> guesswork ... unless you're lucky enough to have a kernel with the sort 
> of USB support for hotplugging that tells you where things connect to 
> (in my experience, output to the console.
> 
> See what "more /proc/scsi/scsi" tells you about what the kernel *thinks* 
> is connected. Please include this info if you need to post a followup.
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
This is the last few lines from dmesg.  Based on this how would one 
mount if I have made the mountpoint of /mnt/thumb

SCSI device sdc: 256000 512-byte hdwr sectors (131 MB)
sdc: Write Protect is off
sdc: Mode Sense: 02 00 00 00
sdc: assuming drive cache: write through
  sdc: sdc1
Attached scsi removable disk sdc at scsi3, channel 0, id 0, lun 0
USB Mass Storage device found at 4

Red Hat Enterprise Linux ES release 4 (Nahant)


$ cat /proc/scsi/scsi
Attached devices:
Host: scsi0 Channel: 00 Id: 00 Lun: 00
   Vendor: ATA      Model: ST3200822AS      Rev: 3.02
   Type:   Direct-Access                    ANSI SCSI revision: 05
Host: scsi2 Channel: 00 Id: 00 Lun: 00
   Vendor: eM       Model: Bay Reader       Rev: 1.00
   Type:   Direct-Access                    ANSI SCSI revision: 02



Thanks

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
