From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Installing Galeon problem
Date: Mon, 8 Jul 2002 18:57:10 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020708185710.F17532@neutrino.particles.org>
References: <Pine.LNX.4.21.0207080829080.11884-100000@davos.science.uttgm.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.21.0207080829080.11884-100000@davos.science.uttgm.ro>; from bencze@science.uttgm.ro on Mon, Jul 08, 2002 at 08:41:11AM +0300
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Szekely-Benczedi Endre <bencze@science.uttgm.ro>
Cc: linux-newbie@vger.kernel.org

On Mon, Jul 08, 2002 at 08:41:11AM +0300, Szekely-Benczedi Endre wrote:
> glib-1.2.8 files also. I changed some settings in the pkconfig's
> Makefile so that some variables which pointed to the glib-1.2.8
> subdirectory now point to the glib-2.0.4 one; I hoped that this will
> solve the problem. Unfortunately, the compilation of pkgconfig
> dies with an error: "make[2]: *** No rule to make target
> `glib-2.0.4/glib.h', needed by `pkg.o'.  Stop."

Make sure that the Makefile can see the header files of glib-2.0.4.
Better install the new glib in /usr/local and tweak the Makefile
to include /usr/local/include/glib (or something similar).

> Now. What the hell should I do to be able to compile and use
> Galeon (I wouldn't want to reinstall the whole system)? Or, what
> else could I try with Opera to make it work? (as I said,
> reinstalling it won't work, I use(d) Opera 6).

Not that I have ever build Galeon, but I'm sure it needs a lot of things
beside Gnome/GTK+ support, such as gtk+, glib, gdk. At least it needs
the whole Mozilla engine.

OTOH, Opera crashes probably due to a configuration error. Have a short
look at $HOME/.opera, or better check the core file with gdb; you might
get a hint.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
