From: sos22@cam.ac.uk
Subject: Re: Recovery help (Maybe OT)
Date: Fri, 28 Jun 2002 08:46:26 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020628074626.GA18645@cam.ac.uk>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HlL+5n6rz5pIUxbD"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
To: 
Cc: linux-newbie@vger.kernel.org


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I managed to do a rm -rf /
Oops. The easiest way to recover is probably to wipe what remains and
start over. Having said that, rebuilding from something like that is a
great learning experience :).

> It erased my /bin /boot /dev=20
> and something from /mnt
Are you sure that's all it got? Nothing out of /etc or /lib?

> INIT: cannot execute /etc/rc.d/rc.S
> INIT: cannot execute /etc/rc.d/rc.M
> INIT: cannot execute /sbin/agetty
> INIT: respawning too fast, disabled for five minutes
>=20
> Those files _are_ there and _are_ executable.
> (I verified by booting from the slackware 8.0
> install-cd and mounting the partitioin and ls -l)
The first two are interpreted by the shell. If /bin/sh has problems,
they won't run, whether they're there or not. The failure to run agetty
could be files missing from /lib, or it could be a /dev thing.
=20
> If I try to boot with init=3D/bin/sh
=20
> No init found -- kerne panic :-)
That would be consistent with damage to /lib. There are lots of other
things it would be consistent with as well, but that's the most obvious.
You might also like to try init=3D/bin/bash and (if its installed)
init=3D/bin/sash or init=3D/bin/ash.
=20
Also try booting from the install CD and going ``ldd /bin/bash''.
All required libraries must be present, or the program can't run, so
make sure you've restored anythat got zapped. You probably also want
to run ldconfig again: ``$MNT/sbin/ldconfig -r $MNT'', replacing
$MNT by the mount point of your old root filesystem on the install CD
filesystem.
=20
> From my experience this seems to be a /dev/ problem
That would certainly explain the agetty problem. I would ignore this
until you get the shell working again - if you're using devfs, then
it should correct itself once you've done that.
=20
Steven Smith,
sos22@cam.ac.uk.



--HlL+5n6rz5pIUxbD
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE9HBRSO4S8/gLNrjcRAt2zAJ4yXwZuwsm+pKBgJha4hw+P4RFw+QCfbToS
kebd+0lUFlIorKGs0cqtLC0=
=+wP2
-----END PGP SIGNATURE-----

--HlL+5n6rz5pIUxbD--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
