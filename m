From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: chroot jail
Date: Wed, 24 Apr 2002 16:41:09 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020424154109.GA342@cam.ac.uk>
References: <200204241335.g3ODZj906318@g38.rdsbv.ro>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6TrnltStXW4iwmi0"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200204241335.g3ODZj906318@g38.rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
To: Petre Bandac <g38@rdsbv.ro>
Cc: linux-newbie@vger.kernel.org


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> what's a chroot jail ?!
A directory into which you can chroot. In theory, any process started in
such a jail cannot access any files outside of it. In practice, root
can usually escape, but then root can do pretty much anything whatever
you do. They're sometimes helpful for securing less-than-perfect services.

As far as a process which has been chrooted into /some_dir is concerned,
/some_dir is the root of the filesystem.

Such a jail is not easy to set up, however. Basically, you need to put
together a mini-distribution dedicated to whatever programs you want to
put in jail. At a minimum, you need to do the following:

1) mkdir jail_dir jail_dir/etc jail_dir/lib jail_dir/bin
2) Run ldd on the main program file you want to run. e.g.
ldd /usr/sbin/named. Copy all of the files listed in jail_dir/lib.
3) Copy /lib/ldconfig or /sbin/ldconfig into jail_dir/ldconfig.
4) Go ``chroot jail_dir /lib/ldconfig''
5) Copy the binary for your program into the jail directory e.g.
cp /usr/sbin/named jail_dir/bin
6) Go ``chroot jail_dir /bin/named''. This will almost certainly
complain about missing configuration files; copy these into the jail_dir
in the appropriate places and repeat until it works.
7) Once you've finished, you can delete ldconfig from the jail directory.

This is fairly boring, but it usually works.

(Note that chroot() jails are not the same thing as jail() jails - the
later are a bit more flexible, and don't work under Linux).

Steven Smith,
sos22@cam.ac.uk.

--6TrnltStXW4iwmi0
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8xtIUO4S8/gLNrjcRAuzgAKDVx3tbPvqY3z3L+QqlMAbzZKRbYQCggGBg
mP+I5/+8XaZdNbly2H/MgCY=
=MWkj
-----END PGP SIGNATURE-----

--6TrnltStXW4iwmi0--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
