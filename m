From: Thorsten Alge <mail@thorsten-alge.de>
Subject: Dual Monitor
Date: Wed, 22 Sep 2004 20:46:19 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1095878779.6943.11.camel@localhost>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-0+f0rEKxXY0WGlkpshGa"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>


--=-0+f0rEKxXY0WGlkpshGa
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,

i've a problem with my XFree86 on my T23 Notebook. I want to use a
secound monitor. But i don't know, how to configure two monitors to work
with only one graphic card.=20
first i have tested a configuration for each monitor for its own and it
works fine. then i created a XF86Config-4 with Sections for each monitor
(monitor0 and monitor1), screen and display.
at last i've created the following server layout section:

        Section "ServerLayout"
        	Identifier	"Multi Head"
        	Screen	0	"screen0"	0	0
        	Screen	1	"screen1" RightOf	"screen0"
        	InputDevice	"Generic Keyboard"
        	InputDevice	"Configured Mouse"
        	InputDevice	"Generic Mouse"
        EndSection

that doesnt work and i cant figure out why. I've googled around and
looked at xfree85.org, but i cant find a good help. If anyone had solved
a similar problem at any time, it would be nice, if he could help me or
tell me, where i cant find a good help.

thanks,

thorsten
--=20
+---------------------------------------------------------+
|  Auszubildender Fachinformatiker fr Systemintegration   |
| - - - - - - - - - - - - - - - - - - - - - - - - - - - - |
|                                                         |
|  Thorsten Alge       Mobil: +49 (0) 1 60 / 93 83 94 73  |
|  Ringslebenstr. 2    Tel:   +49 (0) 30 / 66 86 82 27    |
|  12353 Berlin        Fax:   +49 (0) 30 / 66 86 82 27    |
|  Germany                                                |
|                                                         |
| - - - - - - - - - - - - - - - - - - - - - - - - - - - - |
|                                                         |
|              http://www.thorsten-alge.de/               |
|                 mail@thorsten-alge.de                   |
|                                                         |
+---------------------------------------------------------+

--=-0+f0rEKxXY0WGlkpshGa
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Dies ist ein digital signierter Nachrichtenteil

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQBBUch6fqTT+g1FweURAmxLAKCwZMpvunLkLtt21WlT2j24xzn3wgCgrcVv
GMNhuEpwtOkNUPJDyWteW/Q=
=bWZP
-----END PGP SIGNATURE-----

--=-0+f0rEKxXY0WGlkpshGa--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
