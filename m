From: David Benfell <benfell@parts-unknown.org>
Subject: Re: which distribution to use?
Date: Mon, 27 May 2002 19:27:10 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020528022710.GF705@raven.parts-unknown.org>
References: <20020524.130028.-440295.7.matthewstapleton@juno.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020524.130028.-440295.7.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, 24 May 2002 13:00:27 -0700, Matthew Stapleton wrote:
>=20
> I have tried several of the major distributions on my PC over the years.=
=20
> But I am by no means an expert at using UNIX/Linux.  I want some advice
> on the pros and cons of the various distributions.  Possibly any replies
> to this could be aimed at Redhat, Slackware, Debian, SUSE, Mandrake etc
> as many of the others are based on these. =20
>=20
I landed on SuSE and really haven't been satisfied with the other
distributions I've occasionally had to deal with.  I have found it far
and away the most stable, well put together distribution out there.

Red Hat, TurboLinux, and Caldera are really buggy.

My experience with Slackware was that it was simply too primitive.  It
probably has improved since, but when I tried it, you had to build too
much software to get the system into a usable state.  Some of the
required builds had booby traps that made it even more difficult.  I
never did get Netscape running on that version.

Does Slackware use glibc yet?

Debian's package management system (and philosophy) make it a winner
for many.  However, I feel that every argument you can come up with in
favor of Debian's package management is better answered with the
FreeBSD ports collection.  Debian's installation is notoriously
difficult.  Even Debian stable isn't reliable enough for my taste.

In a subsequent post, you say you want to learn the nuts and bolts.
This is good, but is really not dependent on the distribution you
choose.  Most distributions install with a default to come up in GUI
mode, but you can modify /etc/inittab, changing the default run level
to come up in text mode.  You can then use the startx command to bring
up X whenever you need the GUI.

The final argument for SuSE, I believe, is that of all the major
distributions, SuSE comes closest to the File Hierarchy Standard.  All
the distributions are moving in that direction, so for learning
purposes, SuSE may offer you a bit of a head start.

--=20
David Benfell, LCP
benfell@parts-unknown.org
---
Resume available at http://www.parts-unknown.org/resume.html

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.7 (GNU/Linux)

iQEXAwUBPPLq/Xw5zqzgtjVOFAKwDQP/SjzV/Z+wSQe2WznqSkjST0Yn5B0MMgn4
TjK8Mt/95vMj5AfRYJASbeWkib5fzRwZGTdAcCSvD6cUTjQxKrS6Pw5q03ClbY5d
uYCTOC1jsO2jch8dUGr/4PnY5Pke4Ve9E/ovYf0kekJ2GnxHasc7aTDeeDESsRuR
jKv+PtiRCJMD/iGxGG/BW+YtnWrgyQvBlPsuprrwP7UkQRXKlvqn3ajPXfII48PI
EuL/5UuArXOWN641zh9lt7umum16t4h003l8albb/ECQWsbZO3m9gtHtWV8yQNGg
HB7XmXC+YEVVd3+MJIyeRn8VUGuBUNuS0rrUCT60C9bIQ9NBfr1dSV9T
=8JIj
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
