From: oford <oford@ev1.net>
Subject: Re: Basic questions on the kernel
Date: 30 May 2003 15:10:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1054325442.12558.43.camel@spider.hotmonkeyporn.com>
References: <36993D449C7FA647BF43568E0793AB3E061CD9@nevis_pune_xchg.pune.nevisnetworks.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-X3MRkK1Nb2ME8NWp5jRh"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36993D449C7FA647BF43568E0793AB3E061CD9@nevis_pune_xchg.pune.nevisnetworks.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Girish Kale <girish.kale@nevisnetworks.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>


--=-X3MRkK1Nb2ME8NWp5jRh
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri, 2003-05-30 at 08:00, Girish Kale wrote:
> Hi,
>=20
> I have a few basic questions on the kernel performance:
>=20
> 1) For embedded systems, even though standard linux may not have hard
> real-time performance unless real-time patch, low latency patch are
> applied, I would like to know if linux can give "deterministic"
> performance. Meaning can we be guaranteed that a particular process will
> be scheduled after a particular time. What are the these times or where
> do I find this data. =20
>=20
> 2) When we are using linux on an embedded system, will there a memory
> management unit for this, since there will not be any swapping in/out of
> pages? Can we avoid a process from keeping on allocating memory thereby
> starving other applications?=20

1) I think your best source of info here is going to be the scheduler
code itself.  You can find lots of information on it by searching the
linux-kernel mailing list archives.  Here is the link:
http://marc.theaimsgroup.com/?l=3Dlinux-kernel&r=3D1&w=3D2

2) There are MMUs for almost every architecture.  My advice is to email
the kernel maintainer of the architecture you wish to use.  Seek out any
lists that the embedded community uses and I'm sure they will be glad to
assist you.

3) Be prepared to make modifications to the kernel source code to fit
the needs of your specific device.
--=20
Owen Ford <oford@ev1.net>

--=-X3MRkK1Nb2ME8NWp5jRh
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.2 (GNU/Linux)

iD8DBQA+17rC7BqG9qbphc4RAmvlAKCVimytePkyBq6LT6J3LdIAjhsCNgCg2BOR
39EkTAUWnVh5M3dMGoMHr+k=
=oPD8
-----END PGP SIGNATURE-----

--=-X3MRkK1Nb2ME8NWp5jRh--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
