From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Shutdown / Halt Problem - Bad EIP Value
Date: Thu, 30 May 2002 09:37:10 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020530083710.GA329@cam.ac.uk>
References: <20020528033642.YJMP11659.rwcrmhc53.attbi.com@there> <0205280614490A.01212@unix.pa3gcu> <20020530012232.HKR13253.rwcrmhc54.attbi.com@there>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HcAYCG3uE/tztfnV"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020530012232.HKR13253.rwcrmhc54.attbi.com@there>
List-Id: <linux-newbie.vger.kernel.org>
To: Brent Eckhout <linuxworks@attbi.com>
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I'm not sure if I can capture the console messages as the system is shutt=
ing=20
> down.
If you compile a kernel without ACPI or APM support, the messages will just
sit on the screen long enough for you to copy them out by hand. You should =
be
able to get the same effect by editting the shutdown scripts and removing
the ``-p'' from the halt command line.

Steven Smith,
sos22@cam.ac.uk.

--HcAYCG3uE/tztfnV
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE89eS2O4S8/gLNrjcRArmzAJ4u5zwZfhLXjIenoCKtPQWgvDXyLwCeOw93
a7GQ26O2D3fRx6MkoJJ2U5M=
=8TAI
-----END PGP SIGNATURE-----

--HcAYCG3uE/tztfnV--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
