From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Syslog - doubt
Date: Wed, 5 Jun 2002 19:51:58 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020605185158.GA749@cam.ac.uk>
References: <200206051714.g55HE8u18108@cs.annauniv.edu>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200206051714.g55HE8u18108@cs.annauniv.edu>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> If someone executes this program repeatedly
> of from a loop, syslog would become too large.
> Is something wrong?  Can access to syslog
> be restrcted?
Good question. I can't see any ways to limit the rate at which
a given user can send messages, and the sysklogd man page lists this as
a flaw in the current implementation. This is somewhat worrying.

On the other hand, you can quite easily prevent certain users from
logging any messages at all, if you only log messages from the local
machine. syslogd listens on a Unix socket, usually /dev/log, for incoming
messages, and if a user doesn't have write permission on that socket,
they can't put anything in the syslog. So, what I would do is this:

1) Create a new group called logging
2) Place all of the users and services which need to make entries in the
   syslog in this group
3) chgrp logging /dev/log
4) chmod o-rw /dev/log

Of course, this doesn't help if you use network logging as well. The
easiest way of restricting this is probably using the kernel packet
filters.

Steven Smith,
sos22@cam.ac.uk.

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8/l3OO4S8/gLNrjcRArIWAJ0alFR0nvzeeQyRPhBQeFVXcb53JACePZoN
WIVFy7r1ZT/8JMfHnG4riv0=
=P6ne
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
