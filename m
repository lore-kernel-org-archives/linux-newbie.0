From: Matthiaseifert@gmx.de
Subject: make burner operating
Date: Fri, 23 Aug 2002 15:11:54 +0200 (MEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <19588.1030108314@www26.gmx.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


Subj: make burner operating

Hi all!

I'd like to make my CD-ROM burning device working but failed as yet.

This is what I have:

   Distro:    SuSE 7.1 Kernel 2.4.0
   Writer:    Samsung CD-R/RW SW-208 F ATAPI    ( = /dev/hdc/ )
   CD-ROM:    Toshiba DVD-ROM SD-M1502 ATAPI    ( = /dev/hdb/ ) 

This is what I've tried:

   1) added the following lines into /etc/lilo.conf/
      hdb = ide-scsi
      hdc = ide-scsi

   2) added the following line into /etc/init.d/boot.local
      /sbin/modprobe ide-scsi

   3) made the following links
      ln -sf /dev/scd0 /dev/cdrecorder     // this is the burning device
      ln -sf /dev/scd1 /dev/cdrom          // and the regular CD-ROM drive

   4) rebooted the machine

and as a result i lost both drives (either of the drives can't be mounted).
:-(

cdrecord -scanbus gives me the following errmsg:

   Cdrecord 1.9 (i686-suse-linux) Copyright (C) 1995-2000 Joerg Schilling
   cdrecord: Datei oder Verzeichnis nicht gefunden. Cannot open SCSI driver.
   cdrecord: For possible targets try 'cdrecord -scanbus'. Make sure you are
root.

btw: up to now both drives worked fine (except for burning).

Can somebody pls. tell me what I'm doing wrong or what I've missed?

Thanks in advance,
have a nice weekend!

Matthias

-- 
GMX - Die Kommunikationsplattform im Internet.
http://www.gmx.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
