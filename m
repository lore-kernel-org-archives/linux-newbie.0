From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Kernel
Date: Wed, 23 Oct 2002 15:20:28 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021023142028.GA420@cam.ac.uk>
References: <002d01c27a90$4d1d7290$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <002d01c27a90$4d1d7290$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org


--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> On the Linux kernel archive they list 2.4.19 as the current stable
> kernel. When I click on this it downloads patch-2.4.19.
> If I go through the directory on the ftp site they have both
> linux-2.4.19 (source for the kernel) and the patch-2.4.19. If you get
> the linux kernel .19 do you also need the patch?
No.  You only need the patch if you have the source to version .18 and
want the source to version .19.

> If so do you apply the patch to the source or to the compile kernel
> and how do you apply it?
The patch would be applied to the source of the previous kernel
version.  In general, patches are much, much smaller than full source
distributions, so are easier to download, and more friendly on the
various archive sites.

Different people will give you different recipes for applying patches,
but the one I usually use goes like this:

1) Uncompress the patch.
2) cd to the directory where you have the source to the previous version.
3) ``patch -p1 < path_to_patch''

It's quite rare to find that a patch applies cleanly on the first
attempt; go ``find -name '*.rej' | less'' from the source directory to
find any complaints.  These usually indicate that your source pool
didn't quite match the version used to produce the patch (e.g. if
you've specified an EXTRAVERSION in the top level Makefile), and
should be reasonably easy to fix.  If you find a reject file
``foo/bar.rej'', open up ``foo/bar.rej'' and ``foo/bar'' in a text
editor, and apply the changes listed in ``foo/bar.rej'' to
``foo/bar''.  (This is a lot easier than it sounds).

As always, you should try and use one of the mirrors if at all
possible, rather than the main kernel archive.

Steven Smith,
sos22@cam.ac.uk.

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE9trArO4S8/gLNrjcRAlCWAKCETccSz7Jzh4QWdM84BtuaEN+x9QCdF8y2
R4r5wx8Ye7CNmLXQOyN5gjc=
=RDEx
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
