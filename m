From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Compiler flags, kernel-complie
Date: Sat, 31 May 2003 22:22:57 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030531212257.GA9369@cam.ac.uk>
References: <3ED902D8.2030907@vip.cybercity.dk> <20030531195356.GA24659@cam.ac.uk> <3ED90D87.7050507@vip.cybercity.dk>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3ED90D87.7050507@vip.cybercity.dk>
List-Id: <linux-newbie.vger.kernel.org>
To: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Cc: linux-newbie@vger.kernel.org


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > > I have set the enviroment variables $CFLAGS and $CXXFLAGS to:
> > > -O2 -march=3Dathlon-xp
> > > Now my question is will this effect my kernel-compile?
> > Shouldn't do; the kernel doesn't normally inherit CFLAGS and friends
> > from the environment.  The correct way to do this is through the
> > ``Processor type'' part of make {x,menu}config.
> Well it seems like that $CFLAGS is overwriten in=20
> '/usr/src/linux/Makefiles' og exported.
> But when I compile kernel it compiles with '-march=3Dathlon', how do I=20
> change this?
The first thing to point is that you probably don't want to: some
compiler flags (e.g. -O3) are known to create broken and buggy
kernels, which is why there's no nice way of setting it.

Having said that, if you want to live dangerously, the trick would be
to turn the fragment

ifdef CONFIG_K7
CFLAGS +=3D $(shell if $(CC) ... fi)
endif

into

ifdef CONFIG_K7
CFLAGS +=3D -march=3Dathlon-xp
endif

in arch/i386/Makefile.  Of course, that'll change it to
-march=3Dathlon-xp even if you select plain Athlon in the kernel config,
but adding a new menu item is a relative pain.  If it really bothers
you, have a look in arch/i386/config.in.

Changing the CFLAGS like this will result in a completely unsupported
kernel, though, and one which could well be a little unstable.  Do it
at your own risk.  I haven't even tested that the resulting thing
compiles, let alone works.

Steven.

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+2R0xO4S8/gLNrjcRAvWGAJ9a6q018NQ5X+rz43VW7osvzprC6QCeIwAm
FpdNh67eVgFXX6TynCqv7KQ=
=DkWo
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
