From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Page Borders in Latex
Date: Sat, 1 Jun 2002 09:30:33 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020601083033.GA611@cam.ac.uk>
References: <200205262029.21973.knutties@indiainfo.com> <20020526170744.GA338@cam.ac.uk> <200205280850.21794.mssnlayam@cs.annauniv.edu>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zhXaljGHf11kAtnf"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200205280850.21794.mssnlayam@cs.annauniv.edu>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

>   > \usepackage{fancybox}

>   > \fancypage{\fbox}{}
> The above method works, but there is a problem.
> The box is too close to the text. Is there some way to
> have a gap between the box and the text.
Try

\fancypage{\setlength{\fboxsep}{32pt}\fbox}{}

Change the ``32pt'' to suit.

Steven Smith,
sos22@cam.ac.uk.

--zhXaljGHf11kAtnf
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8+IYpO4S8/gLNrjcRAh2IAKCeGKZX/+UVo2m94kv0YNohsSL1uACeJ4VZ
kaJOMVsciZLO8jdXcH+Ddzo=
=EeLY
-----END PGP SIGNATURE-----

--zhXaljGHf11kAtnf--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
