From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: mmaping device memory into userspace.
Date: Wed, 28 Mar 2007 12:29:38 +0200
Message-ID: <20070328102938.GA5109@gateway.home>
References: <292693080703272115m335f5b0yf071007697aee6aa@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <292693080703272115m335f5b0yf071007697aee6aa@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; x-action="pgp-signed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Wed, Mar 28, 2007 at 09:45:52AM +0530, Daniel Rodrick wrote:
> If we map device memory into user space using mmap(), the user will be
> able to do read / write into device using normal memory handling
> routines, right?

Right.

> But as mentioned in LDD3, should appropriate readb() / writeb()
> routines be actually used to read / write into device memory?

LDD3 is right (as usual :).


Erik

- -- 
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGCkOS/PlVHJtIto0RAlkIAJwMalJoA8QoQavSVCkNWUUmKCbsQACfXN9F
KBBecJiZkGziQYhrx0bt8kU=
=XlKa
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
