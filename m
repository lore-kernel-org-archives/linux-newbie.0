From: Szekely-Benczedi Endre <bencze@science.uttgm.ro>
Subject: Installing Galeon problem
Date: Mon, 8 Jul 2002 08:41:11 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0207080829080.11884-100000@davos.science.uttgm.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


			Hello all,

	I have a problem installing Galeon (the browser). I am using
SuSE 7.0 on an old system (P II at 300Mhz, 128Mb ram), and I wanted
to install Galeon because Netscape 6.2 is moving way too slowly on
my machine. (I tried Opera too, it was really nice, but at a moment
it crashed and it's giving me segmentation fault every time I try
to start it; I reinstalled it from another rpm, but same thing; and
I haven't found the sources for it to recompile). Galeon required
GLib 1.2.9 or higher, I had 1.2.8. GLib 2.0.4 required pkgconfig.
I installed pkgconfig 0.12.0 which I downloaded from sourceforge.
But as I installed pkgconfig and then GLib 2.0.4, the configure
script of Galeon was still stopping with the message that I have
GLib 1.2.8. It also says that I might have an older glib-config
on my system which I should delete; but the only glib-config I
found was one with version number 1.2.8. As I checked the
pkgconfig installation directory, I seen that it contains a
directory named glib-1.2.8, so I assume that it installs some
glib-1.2.8 files also. I changed some settings in the pkconfig's
Makefile so that some variables which pointed to the glib-1.2.8
subdirectory now point to the glib-2.0.4 one; I hoped that this will
solve the problem. Unfortunately, the compilation of pkgconfig
dies with an error: "make[2]: *** No rule to make target
`glib-2.0.4/glib.h', needed by `pkg.o'.  Stop."
Now. What the hell should I do to be able to compile and use
Galeon (I wouldn't want to reinstall the whole system)? Or, what
else could I try with Opera to make it work? (as I said,
reinstalling it won't work, I use(d) Opera 6).

Thanks,
Endre.

PS: Hope you managed to understand something from all this. :)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
