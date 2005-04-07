From: Eric Bambach <eric@cisu.net>
Subject: Re: Linux Backup
Date: Wed, 6 Apr 2005 22:39:00 -0500
Message-ID: <200504062239.00922.eric@cisu.net>
References: <d31t0b$a1v$1@sea.gmane.org>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d31t0b$a1v$1@sea.gmane.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: smertens@mho.com
Cc: linux-newbie@vger.kernel.org

On Wednesday 06 April 2005 06:59 pm, smertz wrote:
> I have spent a great deal of time on simple things in Linux as I am n=
ew
> over the last week (No better way to learn)  But I don't want to
> re-learn in case the proverbial Hard Drive dies, so what is a good wa=
y
> to back up my system? On my 2 Windows XP machines I use Ghost 9.  Is
> there similar thing to copy a Linux drive?
> Or can I simply do something like an XCOPY from one drive to a second
> one as a backup?
Of course!

cp -dvxpR /home/myimportantfiles /disk2/backupfolder/

Note that the x flag prevents it from crossing mount barriers so you ca=
n copy=20
the root filesystem onto a disk thats mounted UNDER the root filesystem=
=2E

cp -dvxpR / /disk2/backupfolder/

A simple a quite brute force way to backup is dd ;)
If you have a hard drive thats not mounted and that is NOT your root dr=
ive (or=20
even your root drive and you boot from a rescue cd) the simplest most=20
effective way to image a drive is dd.

On same machine where you are saving myimagefile on another disk with e=
nough=20
space for a full image.

dd if=3D/dev/hda of=3D./myimagefile

(DO NOT DO NOT EVER MIX UP "if" AND "of" )
if =3D IN
of =3D OUT
This is where alot of sysadmins can nuke disks ;)
Know what you are saving and where you are saving it to.

You can also do cool things like run it through bzip and gzip. Personal=
ly dd=20
backups and restores have a neat place when you need to image machines.=
Boot=20
from CD and use it over SSH and the network at times for a simple brute=
 force=20
complete backup.

ssh ip.of.image.server -l loginname dd if=3D/home/image/computer.image =
| dd=20
of=3D/dev/hda

or to save a machine over the network:

ssh ip.of.image.server -l loginname dd=3D/dev/hda | dd=20
of=3D/home/image/newcomputer.image

To just capture a particular tree in a filesystem tar is quick, simple =
and a=20
standard Unix tool.

tar -cvf mybackup.tar MyFolder
or
tar -cjvf mycompressedbackup.tar.bz2 MyFolder

Those are some quick pointers off the top of my head. Let me know if I =
went to=20
fast or you want a particular method explained in depth. HTH!

> I am using Red Hat Enterprise Linux ES release 4 (Nahant)
> on a home Workgroup as a File and print server - If I ever get Samba =
set
> up correctly. Any suggestions appriciated.
>
> Thanks
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
