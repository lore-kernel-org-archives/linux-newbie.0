From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Phantom executables
Date: Tue, 30 Apr 2002 08:05:51 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020430070551.GA405@cam.ac.uk>
References: <m33cxj7gfk.fsf@wobble.eth.net> <20020426041540.47f8697f.nbhs2@i-2000.com> <200204262108.g3QL8w312580@langhans.hartford-hwp.com> <20020426215000.GA2765@cam.ac.uk> <200204300043.g3U0hDI07271@langhans.hartford-hwp.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7JfCtLOvnd9MIVvH"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200204300043.g3U0hDI07271@langhans.hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Haines Brown <brownh@hartford-hwp.com>
Cc: sos22@cam.ac.uk, linux-newbie@vger.kernel.org


--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> It looks like I'll have get the old libstdc++.so.27 and I should be in
> business. I see that in rpmfind there's a libc-5.4.46-2 RPM for i386
> that provides libstdc++.so.27. I've downloaded but not yet installed
> it.
>=20
> It looks like I should simply install this old libc-5, and it will
> provide the libstdc++.27 that I need. However, I hope this
> installation of old libraries won't upset my system. =20
>=20
> I mention all this in the hope will confirm I'm on the right track and
> that I should not suffer ill effects from installing the RPM.

Everything you've said sounds reasonable, and just installing the RPM
should work.

Having said that, you might want to use the following, slightly
convoluted, method to install, as this should make any errors easier
to recover from.

1) Copy /lib/* into /lib.bak
2) Add a line ``/lib.bak'' at the top of /etc/ld.so.conf.
3) Run ldconfig. This is usually /sbin/ldconfig, but occasionally
/lib/ldconfig
4) Install the RPM.
5) From a shell, go ``export LD_LIBRARY_PATH=3D/lib''. Any programs started
from that shell will now use the new libc. If it suffers ugly errors,
copy /lib.bak back into /lib and rerun ldconfig. You might want to
give the --remove-destination switch to cp. Obviously, it will be
easier to run cp from a shell which isn't broken.
6) If there are no errors, remove the /lib.bak line from ld.so.conf and rer=
un
ldconfig. All programs started from now on should use the new libc.
I would recommend rebooting at this point.

If, after you've rebooted, nothing works any more, try booting again
but specifying LD_LIBRARY_PATH=3D/lib.bak on the command line.

Once everything's working, you can remove lib.bak.

It might be a good idea to have SASH installed before you try this,
as it doesn't need libc and might be useful for recovering if something
goes wrong. Boot disks and rescue disks are also useful.

Steven Smith,
sos22@cam.ac.uk.

Disclaimer: I'm not going to blow away my libc just to test this for you.
Sorry.

--7JfCtLOvnd9MIVvH
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8zkJPO4S8/gLNrjcRAiLTAJ4m70Yte8dTIGcSQm1/k1RbjL2MxACfXgME
I8RtsYOFCNpQ9+BtsmyzmeY=
=MLzN
-----END PGP SIGNATURE-----

--7JfCtLOvnd9MIVvH--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
