From: chuck gelm <chuck@gelm.net>
Subject: Re: Burn Mulitple cd's at once?
Date: Wed, 01 Feb 2006 08:20:39 -0500
Message-ID: <43E0B5A7.3090907@gelm.net>
References: <dr8g79$4fb$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <dr8g79$4fb$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Todd Patton <Todd@acpdata.com>
Cc: linux-newbie@vger.kernel.org

Todd Patton wrote:

> Does anyone know if this is possible in Linux. I can do it in M$ Win 
> with Nero but the NEroLinux left this feature off. Basically I want to 
> burn 4 copies of a folder or image at the same time. Thank you for any 
> responses.
>
George Ewing wrote:

>Is Linux able to utilize multiple CD or DVD drives to burn multiple copies of
>the same iso file at the same time?
>
>If so, how?
>
>Thanks
>
>George
>  
>
Hi, Todd:

(Your query was very similar to a recent one on the linux-sig@dma.org 
mail list.
 Subject: [Linux-SIG] multiple CD burner)

Yes.  I did it last night.  Here is what I have and what I did.
Slackware v10.2, kernel 2.4.31, (cdrecord seems to be a soft link to
Cdrecord-Clone v2.01 by J. Schilling) Linux sg driver version 3.1.25.

I have a CD-RW(52x) in /dev/hdc and a DVD-RW(CD-40x) in /dev/hdd.
Both use SCSI emulation initiated in lilo.conf as
append="hdc=ide-scsi hdd=ide-scsi".

cdrecord -scanbus
0,0,0  CD-RW
0,1,0 DVD-RW

ln -s /dev/sr0 /mnt/cdrom
ln -s /dev/sr1 /mnt/dvd

/#!/bin/bash/
/#/
/# /usr/local/bin/burn2xcd.sh/
/#/

eject /dev/sr0
eject /dev/sr1

*cat* /usr/local/bin/burn2xcd.sh

****  *cdrecord* -eject dev=0,0,0 fs=64M driveropts=burnproof gracetime=2 $1 *>* /home/sr0.txt *&*
  *cdrecord* -eject dev=0,1,0 fs=64M driveropts=burnproof gracetime=2 $1 *>* /home/sr1.txt 
//

# end /usr/local/bin/burn2xcd.sh

  First burn was from a 618MB file over my 100 MB network with 'speed=24'
specified on both commands.  It took nearly 20 minutes with a reported 
speed of 3.6x.  :-|

 Next, I removed the speed specification and copied the ISO file to a 
local drive.
'burn2xcd.sh'  then displayed burning the CD at 48x and the (CD in the) 
DVD at 40x .
Although the CD burn was started in the first line and the DVD drive in 
the second and
the CD speed was 48x and the DVD 40x, the DVD finished first.  :-| 
I did not find the exact time elapsed, but it seemed to be in the 5-10 
minute range.

 To decrease the elapsed time of the media burn, one might put each 
media writer
on a separate controller (I have some Maxtor/Promise ATA-100 and ATA-133
IDE controllers) and put copies of the ISO images on separate drives on 
separate
controllers.  Best might be putting the ISO image(s) in a RAMDISK!  ;-)

 If you simply want to make as many copies as you have controllers at 
one time
and come back hours later, just leave of the "&" and let the commands run
one at a time.

 If you are to copy as fast as possible and stay with the computer to 
exchange media,
then perhaps multiple consoles, one for each drive, with the ISO image 
in RAMDISK,
and the writers on separate controllers.

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
