From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: File-system Ext2 or Ext3??
Date: Sun, 12 May 2002 16:09:09 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020512150909.GA596@cam.ac.uk>
References: <20020511204622.23285.qmail@web12806.mail.yahoo.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fUYQa+Pmc3FrFX/N"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020511204622.23285.qmail@web12806.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Staci <spiritlover666@yahoo.com>
Cc: linux-newbie@vger.kernel.org


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I set up journals on my ext2 FSes (there's two, / and
> /home) with tune2fs -j, to make them ext3.  But I
> still get forced fscks at startup,
How many? ext3 should be fscked every 20 or so times it gets mounted,
to find any errors which crept in from somewhere.

If it's more than that, check you've got a recent fsck. ext3 support
was added in (I think) 1.19.

> So I look at cfdisk for /dev/hdb, and it says those
> partitions are ext2.  Is my cfdisk too old?  Did I do
> something wrong?
This is a maybe-bug in fdisk. Partition table entries have a numerical
type id, which, for Linux native partitions, is 83 hex. Unfortunately,
``Linux native'' isn't terribly well defined, with ext, ext2, ext3,
reiser, and several other having a claim. fdisk assumes ext2 is the One
True Linux Filesystem, so gives the wrong answer if something else is used.
It should probably just say Linux.

Steven Smith,
sos22@cam.ac.uk.

--fUYQa+Pmc3FrFX/N
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE83oWVO4S8/gLNrjcRAvxIAKDEwhWsLJ598FknjA9AYt3txVmOkQCeLCl5
dKNS4CXIVBT5xo7OnT1dKvE=
=VhLd
-----END PGP SIGNATURE-----

--fUYQa+Pmc3FrFX/N--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
