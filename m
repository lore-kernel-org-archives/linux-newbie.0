From: Tobias Hirning <Tobias.Hirning@gmx.de>
Subject: Re: Problem booting linux from a Win2000 laptop
Date: Tue, 19 Apr 2005 16:28:13 +0200
Message-ID: <200504191628.35144.Tobias.Hirning@gmx.de>
References: <01C543F8.EE6739E0.vanitha@agilis.stengg.com>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2120711.8JKR6ChQTo";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <01C543F8.EE6739E0.vanitha@agilis.stengg.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

--nextPart2120711.8JKR6ChQTo
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Vanitha!
On Monday, 18. April 2005 11:28 Vanitha Ramaswami wrote:
> I didnt install on the MBR, since in the Online help of the redhat
> installation disk its mentioned that for Win2K/NT the Boot loader
> should be installed in the first sector of the boot partition on
> not on the MBR..?
You can also do so, but then you have to mark the partition of Linux=20
as active (with fdisk or such a tool).

> Anyway i will try to install the bootloader on the MBR and see
> whats happening
I think this is the better way. I've tested this with Win2K and WinXP=20
and it works fine.
Tobias
=2D-=20
GPG-Fingerprint: C39E 5381 7721 8613 B5C9  CFAF 54FC B8DB D02D 7085
Registered Linux-User #367044
Registered Linux-Machine #262062
http://counter.li.org
Diese E-Mail wurde mit einer fortgeschrittenen elektronischen
Signatur nach =C2=A72 2. d) SigG signiert.

--nextPart2120711.8JKR6ChQTo
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)

iD8DBQBCZRWTVPy429AtcIURAhRpAJ9K2NUzv9eCkW0rLisH1sHKNmKqswCfczTv
815v2Ao0q3tdS+6J/kN72aY=
=4Lu9
-----END PGP SIGNATURE-----

--nextPart2120711.8JKR6ChQTo--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
