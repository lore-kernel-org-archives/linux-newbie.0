From: Jens =?ISO-8859-1?Q?S=FClwald?= <jsuelwald@werebones.de>
Subject: Re: modules not found
Date: Mon, 05 Jan 2004 16:12:42 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1073315562.1795.0.camel@science>
References: <3FF97BE0.4020404@sancharnet.in>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-fTvAEbJCEhyzVYtI03bu"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FF97BE0.4020404@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--=-fTvAEbJCEhyzVYtI03bu
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Am Mo, den 05.01.2004 schrieb joy um 15:59:
>=20
>=20
> Hi,
>  I recently compiled the 2.6 kernel and when I run lsmod I get a meesage:
>  QM_MODULES function not implemented.
> I get the same when I run insmod too.
> also the directory
>  /lib/modules/2.6.0.....
> does not exist. should I create it myself?
cd /usr/src/linux-2.6.0
make modules
make modules_install

this should help


--=20
ICQ: 56519352 | AIM: WereBones
Jabber: werebones@jabber.org
        werebones@jabber.com

--=-fTvAEbJCEhyzVYtI03bu
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Dies ist ein digital signierter Nachrichtenteil

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQA/+X7qZVmSH3An2a4RAhJOAJ9UXBCUfiSIBvYdgTBt1p9l7e0NcQCeKxJ2
tPdbuohzMdGBLzZIZjJKz9I=
=CLvJ
-----END PGP SIGNATURE-----

--=-fTvAEbJCEhyzVYtI03bu--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
