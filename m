From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Diskspace problem
Date: Thu, 23 May 2002 09:38:00 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020523083800.GB326@cam.ac.uk>
References: <20020522232517.GA31882@neon>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cmJC7u66zC7hs+87"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020522232517.GA31882@neon>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--cmJC7u66zC7hs+87
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> /dev/hdc3              5119972   2181272   2938700  43% /
> /dev/hda4              7702924   2414140   5288784  32% /usr
> /dev/hdc2             12287644  11777212    510432  96% /usr/local
>=20
> My /usr/local/ is always about full and I need more space there. And I
> have about 8 Gigs free on / and /usr. I actually don't have any idea
> what to do besides installing everything new. All the filesystems are
> reiserfs.
You can probably shrink / and /usr using resize_reiserfs (on Debian,
this is part of the resierfsprogs package; I'm not sure about other
distributions. After that, use fdisk or cfdisk to shrink hdc3 and
hda4 (there are brief instructions in the resize_reiserfs manpage).
Ideally, you would want to tack this space onto hdc2, but I can't
see any way of doing that, so the best thing is probably to make another
partition or two in the space, copy a load of files from /usr/local
into that, and then mount on e.g. /usr/local/bin.

Resizing the root filesystem is likely to cause problems; you may need
to use a boot disk. There should be one included with your distribution.

DISCLAIMER: I have made no attempt at all to test this, and if it goes
wrong, your / and /usr will be trashed beyond hope of recovery. Take
full and careful backups.

Steven Smith,
sos22@cam.ac.uk.

--cmJC7u66zC7hs+87
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE87KpoO4S8/gLNrjcRAkUOAJsHOEzSMLOZOSiWbeOU1U9K9CjOhgCdHb9c
OKIo9pxbYnWQ+uv7VxDzrbk=
=Bcwx
-----END PGP SIGNATURE-----

--cmJC7u66zC7hs+87--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
