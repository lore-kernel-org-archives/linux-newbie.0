From: =?iso-8859-1?q?szonyi=20calin?= <caszonyi@yahoo.com>
Subject: Re: Problems installing nVidia drivers
Date: Fri, 19 Jul 2002 15:36:56 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020719133656.51321.qmail@web13108.mail.yahoo.com>
References: <200207192124.04363.adam@luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207192124.04363.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

 --- Adam Luchjenbroers <adam@luchjenbroers.com> a
=E9crit=A0: > When I start up X using the nVidia drivers I
get a
> blank screen and the=20
> machine locks hard.
>=20
> I'll start off by giving the relevant hardware and
> software configuration=20
> information.
>=20
> Hardware:
> Soltek SL-75DRV5 Mainboard
> Athlon 900Mhz CPU
> Winfast GeForce DDR 256 (AGP)
>=20
> Software
> Linux Mandrake 8.1
> Kernel 2.4.18 (compiled from kernels.org source
> tree, unpatched)
> XFree 4.1.0
> nVidia Kernel module + GLX version 1.0-2960
>=20
> Because I have a non standard kernel I have to
> download the driver 'source',=20
> which is a few C code and header files plus a chunk
> of pre-compiled object=20
> code that is the real driver.
>=20
> I've built it using both
>=20
> # make
>=20
> and
>=20
> # make SYSINCLUDE=3D/usr/src/linux-2.4.18
>=20
> and the problem persists.
>=20
> (GLX has also been compiled).
>=20
> Using the nv driver I get no problems but I also
> don't get the 3d performance=20
> their drivers offer.
>=20

You have to make a choice:
stability or nvidia drivers.
I have and nvidia card but never used their=20
drivers because a lot of people reported=20
crashes using them.

I used nvidia drivers on windoze but it seems
that my board needed a particular version of
the driver to work correctly, so i did
a=20
mke2fs /dev/hda1 and i have gained some extra
disk space :-)

They have no reason making an closed surce driver
so my advice is: change your graphics board.
(Their "latest technology" is beeing used in
 profesional workstations  in other companies=20
from some time).

Anyway, it's your choice :-)

> Analysis of the /var/log/XFree86.0.log file shows
> that it stops immediatly=20
> after loading the PCI module.
>=20
>=20
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at=20
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
http://www.linux-learn.org/faqs=20

=3D=3D=3D=3D=3D
--
The UNIX Hierarchy - Beginner
- insecure with the concept of a terminal=20
- has yet to learn the basics of "vi"=20
- has not figured out how to get a directory=20
- still has trouble with typing <RETURN> after each line of input

___________________________________________________________
Do You Yahoo!? -- Une adresse @yahoo.fr gratuite et en fran=E7ais !
Yahoo! Mail : http://fr.mail.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
