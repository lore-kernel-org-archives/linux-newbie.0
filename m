From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: scripts in /etc/rc2.d/
Date: Thu, 16 May 2002 13:27:16 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020516122716.GA949@cam.ac.uk>
References: <m37km5zaf8.fsf@wobble.eth.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="liOOAslEiF7prFVr"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <m37km5zaf8.fsf@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--liOOAslEiF7prFVr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> $ ls -l /etc/rc2.d/S39dictd
> lrwxrwxrwx    1 root     root           20 May 15 21:02 /etc/rc2.d/S39dic=
td -> ../init.d/dictd.init
>=20
> My question is will this work?
Probably.

> I have randomly chosen the name "S39dict".  I can understand that
> the prefix "S" is for "Start".  What is that number for?
Sxx services are started in ascending order of xx, so an S39 script
can assume that S01, S02, S03, ... S38 scripts have been run, but
S40 on will not have been run.

> How should I chose the number?  Is any random number - like the
> one I have chosen - sufficient?
Most numbers should work. Just make sure that syslog (usually
S10syslog or S10sysklog) starts first, and that networking is set
up (this is usually done before any rc2 scripts are run).

Basically, if it works, leave it.

Steven Smith,
sos22@cam.ac.uk.

--liOOAslEiF7prFVr
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE846WkO4S8/gLNrjcRArAiAJwIN4iQUJNc85QL9h+dEnvO+H2a2gCfeNEK
JexXTpCIBADDeccerdRbxlk=
=OlnO
-----END PGP SIGNATURE-----

--liOOAslEiF7prFVr--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
