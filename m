From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: date alias
Date: Fri, 7 Jun 2002 09:56:29 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020607085629.GA296@cam.ac.uk>
References: <200206070311.g573BL429283@ns2.easy-pages.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200206070311.g573BL429283@ns2.easy-pages.com>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I've added the following to /root/.profile
>=20
> alias date=3D'date +'%cEST''
>=20
> and output is Thu Jun 06 13:33:14 2002EST
I'm not quite sure what you're trying to achieve here. If
you just want the date in EST, then try:

export TZ=3DEST
date +%c

If you're root, you can set the system-wide timezone by
changing /etc/localtime (on my machine, this is a symbolic
link to a timezone file in /usr/share/zoneinfo). Then
anyone who doesn't have a TZ environment variable gets
that timezone.

> I have all the reference materials I need,
> but don't know where to begin looking. I'd
> like to include a space between the year
> and time zone (2002 EST).
Try:

alias date=3D'date "+%c EST"'

> What is the %c called in the above alias?
Depending on who you ask, they're either directives or
output specifiers.

Steven Smith,
sos22@cam.ac.uk


--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE9AHU9O4S8/gLNrjcRAo7pAJ992caOY+HYyznUNdmyhoES8wwduQCgpA0l
LAz5/ZY57/ch/utQ41snjx0=
=uT90
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
