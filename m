From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: compatible header functions
Date: Sat, 25 Jan 2003 12:01:24 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030125120124.GA571@cam.ac.uk>
References: <20030125114316.23831.qmail@webmail29.rediffmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030125114316.23831.qmail@webmail29.rediffmail.com>
List-Id: <linux-newbie.vger.kernel.org>
To: n mishra <mishra_nn@rediffmail.com>
Cc: linux-newbie@vger.kernel.org


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I am new to writing c programs in linux and I have trouble finding=20
> the following functions in the header files.
> 1)itoa: to convert an integer to a string.
sprintf(buf, "%d", integer);

> 2)ltoa: to convert long integer to a string.
sprintf(buf, "%ld", integer);

> 3)strset: to set the whole string to a given character.
Not sure about this one.  I would probably write my own if I needed
it, or use strlen() and memset().

Steven Smith,
sos22@cam.ac.uk.

--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE+MnyUO4S8/gLNrjcRAmpyAJ9hSgK2y28LRjCfVpM4mjAn+ZAsIQCgvx2M
xoBY3X5qu0eXzxcol2s4GnE=
=607j
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
