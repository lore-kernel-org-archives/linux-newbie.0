From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: umount
Date: Fri, 8 Nov 2002 22:03:13 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021108220313.GA2231@cam.ac.uk>
References: <5.1.0.14.1.20021108093105.021201f0@celine> <200211082227.46496.edgaralwers@gmx.de>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211082227.46496.edgaralwers@gmx.de>
List-Id: <linux-newbie.vger.kernel.org>
To: Edgar Alwers <edgaralwers@gmx.de>
Cc: Ray Olszewski <ray@comarre.com>, newbies <linux-newbie@vger.kernel.org>


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> > The other possibility if an entry in /etc/fstab that makes mounting
> > possible but not umounting (though I can't offhand think of a setting that
> > will do this).
> /devf/cdrom ro,noauto,user,exec 0 0
(I assume you mean ``/dev/cdrom /media/cdrom iso9660 ro,noauto,user,exec 0 0'')

The ``user'' option is fstab indicates that any user should be able to
mount the filesystem, but that only that user should be able to unmount
it.  (So if sos22 mounts it, spqr2 can't unmount it).  If you want the
more obvious behaviour, use option ``users'' rather than option
``user''.

The obvious thing to check is that the mounting user is being recorded
correctly in the mtab.  There should be something along the lines of
``user=sos22'' (or whatever your username is) in the /etc/mtab line
for /dev/cdrom.  If not, or if it specifies a different username,
you'll be allowed to mount, but not unmount.

In particular, making /etc/mtab a symlink to /proc/mounts will break
umounts from ordinary user accounts, but appart from that won't
be terribly visible.  If you have such a symlink, you should probably
``rm /etc/mtab; cp /proc/mounts /etc/mtab'' and then reboot.

Steven Smith,
sos22@cam.ac.uk.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE9zDShO4S8/gLNrjcRAtTLAJ9w4fJnyqOsqA3fe5/Q57Zdm/unmgCeLKO8
REJryCf2xWTEvJDscHFUUi0=
=Nm5O
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
