From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Setting EXTRAVERSION (was Re: Kernel error)
Date: Tue, 28 May 2002 18:08:29 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020528170829.GA317@cam.ac.uk>
References: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH> <20020527165031.GA2875@cam.ac.uk> <m3ptzge0qn.fsf_-_@wobble.eth.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2fHTh5uZTiUOsy+g"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <m3ptzge0qn.fsf_-_@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> > My suggestion would be to compile a new kernel, and set
> > EXTRAVERSION.  If the new kernel is version 2.4.5<extra>, then put
> > the System.map in /boot/System.map-2.4.5<extra>.
> I installed RH 7.1.  It came with 2.4.2-2 kernel.  I then upgraded the
> kernel to 2.4.16.  While compiling the new 2.4.16 kernel I didn't not
> set the EXTRAVERSION in /usr/src/linux/Makefile. Will this cause any
> problem in the future?
Usually not. Occasionally, though, especially if you compile the same
version several times, you get odd errors, and of course you'll overwrite
the modules from the previous compilation.

Generally, it's safer to set it, even if you don't think you need it.

> What is the significance of this EXTRAVERSION?
It allows you to distinguish different kernels which have the same
official version number but were compiled with different configurations.

> Can I choose any value for this variable?
Within reason. Numbers, letters, and dashes are probably safe.

> Also, should this value always start with -, by convention?
That's the convention. There's no real reason for it, though, except
to make things easier to read.

Steven Smith,
sos22@cam.ac.uk.

--2fHTh5uZTiUOsy+g
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE887mNO4S8/gLNrjcRAiZsAJsHcWCCWiO2KiHt4g94Jl0l2tluwQCgx8pl
hMaK14yfMB5k5SlXHZCADos=
=LD72
-----END PGP SIGNATURE-----

--2fHTh5uZTiUOsy+g--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
