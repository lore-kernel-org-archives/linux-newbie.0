From: "Steven Smith" <sos22@cam.ac.uk>
Subject: Re: Mounting BSD-labeled slices in Linux
Date: Tue, 20 Apr 2004 20:18:32 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040420191832.GA3821@archibold.chu.cam.ac.uk>
References: <20040420123702.C22871@bigtower.net> <20040420114321.GA44860@archibold.chu.cam.ac.uk> <20040420141311.D22871@bigtower.net> <20040420124022.GA51878@archibold.chu.cam.ac.uk> <20040420150502.B31144@bigtower.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20040420150502.B31144@bigtower.net>
List-Id: <linux-newbie.vger.kernel.org>
To: erif <linux-newbie@omnib.org>
Cc: linux-newbie@vger.kernel.org


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> > > One thing I found particularly interesting is that _both_ /dev/hda2 and
> > > /dev/hda14 seem to represent /dev/ad0s2a, and I can even mount them both at
> > > the same time!
> > This strikes me as an incredibly bad idea.  Definitely don't mount
> > hda2 read/write. :)
> Just out of curiosity, I mounted /dev/hda1 too. =)
> Shouldn't something prevent me from doing this, or at least warn me?
You can certainly make a real argument that it's a bug, but if you
make sure that both mounts are read-only it's potentially useful when
combined with a bunch of chroots.

Only potentially, though.

Steven.

--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (FreeBSD)

iD8DBQFAhXeIO4S8/gLNrjcRAqh7AJ41RZvXZCoQdHSirIy2Hajb2i+u8gCgmc25
kQlqbY1oQPtlxnvmm3l6Dmw=
=GW5B
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
