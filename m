From: Owen Ford <oford@arghblech.com>
Subject: RE: keyword for rivafb in XF86Confige file
Date: Wed, 29 Sep 2004 05:37:00 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1096454220.27898.31.camel@spider.hotmonkeyporn.com>
References: <4EE0CBA31942E547B99B3D4BFAB348111081AE@mail.esn.co.in>
	 <1096454123.27898.29.camel@spider.hotmonkeyporn.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-fveTnV4mOEPR/JxhDQbI"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1096454123.27898.29.camel@spider.hotmonkeyporn.com>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--=-fveTnV4mOEPR/JxhDQbI
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed, 2004-09-29 at 05:35, Owen Ford wrote:
> On Wed, 2004-09-29 at 05:12, Mukund JB. wrote:
> > > IIRC rivafb actually screws up the nvidia driver.  I've never gotten
> > it
> > > working with *any* nvidia card ever :)
> > It is working for me.=20
> > I have edited the Driver field in the device section as follows:-
> > Driver "fbdev"=20
> >=20
> > After then the X server is using rivafb as I could see the debug
> > messages.
> > But it is not invoked when I switch between app ( ATL+TAB) or I open ne=
w
> > app.
> > I don't know, why?
> > Is the software take care of it, rather than the fb driver?
> > Suggest, if u have any idea.
>=20
> I recommend using the vesafb.  As I said before I've never got rivafb
> working so YMMV.
>=20
> I frequently see people on the gentoo forums having issues with rivafb
> and the binary nvidia driver.  I am 95% certain that vesafb works with
> the nv driver or the binary nvidia driver.
>=20
> Just search for rivafb on forums.gentoo.org.  Many peaple have had
> issues with it and most of the information you will find there isn't
> completely specific to the gentoo distro.
>=20
> Good luck :)

--=-fveTnV4mOEPR/JxhDQbI
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.6 (GNU/Linux)

iD8DBQBBWpBM4bjUYpnk5/QRAk3LAJ9zGDDTSOg0Gjb1FpCK5gw08fl1oACaA2C1
1XRGn7NlGzd9sz+HSkrNZ78=
=nf2s
-----END PGP SIGNATURE-----

--=-fveTnV4mOEPR/JxhDQbI--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
