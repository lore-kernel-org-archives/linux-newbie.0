From: Eric Bambach <eric@cisu.net>
Subject: Re: Linux Equivilant of Ghost?
Date: Sun, 23 Oct 2005 23:23:22 -0500
Message-ID: <200510232323.22675.eric@cisu.net>
References: <faf407640510231359t46ac5b92uf4e46ec099178132@mail.gmail.com>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <faf407640510231359t46ac5b92uf4e46ec099178132@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Michael Medwid <mmedwid@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Sunday 23 October 2005 03:59 pm, Michael Medwid wrote:
> Is there a method to quickly replicate a bunch of Linux workstations
> to a desired image like you can do with Symantec's Ghost product on
> Windows?   For example suppose you have a classroom with 15 PCs and
> you want them all to have the same image.  If there is such a beast -
> does it support multicast to be able to image several machines on a
> LAN all at once?
>
> Thanks.
>
> Michael
> -

In a pinch there is alwatys dd :). This is especially true if they have=
=20
identical hard drive sizes and partition layouts

dd if=3D(Image source) of=3D(image destination) bs=3D512

where image source will be an entire hard drive like the primary=20
master /dev/hda and dest. will be /dev/hdb. ALso you can do this over t=
he=20
network!

Boot the image destination from a boot cd, (I like gentoo cause you can=
 get=20
SSHD up with 1 command)

On the image master

dd if=3D/dev/hda bs=3D512 | ssh root@imagedestination dd of=3D/dev/hda

This will block copy the hard drive on the source (/dev/hda) over the n=
etwork=20
onto the destination hard drive (/dev/hda).

Ugly, but it could hold you over till you get ghost up and going and it=
s quite=20
simple.


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
