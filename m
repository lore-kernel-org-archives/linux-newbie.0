From: "Steven Smith" <sos22@cam.ac.uk>
Subject: Re: Mounting BSD-labeled slices in Linux
Date: Tue, 20 Apr 2004 12:43:21 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040420114321.GA44860@archibold.chu.cam.ac.uk>
References: <20040420123702.C22871@bigtower.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20040420123702.C22871@bigtower.net>
List-Id: <linux-newbie.vger.kernel.org>
To: erif <linux-newbie@omnib.org>
Cc: linux-newbie@vger.kernel.org


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> /dev/hda1 corresponds to FreeBSDs /dev/ad0s1.
> What does Linux call, for example, /dev/ad0s1a?

Usually, Linux just shoves stuff in BSD-style slice tables on the end
of the partition table.  In my case, ad0s4a is hda11, ad0s4b hda12,
and so on.

For recent 2.4 kernels, dmesg should have a line of the form:

 p4: <bsd: p11 p12 p13 p14 p15 p16 >

just after the mundane partition check, which should make it fairly
obvious.

Steven Smith.

--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (FreeBSD)

iD8DBQFAhQzZO4S8/gLNrjcRAv29AJ40EEcWThRWowOQao3F3hx80pRGjwCgk173
IaQ89BG9KbDS17IiTotBB3c=
=difY
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
