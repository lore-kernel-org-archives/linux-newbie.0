From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Re: malloc and free
Date: Sat, 25 Dec 2004 08:46:55 +0530
Message-ID: <1103944615.3799.7.camel@myLinux>
References: <5.1.0.14.1.20041224104634.01f589e0@celine>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-l070wRhFbmB+RbQQhMsW"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041224104634.01f589e0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Ray Olszewski <ray@comarre.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>



--=-l070wRhFbmB+RbQQhMsW
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,
	I have read that the malloc-ed memory is not actually freed upon
calling free, but is still maintained in the processes' malloc pool of
memory. So can that add to the memory leak attributing a segfault?
	Please someone tell if I am wrong!!

On Sat, 2004-12-25 at 00:23, Ray Olszewski wrote:
> At 06:39 PM 12/24/2004 +0000, Ankit Jain wrote:
> >hi
> >
> >routine xyz uses malloc and free functions. it gives
> >accurate and correct result if called once.
> >
> >but if the function is called in a loop N number of
> >times then probably it gives segmentation fault.
> >
> >what is the reason?  can any body guess or test code
> >is needed?
>=20
>=20
> Probably test code is needed. But if you want a guess ... the "free" call=
=20
> contains an error that leads to a memory leak. If you call the routine=20
> once, that's no big deal, and the routine will appear to return "accurate=
=20
> and correct result". But if you call it a lot, memory consumption goes up=
=20
> past the point where the kernel can support it and a segfault results.
>=20
> That's just a shot in the dark, though ... and even it assumes that N is =
a=20
> big number (thousands at least), not 10 or 20. Your use of "probably" doe=
s=20
> make it an appealing guess, though.
>=20
> Really, though, you are posing the question, "What can go wrong with=20
> malloc() and free()?" Put that way, it is obvious that it is too vagure f=
or=20
> a troubleshooting list. Let's see the code, as well as whatever is callin=
g=20
> the code.
>=20
>=20
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
With regards,

Jagadeesh Bhaskar P

--=-l070wRhFbmB+RbQQhMsW
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.2 (GNU/Linux)

iD8DBQBBzNumhmvCciYHkaMRAkjHAJwMrR3YWbNqBZA6bDRkcbkkl3yK1wCeL2a5
sOmhnmQIT7C4a3n/zGDqKno=
=5SBj
-----END PGP SIGNATURE-----

--=-l070wRhFbmB+RbQQhMsW--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
