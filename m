From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Phantom executables
Date: Fri, 26 Apr 2002 22:50:00 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020426215000.GA2765@cam.ac.uk>
References: <m33cxj7gfk.fsf@wobble.eth.net> <20020426041540.47f8697f.nbhs2@i-2000.com> <200204262108.g3QL8w312580@langhans.hartford-hwp.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nFreZHaLTZJo0R7j"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200204262108.g3QL8w312580@langhans.hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> [brownh@langhans tex2rtf]$ ./163nogui
> bash: ./163nogui: No such file or directory
> [brownh@langhans tex2rtf]$ ls -l 16*
> -rwxrwxrwx    1 brownh   brownh     196812 Mar 26 16:20 163nogui
>=20
> and, for an executable script test file in the same directory:
>=20
> [brownh@langhans tex2rtf]$ ./test-executable
> I am executing this file
>=20
> Is this a sign that I need to include an older libc library?=20
Usually. The most common cause of this is a funny dynamic linker.
Try going:

readelf -l ./153nogui

and look for a line something like

[Requesting program interpreter: /lib/ld.so.1]

If you don't have the interpreter in the right place, you'll get
No such file or directory errors. The easiest way is then probably
to recompile the broken program, or failing that use an old libc.

If you do have the interpreter, or readelf can't find it, I'd be
somewhat confused.

Steven Smith,
sos22@cam.ac.uk.

--nFreZHaLTZJo0R7j
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8ycuIO4S8/gLNrjcRAuKpAKCMGmIvNA84zJJG/zqHwA/6ADXyCQCgjLB9
HNOogcy00tMWGIb19b/E7NM=
=OPHZ
-----END PGP SIGNATURE-----

--nFreZHaLTZJo0R7j--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
