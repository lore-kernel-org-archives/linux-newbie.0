From: Yawar Amin <yawar.amin@gmail.com>
Subject: Re: a simple way to burn DVDs
Date: Thu, 12 May 2005 14:26:18 +0800
Message-ID: <efc7f7d005051123267acbe680@mail.gmail.com>
References: <fc.004c4e00007c2b66004c4e00007c2b66.7c2bce@palmertrinity.org>
Reply-To: Yawar Amin <yawar.amin@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e00007c2b66004c4e00007c2b66.7c2bce@palmertrinity.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

On 5/12/05, William Stanard <wstanard@palmertrinity.org> wrote:
> I've purchased and correctly installed (it reads data CDs just fine,
> mounted with "mount /dev/cdrom /mnt/cdrom" ) a HI-VAL DVD_RW/_R rewri=
table
> drive in my Compaq Proliant 800 server running Red Hat 8.0 (ver 2.4.1=
8-14
> ) in preparation to setting up the drive to do my backup chores. Ther=
e
> doesn't, however, seem to be a simple application as part of this
> particular Red Hat build that writes to DVDs. Am I missing something,=
 or
> do I have to purchase, for instance, NeroLINUX or some other utility =
for
> writing data to DVDs?

As root, run the command

cdrecord -scanbus

I'm running Fedora Core 3, and this is what the above command outputs
for me (might be a bit mangled because of word wrapping):

# cdrecord -scanbus
Cdrecord-Clone 2.01-dvd (i686-pc-linux-gnu) Copyright (C) 1995-2004
J=F6rg Schilling
Note: This version is an unofficial (modified) version with DVD support
Note: and therefore may have bugs that are not present in the original.
Note: Please send bug reports or support requests to
http://bugzilla.redhat.com/bugzilla
Note: The author of cdrecord should not be bothered with problems in
this version.
scsidev: 'ATA'
devname: 'ATA'
scsibus: -2 target: -2 lun: -2
Linux sg driver version: 3.5.27
Using libscg version 'schily-0.8'.
cdrecord: Warning: using inofficial libscg transport code version
(schily - Red Hat-scsi-linux-sg.c-1.83-RH '@(#)scsi-linux-sg.c   =20
1.83 04/05/20 Copyright 1997 J. Schilling').
scsibus1:
        1,0,0   100) 'QSI     ' 'CDRW/DVD SBW242C' 'UQ81' Removable CD-=
ROM
        1,1,0   101) *
        1,2,0   102) *
        1,3,0   103) *
        1,4,0   104) *
        1,5,0   105) *
        1,6,0   106) *
        1,7,0   107) *

It has detected my CD-RW DVD-ROM drive correctly, so I can burn ISO
files with the command

cdrecord dev=3D1,0,0 file.iso

See the cdrecord(1) man page for details.

Also, the output shows that at least from FC3 onwards the (modified)
version of cdrecord can write DVDs. If the RH8 version can't, you may
want to upgrade it to the latest version from Red Hat. But that may
turn out to be quite another problem (what with possibly changing
kernel and other package dependencies, etc.).

You may prefer a simple GUI tool to do the job. Nero is an option,
like you said, but you probably want to explore the free software
avenue first. The best-known (and with good reason) tool is K3B, but
it requires KDE libraries to be installed (which I'm mentioning since
RH8 installs GNOME by default). And it uses cdrecord to do the actual
writing, so cdrecord needs to be set up first.

--=20
Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
