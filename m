From: Jens =?ISO-8859-1?Q?S=FClwald?= <jsuelwald@werebones.de>
Subject: Re: Who is listening on port xxx?
Date: Wed, 28 Jan 2004 20:17:01 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1075317421.25428.1.camel@science>
References: <4011C87400001C22@mail-bcm02.alestra.net.mx>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-t/kPdNt12OlwSyy1CBld"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4011C87400001C22@mail-bcm02.alestra.net.mx>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie <linux-newbie@vger.kernel.org>


--=-t/kPdNt12OlwSyy1CBld
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Am Mi, den 28.01.2004 schrieb rgomez@bancomer.com um 19:56:
> Hi, here's the network newbie again...
>=20
> How or Where can I find which process is listening on specific port?
fuser -v -n tcp <port>
or
fuser -v -n udp <port>

--=20
ICQ: 56519352 | AIM: WereBones
Jabber: werebones@jabber.org
        werebones@jabber.com

--=-t/kPdNt12OlwSyy1CBld
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Dies ist ein digital signierter Nachrichtenteil

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQBAGAqsZVmSH3An2a4RAr7DAJ48WA6s+jIJAuF0tPVfIj51n6RG7wCfUSED
Gtak4/ikhIsqcz9eS9UPf3c=
=Mhia
-----END PGP SIGNATURE-----

--=-t/kPdNt12OlwSyy1CBld--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
