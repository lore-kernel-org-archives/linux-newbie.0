From: "grottoBoy rant" <stylerzz@hotmail.com>
Subject: Re: Can't see my drives
Date: Thu, 29 Aug 2002 17:07:55 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F665uAy0BYTxHwMQFLc00025135@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: cr@orcon.net.nz, ray@comarre.com, linux-newbie@vger.kernel.org


Don't know if you've fixed this already, I don't know about configuring for=
=20
CDRW as scsi emulation or whatever, but were you specifying iso9660=20
filesystem type when attempting to mount, ie.
mount -t iso9660 /dev/(?) /mnt/cdrom
man mount for syntax

later

----Original Message Follows----


On Saturday 24 August 2002 03:58, Ray Olszewski wrote:
 > Selected responses only (though the additional detail in your reply
 > helped).
 >
 > You say your /dev/cdrom symlink is to /dec/scd0 . That's a scsi device, =

and
 > you have an IDE drive (apparently as the secondary slave, since that is
 > what /dev/hdd is).

Correct.

 > Unless you are running scsi-ide emulation (see below),
 > your immediate problem is simply that the synmlink is wrong. Try removing
 > it by hand and repointing it to the right place, that is (as root)
 >
 >          rm /dev/cdrom
 >          ln -s /dev/hdd /dev/cdrom
 >
 > Then see if you can mount an iso9660 CD successfully.

Tried that, got (as 'me')
"mount:  only root can mount /dev/cdrom on /mnt/cdrom"

and, as  su root, I got:
"mount:  wrong fs type, bad option, bad superblock on /dev/cdrom,
or too many mounted filesystems
(could this be the IDE device where you in fact use
ide-scsi so that sr0 or sda or so is needed?)"

 > On another matter, someone else asked you to check permissions. That was
 > good advice in concept, but wrong in a detail -- you need to check the
 > permissions on the underlying device, not on the symlink. Symlinks always
 > are mode 777, as you reported.
 >
 > Finally, I note that your CD device is a CD writer. To use it as a
 > *writer*, you do need to implement ide-scsi emulation.  So I'd guess that
 > that was how you had it set up when it worked before (in which case,
 > /dev/scd0 would be the right device to use when accessing it) ... but=20
that
 > in doing the upgrade, you lostr that emulation.

I remember now, and I'd say you're exactly right!

Is this going to happen *every* time I upgrade?   8(

 > Since I use neither Red Hat
 > nor kudzu, I can't tell you in detail how to restore ide-scsi emulation,
 > but the outline is --
 >
 >          1. Pass a boottime argument to the kernel (in lilo.conf) of this
 > form: append=3D"hdd=3Dide-scsi"
 >
 >          2. Enable ide-scsi emulation in the kernel. One way is by
 > compiling and loading this set of modules:
 >                  # the stuff to enable ide-scsi emulation for the CD-ROM
 >                  scsi_mod
 >                  sr_mod scd0
 >                  sg
 >                  ide-scsi
 >
 >          3. For reading, the CD drive should then look like it is a scsi
 > device, at /dev/scd0
 >
 >          4. For writing, it is *probably* at lun 0,0,0 -- you can check
 > this with "cdrecord --scanbus".

Yes, it is 0,0,0

I'm going to search back through my files and try and find the instructions=
=20
I
used when first installing the CD-writer.   Unfortunately the original is on
a cd-rom which I can't read at the moment....     :)

As a related question, is there anywhere on the Internet a page that=20
explains
(in simple language) what the boot-up sequence of Linux is (and XFree86 for
that matter) and what files get read in what order?   Man pages are always
much too detailed and limited in scope to be easy to follow.

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs









_________________________________________________________________
Join the world=92s largest e-mail service with MSN Hotmail.=20
http://www.hotmail.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
