From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Script
Date: Tue, 12 Nov 2002 17:33:31 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021112173331.GA1964@cam.ac.uk>
References: <06d801c28a6e$4ce35e00$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <06d801c28a6e$4ce35e00$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

>  for filestotar in `ls --almost-all --directory -x1 *`
>         do
>                 if ["$filestotar" !=3D "advserver"]; then

You need an extra space or two here:
		  if [ "$filestotar" !=3D "advserver" ]; then
Think of ``['' as a command, and the rest of the stuff as arguments
to it.

>                         #!tar --directory /backup/tar.archive --create
> --verbose --file test.tar /backup/$filestotar/*
>                         counter=3D`expr $counter + 1`
>                 fi
>         done=20

If I understand what you're trying to do correctly, then you might want
to look up the --exclude option to tar.

Steven Smith,
sos22@cam.ac.uk.

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE90TtqO4S8/gLNrjcRAhW7AKDFoTx5qFEdCEusH35YQi/YDrKiDQCfUHF0
5VxyogqIGkpDVm7Vv/0G8pg=
=y2yz
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
