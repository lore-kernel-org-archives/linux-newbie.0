From: Kristof Provost <Kristof@provost-engineering.be>
Subject: Re: kernel module
Date: Tue, 13 Nov 2007 15:06:29 +0100
Message-ID: <20071113140628.GC10096@berith>
References: <c26b6f110711120559l2c9f9be3wb729a3a770b13ffd@mail.gmail.com> <20071113094052.GB10096@berith> <c26b6f110711130423s753b915wc2c001087a42d1fd@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JWEK1jqKZ6MHAcjA"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <c26b6f110711130423s753b915wc2c001087a42d1fd@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Rajeh kuri <rajeshkuri@gmail.com>
Cc: linux-newbie@vger.kernel.org


--JWEK1jqKZ6MHAcjA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2007-11-13 17:53:11 (+0530), Rajeh kuri <rajeshkuri@gmail.com> wrote:
> Well it means there is no way to achieve compiled kernel calling
> compiled kernel module. OR The direction of communication from kernel
> to kernel module can not be possible?
It is possible and it's done quite often. You just need to handle things
slightly differently.

Take a filesystem for example. They can be built as a module, and still
be used by the kernel. In this case that's basically done by function
pointers.
When the fs module is loaded it registers itself to the kernel and
passes pointers to the basic operations to the kernel.

The kernel itself doesn't contain any calls to (for example)
fat_statfs. That's only used in the fat module. The kernel calls
the statfs function pointer in the super_operations struct the fat
module registered when it was loaded.


Kristof


--JWEK1jqKZ6MHAcjA
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQFHOa9kUEZ9DhGwDugRAlTGAJ95+U71UEetLtThBDrGVb0S0Nej1QCfY7/z
UGUou8sgaHzy+xCgmcSlNKg=
=zbTW
-----END PGP SIGNATURE-----

--JWEK1jqKZ6MHAcjA--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
