From: Tobias Hirning <Tobias.Hirning@gmx.de>
Subject: Re: why [permanent] modules on kernel 2.6.11-rc2?
Date: Sun, 10 Apr 2005 17:42:06 +0200
Message-ID: <200504101742.20783.Tobias.Hirning@gmx.de>
References: <eadb84e305040823195a7bd756@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart3157230.M6u8ubqDLt";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <eadb84e305040823195a7bd756@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

--nextPart3157230.M6u8ubqDLt
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi Max!
On Saturday, 9. April 2005 08:19 Maximiliano Rioseco wrote:
> I'm playing with kernel 2.6.11-rc2 and see that some kernel modules
> are marked [permanent] when I make lsmod. This topic was treated in
> linux-kernel mailing list but I quest if somebody can explain in
> more detail the reason for permanent modules (is it only for
> debugging reasons and will be removed in stable releases of
> kernel?).
Do I understand you correctly? You can't unload modules, right?
Normally in the 2.6 kernels you have to select "Module unloading" for=20
unloading modules.
I hope I could help you.
Tobias
=2D-=20
GPG-Fingerprint: C39E 5381 7721 8613 B5C9  CFAF 54FC B8DB D02D 7085
Registered Linux-User #367044
Registered Linux-Machine #262062
http://counter.li.org
Diese E-Mail wurde mit einer fortgeschrittenen elektronischen
Signatur nach =A72 2. d) SigG signiert.

--nextPart3157230.M6u8ubqDLt
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)

iD8DBQBCWUlcVPy429AtcIURAow2AKCUy19YFazcY0fVEJAu37q2dJ3kBgCfRC18
MDRoyEBjG4OzsGC7HcyZDao=
=rXT8
-----END PGP SIGNATURE-----

--nextPart3157230.M6u8ubqDLt--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
