From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Prblm: USB mouse in KDE 3.0 doesn't work about every second boot?
Date: Wed, 5 Jun 2002 17:10:38 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020605161038.GA3597@cam.ac.uk>
References: <000001c20c96$9f652970$c8000a0a@stowks14>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <000001c20c96$9f652970$c8000a0a@stowks14>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I have a problem with one of my computers. About every second boot the
> mouse in KDE doesn't respond to movement. I also have a laptop with the
> same type of USB mouse and here I don't have that problem. If the mouse
> doesn't work, the only thing to do is to reboot the computer and mostly
> that makes it work until the next boot. It's not enough just to restart
> KDE.
The usual cause of random problems with the mouse under X is a bad
interaction with gpm. Try killing gpm by logging in as root under
a text console (Ctrl-Alt-F1 on most ditributions) and going:

gpm -k

the next time th mouse decides to play silly games.

Steven Smith,
sos22@cam.ac.uk.

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8/jf+O4S8/gLNrjcRAlfxAKCknw+l66EqrIXOfCVo7hMUXMXnZQCfcBil
iBfcLs09voIUw+4BEXfybec=
=9vEx
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
