From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: (F)colour directory listings ...
Date: Wed, 19 Feb 2003 19:59:25 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030219195925.GA427@cam.ac.uk>
References: <b30lmn$mu7$1@main.gmane.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b30lmn$mu7$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
To: Jamie Risk <jamie_risk@yahoo.ca>
Cc: linux-newbie@vger.kernel.org


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I appreciate the colour that gcc's "ls --color=auto" gives me, although I'd
> like to change some of the colours. I didn't see it the man/info pages.
Try man dircolors.  It isn't hugely well documented, but you probably
want to go ``dircolors --print-database > ~/.lscolors'', then edit
~/.lscolors, and then add a line of the form ``eval `dircolors ~/.lscolors`''
to your ~/.bash_profile.

Steven Smith,
sos22@cam.ac.uk.

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE+U+IdO4S8/gLNrjcRAoXpAJ9AMl7x0qeezjgebJeJE5pWgKf6dgCgiVnO
B/LX6ctArkrIv8kQ018/jag=
=AMQZ
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
