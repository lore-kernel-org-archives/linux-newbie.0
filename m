From: Dave Haywood <tla@oak.selfip.net>
Subject: TruCrypt
Date: Wed, 21 Nov 2007 16:48:36 +0000
Message-ID: <47446164.2040205@oak.selfip.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1
 
Hi,

  I see that the TruCrypt build borks under the latest -rc kernels.
See https://bugs.gentoo.org/show_bug.cgi?id=198394 for an example.

  I think this is because the kernel interfaces tc uses have changed.

  Is anyone aware of any fixes to correct this problem?

  Has anyone considered incorporating the non-userland parts of tc
into the kernel to avoid this borkage in the future?  tc is under some
non-GPL license so this may not be possible?


  Thx,


Dave.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (MingW32)
 
iD8DBQFHRGFks7shH0x9UrgRAgmbAJ91AFFTN9RkoQlnIJYMmOPpgiS0eACfcpED
yReT7yk/1Pv3oGdmGNmrHU4=
=GICs
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
