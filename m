From: Steven Smith <steven@serisilks.screaming.net>
Subject: Re: Error message when insmodding
Date: Wed, 17 Apr 2002 20:22:18 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020417192218.GA309@archibold>
References: <3CBD9CDC.2070202@keyed-upsoftware.com>
Reply-To: sos22@cam.ac.uk
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OXfL5xGRrasGEqWY"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3CBD9CDC.2070202@keyed-upsoftware.com>
List-Id: <linux-newbie.vger.kernel.org>
To: David Stroupe <dstroupe@keyed-upsoftware.com>
Cc: linux-newbie@vger.kernel.org


--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Warning:  loading driver.o will taint the kernel : no license
>=20
> This is a driver that I created myself and it seems to load and function=
=20
> properly regardless of this message.
>=20
> What does this mean?
Recent kernels have a ``MODULE_LICENSE'' macro, which allows you to specify
a license for your module. This is so as kernels with binary-only modules
are flagged as such in bug reports, and don't cause people to waste too much
time with unfixable problems. All this warning means is that your module
has no MODULE_LICENSE.

The tainted bit just means that something odd has happened which will make
bug reports less useful/accurate.

> How do I resolve it?
Add a MODULE_LICENSE. This is defined in linux/module.h, and is used as:

MODULE_LICENSE("Name of your license");

somewhere near the bottom of your module. Licenses recognised by insmod
are (without checking):

GPL
Dual MPL/GPL
Dual BSD/GPL
GPL and additional rights

Anything else will probably get rid of your error message, but won't let
you use GPLONLY kernel exports.

Steven Smith,
sos22@cam.ac.uk.

--OXfL5xGRrasGEqWY
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8vctqO4S8/gLNrjcRAkxnAJ9m0ehJe6528ciuW61kbYdLSuVHswCg1R4h
hZBu1+G3M7+wZXHnrzn60yY=
=/lCA
-----END PGP SIGNATURE-----

--OXfL5xGRrasGEqWY--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
