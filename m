From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Marco's failed message: Help on scripting
Date: Sun, 28 Apr 2002 20:20:24 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020428192024.GA340@cam.ac.uk>
References: <20020428085906.GB361@cam.ac.uk> <20020428165147.1928.qmail@linux.ik5bcu.ampr.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020428165147.1928.qmail@linux.ik5bcu.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org, offline@shaw.ca


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > > for i in `ls jnos*.p*`; do mail -s $i user@myhost.domain; done;
> > for i in jnos*.p*; do mail -s $i user@myhost.domain; done
> all ok and thank you,but how can I set a variable so that I can use
> it with different file names and not just with jnos*.p?
>=20
> $f=3D ls -l...???
Try:

foo=3D'some_pattern'

for i in $foo; do mail -s $i user@myhost.mydomain; done

Steven Smith,
sos22@cam.ac.uk.

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8zEt4O4S8/gLNrjcRAik1AKDCDgUdSx+C4bNpoPIEbeimUVrtTACePwa+
SlvC81ust4KfizuyA7zlS8U=
=kAKO
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
