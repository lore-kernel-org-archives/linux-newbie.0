From: Thorsten Alge <mail@thorsten-alge.de>
Subject: Re: partitons and proper order
Date: Sun, 31 Oct 2004 21:02:11 +0100
Message-ID: <1099252931.2838.4.camel@localhost>
References: <41853B6B.5020903@kevino.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-pR8kIuqUAiGkS/zp+a6I"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41853B6B.5020903@kevino.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>


--=-pR8kIuqUAiGkS/zp+a6I
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mike,

the order of the partitions doesnt really matter. Only if you want to
use lilo as your bootloader you should have your /boot partition under
cylinder 1024 - if you use grub you do not need an /boot partition.

Am So, den 31.10.2004 schrieb mike um 20:22:
> Hello,
> I have installed linux a few times no real problems with my
> installs. But going to move some drives around and do a fresh
> install. I usually install with the below
>=20
> /
> swap
> /boot
> /var
> /usr
> /home
> /tmp
>=20
> I use ext3 and I am currently useing Mandrake distribution on an
> intel compatible machine with ide drives.
>=20
> My question is does the order I create the partitions matter and if
> so what would be the proper order, if there is one?
>=20
>=20
> Mike
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

mit freundlichen Gr=C3=BC=C3=9Fen,

Thorsten Alge



           =20
________________________
     Auszubildender
 Fachinformatiker f=C3=BCr
   Systemintegration

     Thorsten Alge
    Ringslebenstr. 2
      12353 Berlin
        Germany=20
         Mobil:
      +49 (0) 1 60
       / 93 83 94
           73
          Tel:
      +49 (0) 30 /
      66 86 82 27
          Fax:
      +49 (0) 30 /
      66 86 82 27
          www:
http://www.thorsten-alge.de/
        E-Mail:
 mail@thorsten-alge.de
          ICQ#
       163193603
        GPG-Key

You laugh at me because
I'm different. I laugh
at you because you're
all the same...!


--=-pR8kIuqUAiGkS/zp+a6I
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Dies ist ein digital signierter Nachrichtenteil

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQBBhUTCfqTT+g1FweURAs05AKCszESMu4R3bdvB/73bYA4k3P7EDwCffeYv
x7fImzbQlK7r3GhmuDyY4IA=
=9W65
-----END PGP SIGNATURE-----

--=-pR8kIuqUAiGkS/zp+a6I--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
