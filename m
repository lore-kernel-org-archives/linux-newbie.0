From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Compiler flags, kernel-complie
Date: Sat, 31 May 2003 20:53:56 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030531195356.GA24659@cam.ac.uk>
References: <3ED902D8.2030907@vip.cybercity.dk>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3ED902D8.2030907@vip.cybercity.dk>
List-Id: <linux-newbie.vger.kernel.org>
To: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Cc: linux-newbie@vger.kernel.org


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I have set the enviroment variables $CFLAGS and $CXXFLAGS to:
>=20
> -O2 -march=3Dathlon-xp
>=20
> Now my question is will this effect my kernel-compile?
Shouldn't do; the kernel doesn't normally inherit CFLAGS and friends
=66rom the environment.  The correct way to do this is through the
``Processor type'' part of make {x,menu}config.

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+2QhUO4S8/gLNrjcRAoapAJ9bAgcxiWjor8qWK5LFHKps+s5AiQCdHdKp
nxFMTy1U3uD/5unlzE86u2k=
=CMYW
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
