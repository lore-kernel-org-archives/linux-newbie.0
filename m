From: Ray Olszewski <ray@comarre.com>
Subject: Re: Setting up CD-RW
Date: Wed, 09 Oct 2002 19:35:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021009192849.025bc970@celine>
References: <200210100941.51738.azie@kawan.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210100941.51738.azie@kawan.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; 
To: azie@kawan.net, linux-newbie@vger.kernel.org

cdrecord expects CD-RW drives to be SCSI and does not know how to work =
with=20
IDE drives. (I think cdrdao also expects SCSI driver, but you might wan=
t to=20
check that.)

This limitation isn't as bad as it sounds; the Linux kernel knows how t=
o=20
"fake" SCSI values for IDE devices. The kernel driver is the one for=20
scsi-ide emulation.

To make it work, you need to load these modules (or have equivalent=20
functionality compiled directly into the kernel):

         # the stuff to enable ide-scsi emulation for the CD-ROM
         scsi_mod
         sr_mod scd0
         sg
         ide-scsi

You also need to tell the kernel at boot time what IDE device(s) to tre=
at=20
as SCSI. You do this with a lilo.conf entry like this one:

         append=3D"hdd=3Dide-scsi"

(Change "hdd" to the IDe designator appropriate to your setup, of cours=
e).

There may be other details that are slipping my mind right now. (I copi=
ed=20
these bits from my own setup here, but it's been some time since I set =
one=20
of these up, so the steps are not fresh in my memory.) I think there is=
 a=20
CD-RW HowTo; you might check at ibiblio for it.

At 09:41 AM 10/10/02 +0800, azie wrote:
>Hello,
>
>I just bought a CD-RW and I can't seems to make it work with Linux. I'=
m
>running RH7.3 dualboot with XP Home Edition. As for the CD-RW, it's a =
TDK
>Cyclone with E-IDE/ATAPI Interface connected to secondary master (hdc)=
=2E
>
>Everytime I tried the command "cdrecord -scanbus", the result would be=
 :
>
>[root@localhost root]# cdrecord -scanbus
>Cdrecord 1.10 (i686-pc-linux-gnu) Copyright (C) 1995-2001 J=F6rg Schil=
ling
>cdrecord: No such file or directory. Cannot open SCSI driver.
>cdrecord: For possible targets try 'cdrecord -scanbus'. Make sure you =
are
>root.




--
-------------------------------------------"Never tell me the odds!"---=
-----
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-----------------------------------------------------------------------=
--------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
