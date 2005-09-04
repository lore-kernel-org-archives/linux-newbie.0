From: Tobias Hirning <Tobias.Hirning@gmx.de>
Subject: Re: remote job execution via xterm
Date: Sun, 4 Sep 2005 15:51:00 +0200
Message-ID: <200509041551.42753.Tobias.Hirning@gmx.de>
References: <Pine.LNX.4.44.0509032209490.11321-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2028851.Muu98Aks4b";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0509032209490.11321-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

--nextPart2028851.Muu98Aks4b
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,
On Sunday, 4. September 2005 04:37 Karthik Vishwanath wrote:
> [...]
> What is going on? How can I ensure that ssh terminates and
> disconnects from the session without me having to do all of the
> above and making sure that the executable stays alive?
You can use nohup.

nohup ./your_program &

The ouput of the program will be written to nohup.log
Tobias
=2D-=20
GPG-Fingerprint: C39E 5381 7721 8613 B5C9  CFAF 54FC B8DB D02D 7085
Registered Linux-User #367044
Registered Linux-Machine #262062
http://counter.li.org
Diese E-Mail wurde mit einer fortgeschrittenen elektronischen
Signatur nach =C2=A72 2. d) SigG signiert.

--nextPart2028851.Muu98Aks4b
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.5 (GNU/Linux)

iD8DBQBDGvvuVPy429AtcIURAgZBAJ0fYCyL68Ao/m+7LeRZDfqR1y41ZgCdEWV9
+/AoPqOInasmsfm9/0lQ0yw=
=5o2c
-----END PGP SIGNATURE-----

--nextPart2028851.Muu98Aks4b--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
