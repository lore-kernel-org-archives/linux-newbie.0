From: "Steven" <sos22@cam.ac.uk>
Subject: Re: (F)A "subject" rule for procmail
Date: Sun, 14 Sep 2003 10:49:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030914094953.GA571@archibold.chu.cam.ac.uk>
References: <XFMail.20030913224135.ik5bcu@tin.it>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <XFMail.20030913224135.ik5bcu@tin.it>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> How can I set the rule into procmailrc to block ALL Sildenafil topic subj=
ect ?
Try:

:0
* ^Subject:.*Sildenafil.*
spam/.  =20

Steven Smith,
sos22@cam.ac.uk.

--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (FreeBSD)

iD8DBQE/ZDnBO4S8/gLNrjcRAvAmAJ4q2wztLcriUjdQtxe93ZyjqzA+zQCgjt18
7wBZAnmh2ok+wrtcAchnnvM=
=o1ya
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
