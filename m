From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Forcing fs checks on ext3
Date: Sun, 12 May 2002 22:48:13 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020512214813.GA942@cam.ac.uk>
References: <20020512204732.2098.qmail@linux.ik5bcu.ampr.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020512204732.2098.qmail@linux.ik5bcu.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> Hello I'm using RHL-7.2 with ext3 journalled file system,it works fine,
> however I wonder issue an automated fs check let'say every 20 system's boots,
> is there a file to set to accomplish this?
ext{2,3} superblocks contain a field indicating how many times they can
be safely mounted without fscking, and a maximum interval between fscks.
To get at this data, go

tune2fs -l /dev/hda1

replacing hda1 with the device which stores the filesystem. To set the
maximal mount count, go

tune2fs -c 20 /dev/hda1

whilst the maximum time between fscks is set with

tune2fs -i <time> /dev/hda1

Time can be specified in days as 30d, weeks as 4w, or months as 1m.
man tune2fs for more details. Also, you shouldn't really do this while
the filesystem's in use. I don't normally bother unmounting it,
but strictly speaking you probably should.

Steven Smith,
sos22@cam.ac.uk.

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE83uMdO4S8/gLNrjcRAjKqAJ0SB2Z1K8UuUP9n3Pl42tW0SmLknwCg2ccF
ijFMrvxR8GrTKSjMpQcxUaA=
=zafF
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
