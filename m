From: Benoit Joseph <benoit.joseph@teledisnet.be>
Subject: Re: Compile Options for Optimized Programs
Date: Sat, 10 Aug 2002 16:53:11 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020810145311.GE506@mares.joker.org>
References: <200208092236.48708.1stflight@ameritech.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8P1HSweYDcXXzwPJ"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200208092236.48708.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
To: 1stFlight <1stflight@ameritech.net>
Cc: linux newbie <linux-newbie@vger.kernel.org>


--8P1HSweYDcXXzwPJ
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


For optimizing your compiled apps, there are a lot of options:

-O3
-march=3DARCH
-mcpu=3DARCH

but there are many else. Make man gcc and go to the Optimization Options
section. For enabling them just put them on the command line at compile
time.

If you want to modify an existing makefile, you can set the CFLAGS and
the CPPFLAGS environment variables. If you use bash, this can be done
with=20
export CFLAGS=3D"-option1 -option2 ..."

Hope this helps=20

Benoit=20

On Fri, Aug 09, 2002 at 10:36:48PM, 1stFlight wrote:
>   Awhile back I found some options for optimizing programs on a i686 (Ath=
lon)=20
> processor during compile..something along the lines of - O3 -mpcu -march =
 do=20
> things options (environment settings I believe) ring a bell to anyone, an=
d if=20
> so how do I impliement them? Thanks!
>=20
>    																Darryl
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
---end quoted text---

--=20

Benoit JOSEPH=20
Manex SPRL: benoit.joseph@manex.be
Perso: joker@baby-linux.net
       benoit.joseph@teledisnet.be

--8P1HSweYDcXXzwPJ
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE9VSjWLPnuiaZn1q4RAuUUAJ9LylfaiWFS3jpxpTXpGDhTM1/26gCgwknx
R8roR+CV0Z5wD74+gxQ7TnE=
=jb9s
-----END PGP SIGNATURE-----

--8P1HSweYDcXXzwPJ--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
