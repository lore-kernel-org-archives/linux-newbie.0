From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: register_exec_domain
Date: Sat, 27 Apr 2002 10:31:06 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020427093106.GA1303@cam.ac.uk>
References: <20020427010243.90880.qmail@web12805.mail.yahoo.com> <0204270705050A.04696@unix.pa3gcu>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <0204270705050A.04696@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: Staci <spiritlover666@yahoo.com>, linux-newbie@vger.kernel.org


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > > Did you do a 'make mrproper' before anything else?
> > Dunno if you know, but mrproper can corrupt things.
> In any case you have to=20
> use make mrproper when you install a new kernel source otherwise things l=
ike=20
> symlinks to /usr/include are not created.
As far as I can see from reading the makefiles, and from looking at
the output when it's actually run, make mrproper does not create any
symlinks. Old libcs (pre version 6) needed symlinks from /usr/include
into the kernel include files, but that's obsolete with glibc, and
tends to cause more problems than it solves.

> > i always use make clean. :)
> That will not help when installing a new kernel source.
> If you look into the kernel source top dir Makefile you will see that "cl=
ean"
> only removes an amount of unwanted configureation *.h files, mrproper rem=
oves
> logfiles, files preceeded with a . (as in) .config,  removes old symlinks=
 and
> recreates them + much much more.
Some would argue that removing a config file is the limiting case of
corrupting it :). Plus, new tarballs of kernel sources are supposed to
be clean and mrproper to begin with.

Anyway, if you want a really clean source tree, make distclean is more
thorough, as it gets rid of patch(1) related detritus as well, which
mrproper has a habit of leaving behind.

Steven Smith,
sos22@cam.ac.uk.

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8ym/aO4S8/gLNrjcRAjxjAKDDPdPADKN1jCALf1/VlEWzn9QGkQCfTXXU
lKqgq6qqeEAAiY2fHXH8DGU=
=sYnR
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
