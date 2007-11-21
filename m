From: Kristof Provost <Kristof@provost-engineering.be>
Subject: Re: TruCrypt
Date: Wed, 21 Nov 2007 19:11:29 +0100
Message-ID: <20071121181124.GH5255@berith>
References: <47446164.2040205@oak.selfip.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <47446164.2040205@oak.selfip.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Dave Haywood <tla@oak.selfip.net>
Cc: linux-newbie@vger.kernel.org


--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2007-11-21 16:48:36 (+0000), Dave Haywood <tla@oak.selfip.net> wrote:
> Hi,
>=20
>   I see that the TruCrypt build borks under the latest -rc kernels.
> See https://bugs.gentoo.org/show_bug.cgi?id=3D198394 for an example.
=20
>   Has anyone considered incorporating the non-userland parts of tc
> into the kernel to avoid this borkage in the future?  tc is under some
> non-GPL license so this may not be possible?
It's been discussed on the lkml. The author never submitted it for
inclusion in the kernel.
Take a look at http://lkml.org/lkml/2007/11/5/369=20

Kristof

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQFHRHTLUEZ9DhGwDugRApe4AJwKipwlSLqhNqeGjvU+3WQrpHxqtwCfSpBC
hU6l1DmVqDJc9a311cEq6tE=
=ZZiq
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
