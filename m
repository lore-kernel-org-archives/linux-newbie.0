From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Compiler method of finding header.
Date: Wed, 22 Oct 2003 06:57:37 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200310220657.50794.Adam@Luchjenbroers.com>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Description: clearsigned data
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

/usr/include/openssl/kssl.h:72:18: krb5.h: No such file or directory

includes line:
#include <krb5.h>

So it's expecting the header to be wherever the compiler expects them.

using locate: 
/usr/kerberos/include/krb5.h

How do I tell the compiler where to look for headers? OS is RedHat 9.

- -- 
"What happens if a big asteroid hits the Earth? Judging from realistic 
simulations involving a sledge hammer and a common laboratory frog, we can 
assume it will be pretty bad." - Dave Barry

Please avoid sending me Word or PowerPoint attachments.
See http://www.fsf.org/philosophy/no-word-attachments.html

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE/laTT94zI/zB2CYURAiGVAKCW7VWzAfZnwwLBZ/v8+3Mi9KNMSgCfZ+L+
n9lCD6pDbUq9YESC2XIyRzs=
=DC42
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
