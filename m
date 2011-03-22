From: Mancausoft <andreamilazzo@mancausoft.org>
Subject: Re: devfs Gpio and interrupt
Date: Tue, 22 Mar 2011 16:01:45 +0100
Message-ID: <20110322150145.GA14798@homer>
References: <20110209142230.GB10103@homer>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HcAYCG3uE/tztfnV"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20110209142230.GB10103@homer>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 15:22 Wed 09 Feb     , Mancausoft wrote:
> I read gpio.txt in Documentation of kernel and try to use it.
> pfd.fd =3D open("/root/tasto1/value", O_RDONLY);
> pfd.events =3D POLLPRI | POLLERR;=20
>=20
> //ready =3D poll(&pfd, 1, -1);=20
> ready =3D poll(&pfd, 1, 100000);=20
>=20
> lseek (pfd.fd, 0, SEEK_SET);
>=20
> val =3D read(pfd.fd, buf, 254);
> //the output are: 1, 10, 10
> printf ("%d, %d, %d\n", ready, pfd.revents, pfd.events);
>=20
> printf ("%d, %s\n", val, buf );
>=20
> close(pfd.fd);
>=20
> But it don't wait for an edge but they exit immediatly.=20
> Why? where is the problem?

My Bad!

now work:

pfd.fd =3D open("/root/ledverde/value", O_RDWR );
while (1)
{
pfd.events =3D  POLLPRI | POLLERR; // | POLLWRBAND;

lseek (pfd.fd, 0, SEEK_SET);

val =3D read(pfd.fd, buf, 254);
buf[val] =3D 0;
//printf ("%d, %s\n", val, buf );

ready =3D poll(&pfd, 1, -1);
printf("%d\n", ++i);
}


--=20
Mancausoft - http://www.mancausoft.org/
GPG key: B53F90F2

--HcAYCG3uE/tztfnV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk2IudkACgkQ2D/gwrU/kPIYDwCeMOIvr8loOsDmyI5hkkWdCVIj
x6QAn3WtQgvl7viL7vAUPcnbOXY4u2ux
=4uTn
-----END PGP SIGNATURE-----

--HcAYCG3uE/tztfnV--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
