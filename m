From: Rodrigo Rubira Branco <rrbranco@br.ibm.com>
Subject: Re: Padding in gcc
Date: Tue, 10 Jul 2007 17:15:28 -0300
Message-ID: <1184098528.5730.12.camel@localhost.localdomain>
References: <C86899CCB10A6C4E93D5978DCB232D4B0575FCC7@GDCMX01.igglobal.com>
Reply-To: rrbranco@br.ibm.com
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-5jW3SeMAT/Q5Q3O44MPf"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B0575FCC7@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


--=-5jW3SeMAT/Q5Q3O44MPf
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon, 2007-07-09 at 17:10 +0530, Rajat Jain wrote:
> Hi,
>=20
> Perhaps a little offtopic but no harm in trying ...
>=20
> Can we always rely on the fact that gcc will pad the following structure?
>=20
> typedef struct {
>     int descrp;      SYSCALL64_STRUCT_ATTR;
>     (Automatic padding here?)
>     long long pos;   SYSCALL64_STRUCT_ATTR;
>     int mode;        SYSCALL64_STRUCT_ATTR;
> } lseek64_t;
>=20
> What is the correct way to make it portable? Explicitly added padding fie=
lds?
>=20
> Thanks,
>=20
> Rajat
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

Unless you explicitly say this structure is packed
(__attribute__((packed))) gcc will align it... for sure you need to take
care for yourself when you are trying to use different cache lines for
members of this structure.

Anyway, the code itself is portable, since you are just using C.


cya,


rodrigo (BSDaemon).

--=20
Rodrigo Rubira Branco
Software Engineer=20
Advanced Linux Response Team (ALRT) / Linux on Power Toolchain
IBM Linux Technology Center (IBM/LTC)
rrbranco@br.ibm.com

GPG KeyID: 1FCEDEA1

--=-5jW3SeMAT/Q5Q3O44MPf
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQBGk+jgRpuC3B/O3qERAqFWAJ95Zu0SY8g6CDhDEW7p6U1487l2sACggl1K
3pJ5Z50VFz2C7Z/Q2Hsp5uU=
=lgPZ
-----END PGP SIGNATURE-----

--=-5jW3SeMAT/Q5Q3O44MPf--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
