From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: insmod at system startup - where?
Date: Wed, 21 May 2003 09:05:44 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030521080544.GA5526@cam.ac.uk>
References: <Pine.LNX.4.53.0305201426560.959@homenet>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.53.0305201426560.959@homenet>
List-Id: <linux-newbie.vger.kernel.org>
To: James Miller <jamtat@mailsnare.net>
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> From the command line I wrote (as instructed): insmod usbserial
> vendor=0x0XXX product=0x0XXXX.  Under standard Debian, what file
> would one edit with the insmod command in order for the system to do
> this serial/USB switcheroo on startup?
Shoving ``usbserial vendor=... product=...'' at the end of
/etc/modules ought to work.

Steven Smith,
sos22@cam.ac.uk.

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+yzNYO4S8/gLNrjcRAn6VAKC0FoFi4OoGdkfnSzpkwzUnCgRZrgCgwYS/
p+anRwJp7/nM0IjxJ79YK8I=
=/rZs
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
