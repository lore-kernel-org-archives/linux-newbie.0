From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: Accessing static variable from outside
Date: Sun, 17 Jun 2007 12:20:24 +0200
Message-ID: <20070617102023.GA7580@gateway.home>
References: <b115cb5f0706151908o6a0f765etd5f275be8bf75f0@mail.gmail.com> <6d778f200706160936w3120edacuc7d0ac21a9b06144@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <6d778f200706160936w3120edacuc7d0ac21a9b06144@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; x-action="pgp-signed"
Content-Transfer-Encoding: 7bit
To: tejas khatiwala <socretez@gmail.com>
Cc: Rajat Jain <rajat.noida.india@gmail.com>, Linux Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I leave quotations after my reply?

On Sat, Jun 16, 2007 at 11:36:43AM -0500, tejas khatiwala wrote:
> AFAIK one way to be able to access a static variable is using dynamic
> linking lodader. u can read man pages of dlopen() and family. and here is
> example of its usage http://www.slimy.com/~jleonard/src/dlopen.html

The example doesn't apply:

- - dlopen() is a userspace function and can't be used in kernel
- - dynamic linking can only be used to link exported (i.e. non-static)
  symbols

Like Adrian Bunk already explained: there are dirty tricks to get the
address of a static variable, but they will all fail when the compiler
decides to optimise the variable away (which it is completely free to
do because the "static" keyword *guarantees* that the variable will not
be used outside that particular compilation unit).


Erik

- -- 
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGdQrn/PlVHJtIto0RAsWkAJ0Qk9txqXYxwLMEeioj8z4T+74h5QCgiH51
7yl9an3I/1EPWWkw4eFqOrA=
=bEkd
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
