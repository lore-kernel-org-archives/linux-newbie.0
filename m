From: Steven Smith <sos22@cantab.net>
Subject: Re: undefined reference to...
Date: Fri, 20 Aug 2004 18:32:03 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040820173203.GA779@archibold.chu.cam.ac.uk>
References: <001301c486c4$a625bea0$bb7ac19d@King>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="M9NhX3UHpAaciwkO"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <001301c486c4$a625bea0$bb7ac19d@King>
List-Id: <linux-newbie.vger.kernel.org>
To: Philippe De Neve <Philippe.deneve@intec.ugent.be>
Cc: linux-newbie@vger.kernel.org, sos22@srcf.ucam.org


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> 1) Integerclass.h containing :
=2E..
> 2) Integerclass.cpp containing :
=2E..
> 3) my_prog.cpp containing
=2E..
> But when I compile and link this :
>=20
> c++ -o my_prog my_prog.cpp
That command says to compile my_prog.cpp to an object and use only
that object, plus the standard libraries, to build my_prog i.e.
ignore Integerclass.cpp completely.  There are two obvious solutions:

1) Compile everything at once:

c++ -o my_prog my_prog.cpp Integerclass.cpp

2) Compile the source files seperately, and then link them together

c++ -c my_prog.cpp
c++ -c Integerclass.cpp
c++ -o my_prog my_prog.o Integerclass.o

Hope that helps.

Steven Smith,
sos22@cantab.net.
--=20
One day, I'm going to get an Alice-bot to answer all my email for me,
and see how long it takes people to notice.

--M9NhX3UHpAaciwkO
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (FreeBSD)

iD8DBQFBJjWTO4S8/gLNrjcRAhf1AKDTpfsB+SeGFcYEItjzwQuT9CoHzQCgt6qF
7HlKyPWeeoFuOBpc6ley9og=
=EGkm
-----END PGP SIGNATURE-----

--M9NhX3UHpAaciwkO--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
