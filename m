From: "John T. Williams" <jtwilliams@vt.edu>
Subject: Re: Compiler method of finding header.
Date: 22 Oct 2003 16:44:15 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1066855453.12201.19.camel@Descartes-Marx.fesnel.no-ip.org>
References: <200310220657.50794.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200310220657.50794.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

if you asking how to permanently change your include folder, I have to
admit that I don't actually know.  but if you just want it to search a
particular directory at compile time you use the -I option

for instance if I want gcc to look in the /home/mydir/include folder I
would type

gcc file.c -I /home/mydir/include




On Tue, 2003-10-21 at 17:27, Adam Luchjenbroers wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> /usr/include/openssl/kssl.h:72:18: krb5.h: No such file or directory
> 
> includes line:
> #include <krb5.h>
> 
> So it's expecting the header to be wherever the compiler expects them.
> 
> using locate: 
> /usr/kerberos/include/krb5.h
> 
> How do I tell the compiler where to look for headers? OS is RedHat 9.
> 
> - -- 
> "What happens if a big asteroid hits the Earth? Judging from realistic 
> simulations involving a sledge hammer and a common laboratory frog, we can 
> assume it will be pretty bad." - Dave Barry
> 
> Please avoid sending me Word or PowerPoint attachments.
> See http://www.fsf.org/philosophy/no-word-attachments.html
> 
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.2.1 (GNU/Linux)
> 
> iD8DBQE/laTT94zI/zB2CYURAiGVAKCW7VWzAfZnwwLBZ/v8+3Mi9KNMSgCfZ+L+
> n9lCD6pDbUq9YESC2XIyRzs=
> =DC42
> -----END PGP SIGNATURE-----
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
