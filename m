From: David Yeu <dyeu@tulane.edu>
Subject: Re: SCSI Emulation w/ DMA
Date: Tue, 20 Aug 2002 09:22:54 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D6250BE.10202@tulane.edu>
References: <5.1.0.14.1.20020819153832.020ec500@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Thanks for the help Ray...

To answer your questions:
I'm using a Plextor 24X with the command, 'cdrdao write toc.file',
and I'm burning a mix of isos and music cds.
Under Windows, this process never seemed to take more than three
and a half minutes, but with Linux, average burn times hover around
four and change.  Now I know, thirty seconds isn't much to whine over,
but I was just curious to see if it was something I had failed to do.
I read both the CD-ROM HOW-TO, and the CD-Writing HOW-TO, but I must
have missed the illuminating section.

More interestingly, the burner I have at work is a generic Lite-On
24/10/40, and it usually takes anywhere from 8-10 minutes to burn
a cd, under both Windows and Linux.  I never gave it much thought,
however, because hey I'm at work, and I might as well take the
opportunity to grab a coffee and a cigarette.

Dave.


Ray Olszewski wrote:
> Even though you have scsi emulation enabled, there is an ide driver 
> hidden in the demimonde of your system that the scsi emulator 
> communicates through. It is the ide driver, the part that actually talks 
> to the hardware, that either has DMA on or off.
> 
> Almost surely, the message you are seeing means that DMA is off. To 
> check it, run "hdparm /dev/hdc" and see that the resulting report says 
> about DMA. If you want to turn it on, run (as root) "hdparm -d 1 
> /dev/hdc". If you always want it on, add that line to one of the 
> system's  init scripts (probably whatever corresponds to rclocal on your 
> system).
> 
> Now I am not at all sure about this next part ... but I doubt that the 
> DMA setting is what is making your CD burns slow. How are you burning 
> (what is the actual command-line string you send)? What speed is your 
> drive? How long is it taking to burn (your "a little slow" could be 
> someone else's "fast")? What are you burning (iso images? copies of 
> music CDs? VCDs?)
> 
> At 04:57 PM 8/19/02 -0500, David Yeu wrote:
> 
>> Hi everyone,
>>
>> I have SCSI emulation on my CDR drive in order to burn and the like,
>> but I was confused by the following entries in /var/log/messages...
>>
>> ----------------------------------------------------------------------
>> Aug  5 12:18:48 localhost kernel: SCSI subsystem driver Revision: 1.00
>> Aug  5 12:18:19 localhost rc.sysinit: Setting clock  (localtime): Mon
>> Aug  5 12:18:13 UTC 2002 succeeded
>> Aug  5 12:18:49 localhost kernel: scsi0 : SCSI host adapter emulation
>> for IDE ATAPI devices
>> Aug  5 12:18:19 localhost rc.sysinit: Loading default keymap succeeded
>> Aug  5 12:18:49 localhost kernel:   Vendor: LITE-ON   Model: LTR-24102B
>>         Rev: 5S0J
>> Aug  5 12:18:19 localhost rc.sysinit: Setting default font (lat0-sun16):
>>   succeeded
>> Aug  5 12:18:49 localhost kernel:   Type:   CD-ROM        ANSI SCSI
>> revision: 02
>> Aug  5 12:18:19 localhost rc.sysinit: Activating swap partitions:  
>> succeeded
>> Aug  5 12:18:49 localhost kernel: hdc: DMA disabled
>> -----------------------------------------------------------------------
>>
>> The last line says that DMA is disabled, but it refers to hdc.  Since
>> my /dev/cdrom is linked to /dev/scd0, and /dev/cdrecorder is linked
>> to /dev/sg0, does that mean DMA is working anyhow?  How can I tell?
>>
>> (I was prompted into peeking around after burning seemed a little
>> slow..)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
