From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: INFO REQ: Clarification of Memory Management
Date: Sat, 7 Dec 2002 12:41:47 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021207124147.GA577@cam.ac.uk>
References: <000101c29d67$f50ce310$670b3941@joe>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <000101c29d67$f50ce310$670b3941@joe>
List-Id: <linux-newbie.vger.kernel.org>
To: "Joseph D. Wagner" <wagnerjd@prodigy.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> Does the __get_free_pages() function eventually call the kmalloc() function?
> Or does the kmalloc() function eventually call the __get_free_pages()
> function?  Or are these two totally separate functions for different
> purposes?
kmalloc() will eventually call get_free_pages(), but you really
shouldn't ever need to know that, unless you're fiddling with the
implementations of either function.

Note that, even though kmalloc() uses get_free_pages() to allocate
memory, it performs various other bookkeeping tasks, and so the two
types of memory allocations really can't be mixed.

> Which of these functions can be called by user process for the purpose of
> allocating memory for that user process?
Neither; use malloc() in userspace. (Or the new operator if you're using
C++)

Steven Smith,
sos22@cam.ac.uk.

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE98eyLO4S8/gLNrjcRAv2dAKCmbUPIWwV9htBJTjzvgwqizQPf4gCgsM00
knpLh1H7t1k1RK2Ke3iGlZ8=
=K36C
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
