From: "Steven Smith" <sos22@cam.ac.uk>
Subject: Re: Mounting BSD-labeled slices in Linux
Date: Tue, 20 Apr 2004 13:40:22 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040420124022.GA51878@archibold.chu.cam.ac.uk>
References: <20040420123702.C22871@bigtower.net> <20040420114321.GA44860@archibold.chu.cam.ac.uk> <20040420141311.D22871@bigtower.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FCuugMFkClbJLl1L"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20040420141311.D22871@bigtower.net>
List-Id: <linux-newbie.vger.kernel.org>
To: erif <linux-newbie@omnib.org>
Cc: Steven Smith <sos22@cam.ac.uk>, linux-newbie@vger.kernel.org


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > > /dev/hda1 corresponds to FreeBSDs /dev/ad0s1.
> > > What does Linux call, for example, /dev/ad0s1a?
> > For recent 2.4 kernels, dmesg should have a line of the form:
> >=20
> >  p4: <bsd: p11 p12 p13 p14 p15 p16 >
>  hda1: <bsd: hda10 hda11 hda12 hda13 >
> =20
> and this is the DragonFly-slice
>=20
>  hda2: <bsd: hda14 hda15 hda16 hda17 >
>=20
> ..strange numbering, shouldn't it look like this?
>  hda2: <bsd: hda20 hda21 hda22 hda23 >
Nope.  The algorithm Linux uses for reading partition tables etc. is
roughly as follows (from memory):

counter =3D 0
unexamined_partitions =3D {entire_disk}
while there are unexamined partitions:
	Pick a partition from the unexamined partitions set
	Assign that partition the number currently in counter
	Look at the partition, and, if it contains any sub-partitions,
		put those in the set of unexamined partitions
	increment counter

What you've seen isn't entirely inconsistent with that, if you have
five logical partitions under the primary for hda4.

> One thing I found particularly interesting is that _both_ /dev/hda2 and
> /dev/hda14 seem to represent /dev/ad0s2a, and I can even mount them both =
at
> the same time!
This strikes me as an incredibly bad idea.  Definitely don't mount
hda2 read/write. :)

Steven.

--FCuugMFkClbJLl1L
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (FreeBSD)

iD8DBQFAhRo2O4S8/gLNrjcRAkaOAKCv/2ZLTcIpgopQ8HgCqBX7UJYc6gCgvw+x
qebHScqBBNedGwebCgs7cQI=
=T9QD
-----END PGP SIGNATURE-----

--FCuugMFkClbJLl1L--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
