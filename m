From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: lilo
Date: Sat, 27 Apr 2002 17:55:20 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020427165520.GA1395@cam.ac.uk>
References: <00c901c1ee09$09da43a0$0901a8c0@system>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <00c901c1ee09$09da43a0$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
To: Tom Beer <mailings@analogon.com>
Cc: linux-newbie@vger.kernel.org


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I just compiled a new kernel. Now I have
> the vmlinux file in /usr/scr/linux-2.4.18/linux/arch/i386/boot/vmlinux
I would ignore this, to be honest. bzImage is usually a better bet.

> If I cp bzImage to /boot/ as vmlinux it issues=20
> vmlinux-2.4.18-initrd.img not found.
> Could anyone explain to me how to
> get the right files in the /boot directory and run lilo on it.
The only file you usually need in /boot is the bzImage, and that can
just be cp'd in:

cp arch/i386/boot/bzImage /boot/bzImage.2.4.18

(or use some sensible destination name). System.map is also occasionally
useful, but not very often.

You then need to add an entry to lilo.conf. If you're not doing
anything clever (like an initial ram disk), the entry usually goes:

image=3D/boot/bzImage.2.4.18
	label=3Dtest
	read-only

I've never needed to add anything more than that, once the rest of
lilo.conf is set up.

The big exception is initrd. This is a disk image loaded by LILO,
and is used by some recent distributions to store modules needed to
access the real root filesystem. For custom built kernels, you almost
never need this, as you can just compile the essential modules in.
You might want to check in the lilo.conf that you're not trying to
load a non-existent initrd, and, if you are, stop. Make sure you don't
change the old image's initrd, though, or it won't work.

Steven Smith,
sos22@cam.ac.uk.

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8ytf4O4S8/gLNrjcRAp0VAJ9JPLuR3dyk+wxidxMl1Do9MUaELgCfWN53
OuHRXXGgbt9Ls7slK2XbN6E=
=m3e7
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
