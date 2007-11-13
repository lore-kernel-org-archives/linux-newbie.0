From: Kristof Provost <Kristof@provost-engineering.be>
Subject: Re: kernel module
Date: Tue, 13 Nov 2007 10:40:52 +0100
Message-ID: <20071113094052.GB10096@berith>
References: <c26b6f110711120559l2c9f9be3wb729a3a770b13ffd@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="R3G7APHDIzY6R/pk"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <c26b6f110711120559l2c9f9be3wb729a3a770b13ffd@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Rajeh kuri <rajeshkuri@gmail.com>
Cc: linux-newbie@vger.kernel.org


--R3G7APHDIzY6R/pk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On 2007-11-12 19:29:17 (+0530), Rajeh kuri <rajeshkuri@gmail.com> wrote:
> Hi,
>=20
> Is there any ways to invoke/call the function (kernel module
> functions) from compiled base kernel. Well that statement sounds
> strange.
>=20
> I will try to simplify that statement, with problem I faced.
> I have written a kernel module but it is of no use till I call one of
> its function from kernel, and hence i modified the kernel source to
> call this function and then compiled the kernel. Now the problem is
> obliviously 'linker cannot resolve the symbol. Because I'm trying to
> call the function which is available only after I insert the kernel
> module.
The problem is that you're calling code compiled as a module from code
compiled into the kernel. That means you either compile both parts as a=20
module, or compile both of them into the kernel.
Kbuild/Kconfig has supports this type of dependency because it's quite
common.

Kristof

--R3G7APHDIzY6R/pk
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iD8DBQFHOXEkUEZ9DhGwDugRAuRwAJ0TjAm+RMggTz8s79LNIsPTBXtlqQCfbkEp
hqfo+ieU2axIBIldFL7YdUA=
=yQLI
-----END PGP SIGNATURE-----

--R3G7APHDIzY6R/pk--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
