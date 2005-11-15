From: Carl <carl@anexia.co.uk>
Subject: Re: MPG Video Format
Date: Tue, 15 Nov 2005 09:36:15 +0000
Message-ID: <6.2.3.4.0.20051115092533.0210b050@127.0.0.1>
References: <20051115105214.25290e02@Peter.meridiantelekoms.com>
 <437962AF.9000902@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <437962AF.9000902@comarre.com>
References: <20051115105214.25290e02@Peter.meridiantelekoms.com>
 <437962AF.9000902@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org


<snip>

>It depends on what sort of CD you want.
>
>If you want to put it on a data CD (an iso9660=20
>filesystem, that is), then one way is to follow this two-step process:
>
>         1.  mkisofs -J -o somename.iso -r file.mpg
>         2. cdrecord cdrecord dev=3D[something] somename.iso
>
>Where [something] is an entry like "0,0,0", with=20
>the exact value depending where on the SCSI bus=20
>(or the ide-scsi simulation of a SCSI bus) the=20
>CD writer is (find our with "cdrecord=20
>--scanbus"). Depending on your drive and media,=20
>you may have to set other parameters too, like speed=3D[value].
>
>If your CD burner isn't SCSI or using ide-scsi=20
>simulation ... I've read that newer versions of=20
>cdrecord support burning to /dev/hd* devices,=20
>but I've never managed to get it to work here so still use ide-scsi my=
self.

Just for the record (no pun intended) i have just=20
installed fedora core 4 on a machine with an ide dvd-rw.

I tried "cdrecord --scanbus" and it shows the dvd=20
as 0,0,0 so i tried "dev=3D0,0,0" and it failed=20
cause it couldn't access the device.

I tried "dev=3D/dev/dvd" (symlink to /dev/hda) and it worked.

I thought with the scanbus option finding the=20
device the ide-scsi emulation was working but=20
apparently not. However this is what i get from
a "cdrecord --version" which may or may not explain it.:

[carl@fed4 ~]$ cdrecord --version
Cdrecord-Clone 2.01-dvd (i686-pc-linux-gnu)=20
Copyright (C) 1995-2004 J=C3=B6rg Schilling
Note: This version is an unofficial (modified) version with DVD support
Note: and therefore may have bugs that are not present in the original.
Note: Please send bug reports or support requests=20
to http://bugzilla.redhat.com/bugzilla
Note: The author of cdrecord should not be=20
bothered with problems in this version.
[carl@fed4 ~]$


<snip>


Regards
Carl=20


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
