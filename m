From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: 1024x768 SVGA Shell - won't work
Date: Wed, 5 Jun 2002 16:51:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020605155136.GA1429@cam.ac.uk>
References: <20020604080752Z316530-22651+74203@vger.kernel.org> <20020605103118Z314422-22651+75434@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020605103118Z314422-22651+75434@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I can find nothing telling me what else I need to enable to be able to en=
able
> the frame-buffer drivers.
The only thing I can see is CONFIG_EXPERIMENTAL, under
``Code maturity level options''.

> Does anybody know what options I must enable, or even better, have a=20
> dependancy map of the kernel?
The dependency map used by the kernel itself is in arch/i386/config.in.
It isn't terribly easy to read, but it might be somewhat helpful.

Steven Smith,
sos22@cam.ac.uk.

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8/jOIO4S8/gLNrjcRAofGAKCSaA4q/HT3XxUcnkcbI3wZ50nmNQCgtq3q
fK8caSd/fYx6utNMldyKYgg=
=onLZ
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
