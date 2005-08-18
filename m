From: Tobias Hirning <Tobias.Hirning@gmx.de>
Subject: Re: X (core input device) probs under Debian unstable
Date: Thu, 18 Aug 2005 20:22:01 +0200
Message-ID: <200508182022.20077.Tobias.Hirning@gmx.de>
References: <Pine.LNX.4.61.0508181052110.3106@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2378730.CVB3FnUrlv";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0508181052110.3106@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

--nextPart2378730.CVB3FnUrlv
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi James!
On Thursday, 18. August 2005 18:13 James Miller wrote:
> [...]
> This newly-discovered failure seems to have to do with the 2.6.x
> kernels, and possibly udev. I say this because, in order to get a
> working gui, I've had to boot using an older 2.4.27 kernel I have
> on the system. When I boot using that kernel, everything works
> fine: no failure of core input devices or X refusing to start. But
> when I try booting with either of the other two 2.6.x kernels
> (2.6.10 or 2.6.12), I get the failure message above.
> [...]
Maybe the 2.6 kernels don't have the
Device Drivers -> Input Device Support -> Event interface option not=20
enabled.
I've got a similar problem with my touchpad without this option.
Tobias


=2D-=20
GPG-Fingerprint: C39E 5381 7721 8613 B5C9  CFAF 54FC B8DB D02D 7085
Registered Linux-User #367044
Registered Linux-Machine #262062
http://counter.li.org
Diese E-Mail wurde mit einer fortgeschrittenen elektronischen
Signatur nach =C2=A72 2. d) SigG signiert.

--nextPart2378730.CVB3FnUrlv
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)

iD8DBQBDBNHbVPy429AtcIURAumRAJ9ht0wEanjyUSU4IeU49OgKMYhCcgCgi/Hq
A1bL961GHqEz7GV2TwXtryc=
=aEZ9
-----END PGP SIGNATURE-----

--nextPart2378730.CVB3FnUrlv--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
