From: Peter <heisspf@skyinet.net>
Subject: Re: MPG Video Format
Date: Wed, 16 Nov 2005 10:30:00 +0800
Message-ID: <20051116103000.5a1c2d65@localhost.localdomain>
References: <20051115105214.25290e02@Peter.meridiantelekoms.com>
	<437962AF.9000902@comarre.com>
	<6.2.3.4.0.20051115092533.0210b050@127.0.0.1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6.2.3.4.0.20051115092533.0210b050@127.0.0.1>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Carl <carl@anexia.co.uk>, linux-newbie@vger.kernel.org

On Tue, 15 Nov 2005 09:36:15 +0000
Carl <carl@anexia.co.uk> wrote:


> Just for the record (no pun intended) i have just=20
> installed fedora core 4 on a machine with an ide dvd-rw.
>=20
> I tried "cdrecord --scanbus" and it shows the dvd=20
> as 0,0,0 so i tried "dev=3D0,0,0" and it failed=20
> cause it couldn't access the device.
>=20
> I tried "dev=3D/dev/dvd" (symlink to /dev/hda) and it worked.
>=20
> I thought with the scanbus option finding the=20
> device the ide-scsi emulation was working but=20
> apparently not. However this is what i get from
> a "cdrecord --version" which may or may not explain it.:
>=20
>

I get the same errors in slackware 10.2.

cdrecord --version
Cdrecord 2.00.3 (i686-pc-linux-gnu) Copyright (C) 1995-2002 J=F6rg Schi=
lling

cdrecord --scanbus
Cdrecord-Clone 2.01 (i686-pc-linux-gnu) Copyright (C) 1995-2004 J=F6rg =
Schilling
cdrecord: No such file or directory. Cannot open '/dev/pg*'. Cannot ope=
n SCSI
driver. cdrecord: For possible targets try 'cdrecord -scanbus'.
cdrecord: For possible transport specifiers try 'cdrecord dev=3Dhelp'.

cdrecord -v dev=3D0,0,0 fs=3D64M speed=3D2 driveropts=3Dburnproof grace=
time=3D2
file.iso=20
cdrecord: No write mode specified.
cdrecord: Asuming -tao mode.
cdrecord: Future versions of cdrecord may have different drive dependen=
t
defaults. cdrecord: Continuing in 5 seconds...
Cdrecord-Clone 2.01 (i686-pc-linux-gnu) Copyright (C) 1995-2004 J=F6rg =
Schilling
TOC Type: 1 =3D CD-ROM
scsidev: '0,0,0'
scsibus: 0 target: 0 lun: 0
cdrecord: No such device. Cannot open '/dev/pg0'. Cannot open SCSI driv=
er.
cdrecord: For possible targets try 'cdrecord -scanbus'

cdrecord -v dev=3D0,0 fs=3D64M speed=3D2 driveropts=3Dburnproof graceti=
me=3D2
file.iso=20
cdrecord: No write mode specified.
cdrecord: Asuming -tao mode.
cdrecord: Future versions of cdrecord may have different drive dependen=
t
defaults. cdrecord: Continuing in 5 seconds...
Cdrecord-Clone 2.01 (i686-pc-linux-gnu) Copyright (C) 1995-2004 J=F6rg =
Schilling
TOC Type: 1 =3D CD-ROM
scsidev: '0,0'
scsibus: 0 target: 0 lun: 0
cdrecord: No such device. Cannot open '/dev/pg0'. Cannot open SCSI driv=
er.

cdrecord -v dev=3D/dev/dvd fs=3D64M speed=3D2 driveropts=3Dburnproof gr=
acetime=3D2
file.iso
--snip--
Warning: Open by 'devname' is unintentional and not supported.
cdrecord: Read-only file system. Cannot open '/dev/dvd'. Cannot open SC=
SI
driver.

Only when I put dev=3DATAPI:0,1,0 did the writing process start with no=
 errors,
however, then I could not access the CD any more.

Resorting to xcdroast then did the trick after iso file was made. I can=
 play
the CD on my VCD player connected to the TV. Quod errat demonstrantum.

Regards

--=20
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
