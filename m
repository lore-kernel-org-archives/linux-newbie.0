From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: not getting command prompt at the console
Date: Thu, 22 Feb 2007 12:11:15 +0100
Message-ID: <20070222111115.GC31252@gateway.home>
References: <b115cb5f0702220149wfbfc051qc8d0106b9e4ed98d@mail.gmail.com> <20070222102540.GB31252@gateway.home> <f68850780702220250x57f4f678re104caecfeec6ef2@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <f68850780702220250x57f4f678re104caecfeec6ef2@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Raseel Bhagat <raseelbhagat@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>, linux-mips@linux-mips.org


--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2007 at 04:20:08PM +0530, Raseel Bhagat wrote:
> On 2/22/07, Erik Mouw <mouw@nl.linux.org> wrote:
> >Run a getty on the serial device (I suppose you're using a serial
> >port).
> >Could be that the serial driver changed or that you forgot to compile a
> >driver for the serial device.
> >
>=20
> Also , assuming you are using a serial console , check your entries in
> the inittab file .
> It should look  something like :
> ttyS0::respawn:/sbin/getty ttyS0 115200 linux

If the device is indeed called "ttyS0". Remember it's a MIPS board, not
a peecee. For example, on StrongARM SA11x0 you need to use ttySA0
instead of ttyS0.

Erik

--=20
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery

--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFF3XpS/PlVHJtIto0RAhBJAKCHMQo2h9vHdq8sSTSzb3O8uwmLzgCfTWXh
9P2DzHQLsDvZQShNgq3vvb4=
=8U7o
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
