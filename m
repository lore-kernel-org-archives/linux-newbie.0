From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Marco's failed message: Help on scripting
Date: Sun, 28 Apr 2002 09:59:06 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020428085906.GB361@cam.ac.uk>
References: <2.2.32.20020428033439.010495e0@[192.168.1.23]> <5.1.0.14.0.20020427232245.00a24530@shawmail.ed.shawcable.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GID0FwUMdk1T2AWN"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.0.20020427232245.00a24530@shawmail.ed.shawcable.net>
List-Id: <linux-newbie.vger.kernel.org>
To: Chris Rose <offline@shaw.ca>
Cc: linux-newbie@vger.kernel.org


--GID0FwUMdk1T2AWN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> for i in `ls jnos*.p*`; do mail -s $i user@myhost.domain; done;

It might be easier to go:

for i in jnos*.p*; do mail -s $i user@myhost.domain; done

and get rid of the backticks. Both should do the same thing, though.

Steven Smith,
sos22@cam.ac.uk.

--GID0FwUMdk1T2AWN
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8y7naO4S8/gLNrjcRAiAXAJ0aIxHLE5mW9Aa98zMGahFObk/gIQCfZ7X/
fN0/WUoFIGCSBVSiq2dutnE=
=8Hns
-----END PGP SIGNATURE-----

--GID0FwUMdk1T2AWN--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
