From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: process priority at 25
Date: Sun, 19 May 2002 17:23:30 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020519162330.GA3150@cam.ac.uk>
References: <20020519142943.GA9998@prester>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020519142943.GA9998@prester>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I alway thought process priorities range from -20 to 19 (also according to
> "man nice"). But under kernel 2.5.16 I run top and process is display with
> priority 25..
A process's nice value is not the same thing as its priority. niceness
is used in the calculation of priority, but they're not bound together.
In particular, a process's priority is liable to become numerically
greater (-> lower priority) if it makes heavy use of the processor
(this is supposed to stop something like ``while (1) ; '' bringing
down the system), while a process which makes heavy use of the disk
is likely to get slightly higher priority (because as soon as it hits
the disk, it blocks, and something else can run).

Under 2.4 kernels, priority is constrained between 0 and 20 (for non-realtime
processes), but there's no reason why the same thing should apply to 2.5
kernels.

Steven Smith,
sos22@cam.ac.uk.

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE859GCO4S8/gLNrjcRAsWfAKC2SeWWLnRqR6WukM8DJ933j8G3vQCgrzZs
eJLSMCFoLzf8Py4rT0/yVVM=
=HfZ5
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
