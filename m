From: Juanjo Escribano <jescribano@zitralia.com>
Subject: Re: cannt open root device ?
Date: Fri, 31 Mar 2006 13:14:27 +0200
Message-ID: <1143803667.3684.8.camel@juanjo.zitralia>
References: <442C9885.8000703@gmail.com>
	 <Pine.LNX.4.64.0603302233010.6607@localhost.localdomain>
	 <442CC328.9000906@gmail.com>
Reply-To: jescribano@zitralia.com
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <442CC328.9000906@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Bo Yang <struggleyb@gmail.com>
Cc: James Miller <jamtat@mailsnare.net>, linux-newbie@vger.kernel.org

Hi,

	I'm not sure but maby you don't have the correct modules to manage the
disk emulated by VMware in the initrd. I have a FC4 installed on a
vmware machine with SCSI disk and I need that initrd loads this modules
to wark fine: scsi_mod, sd_mod, mptbase, mptscsih, mptspi. Without this
modules the kernel can't manage the disk and it can't create the root
device to do the switchroot.

	I hope it can help you.

Good Luck!!

Juanjo



El vie, 31-03-2006 a las 13:50 +0800, Bo Yang escribi=C3=B3:
> > This is actually a VMware question more than a Linux question.  The=
y=20
> > have a user forum: have you tried posting about your problem there?=
  I=20
> > have a little bit of experience with VMware, but you don't provide=20
> > enough information for me to take a stab at what the problem might=20
> > be.  First, is this a virtual disk or are you trying to use an actu=
al=20
> > scsi hardware disk for your Gentoo install?  I have no expereince w=
ith=20
> > using a real disk or partition for the guest OS, only with virtual =
disks.
> It is a scsi virtual disk ,  and VM  display it as '' Hard Disk 1:=20
> (SCSI  0:0)"
> > So I might not be able to help with that anyway.  If it's a virtual=
=20
> > partition I can't understand why you would specify it as /dev/sda3.=
 =20
> > I've always put OS's on the first partition of the virtual disk. =20
> > VMware presents these virtual disks to the host OS as scsi disks, s=
o=20
> > my experience has always been with systems installed to /dev/sda1. =
=20
> > Did you partition the (virtual?) disk and put /home and swap or=20
> > something on the other 2 partitions?  Anyway, I'm not even sure I c=
an=20
> > help.  Probably best to try the VMware forums.
> And I have partition the disk for 4 part .
> /dev/sda1  /boot  reiserfs
> /dev/sda2  swap  swap
> /dev/sda3  /          reiserfs
> /dev/sda4  /usr    reiserfs
>=20
> So I tell the lilo to mount the root file system in the partition=20
> /dev/sda3 , is it wrong ?
>=20
> Thank you for your reply !
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
