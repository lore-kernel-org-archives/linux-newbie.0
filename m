From: Ray Olszewski <ray@comarre.com>
Subject: Re: make burner operating
Date: Fri, 23 Aug 2002 09:08:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020823085930.02276550@celine>
References: <19588.1030108314@www26.gmx.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <19588.1030108314@www26.gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Matthiaseifert@gmx.de, linux-newbie@vger.kernel.org

I am not certain of what your problem is. I see two candidates.

First, the entry in /etc/lilo/conf should read:

         append="hdc=ide-scsi"

Not what you entered:
         hdc = ide-scsi

The corresponding entry for the DVD drive doesn't matter here. And you do 
know to *run* lilo after making this change, right?

Second, on my (Debian Sid) system, I had to load a series of kernel modules 
explicitly, not rely on modprobe to get the dependencies right. The 
sequence I loaded was:

         # the stuff to enable ide-scsi emulation for the CD-ROM
         scsi_mod
         sr_mod scd0
         sg
         ide-scsi

This may be overkill ... but check using "lsmod" to see if your procedure 
loads all of these modules. (The error message you get from cdrecord makes 
me think you missed something.)

BTW, you should need to use ide-scsi emulation *only* for the writer, not 
also for the DVD (at least that is how I do it, and I encounter no problems 
accessing the DVD drive).

Finally, kernel 2.4.0 is old and probably flaky. I run 2.4.17 on my 
workstation.

At 03:11 PM 8/23/02 +0200, Matthiaseifert@gmx.de wrote:

>I'd like to make my CD-ROM burning device working but failed as yet.
>
>This is what I have:
>
>    Distro:    SuSE 7.1 Kernel 2.4.0
>    Writer:    Samsung CD-R/RW SW-208 F ATAPI    ( = /dev/hdc/ )
>    CD-ROM:    Toshiba DVD-ROM SD-M1502 ATAPI    ( = /dev/hdb/ )
>
>This is what I've tried:
>
>    1) added the following lines into /etc/lilo.conf/
>       hdb = ide-scsi
>       hdc = ide-scsi
>
>    2) added the following line into /etc/init.d/boot.local
>       /sbin/modprobe ide-scsi
>
>    3) made the following links
>       ln -sf /dev/scd0 /dev/cdrecorder     // this is the burning device
>       ln -sf /dev/scd1 /dev/cdrom          // and the regular CD-ROM drive
>
>    4) rebooted the machine
>
>and as a result i lost both drives (either of the drives can't be mounted).
>:-(
>
>cdrecord -scanbus gives me the following errmsg:
>
>    Cdrecord 1.9 (i686-suse-linux) Copyright (C) 1995-2000 Joerg Schilling
>    cdrecord: Datei oder Verzeichnis nicht gefunden. Cannot open SCSI driver.
>    cdrecord: For possible targets try 'cdrecord -scanbus'. Make sure you are
>root.
>
>btw: up to now both drives worked fine (except for burning).
>
>Can somebody pls. tell me what I'm doing wrong or what I've missed?


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
