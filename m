From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Page Borders in Latex
Date: Sun, 26 May 2002 18:07:44 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020526170744.GA338@cam.ac.uk>
References: <200205262029.21973.knutties@indiainfo.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200205262029.21973.knutties@indiainfo.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Natarajan <knutties@indiainfo.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> 	 How do you draw borders for pages in Latex? Thanks in advance.
There are probably better ways, but the fancybox package provides a way
to do this. In the document preamble, go:

\usepackage{fancybox}

and then once you get into the document proper, go:

\fancypage{\fbox}{}

This needs to be one of the first things after the \begin{document}.

As I said, there are probably better ways, but that's the first one
which comes to mind.

Steven Smith,
sos22@cam.ac.uk.

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE88RZfO4S8/gLNrjcRAiAfAKDM26qsutYNcAt11KSbRDA58+WQZgCdGRlO
2rPGdG5MuwtrSPamfs0ap3A=
=nK5I
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
