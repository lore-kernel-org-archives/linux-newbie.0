From: Steven Smith <steven@serisilks.screaming.net>
Subject: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 11:09:03 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020413100903.GA296@archibold>
References: <F117ylW9wWDV81Ze8P300020b87@hotmail.com>
Reply-To: sos22@cam.ac.uk
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <F117ylW9wWDV81Ze8P300020b87@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Jerry T <linuxl1@hotmail.com>
Cc: linux-newbie@vger.kernel.org


--9amGYk9869ThD9tj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> From Cygwin on win2000 I tried to use slogin to get=20
> to my Linux box but I get "Connection Refused."
Have you tried sshing in from the Linux box?

ssh username@localhost

That's probably less error-prone, and at least confirms that the daemon
is running.

> The sshd process starts up when I boot up.
Is it listening? netstat -at should include a line something like:

tcp 0 0 *:ssh *:* LISTEN

If that's not present, it usually means the sshd has shut down, or is
configured not to listen to the network.

If it is present, look at your packet filtering/firewalling rules
(iptables -L for recent distributions).

Steven Smith,
sos22@cam.ac.uk.

--9amGYk9869ThD9tj
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8uAO/O4S8/gLNrjcRAiq+AKCTDhbGLPh7ywL6B/sGi7xHDH2d4QCgg6na
w3//8SMmDcfx9jcdseWOFwQ=
=F70j
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
