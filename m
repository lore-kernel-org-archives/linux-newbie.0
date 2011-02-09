From: Mancausoft <andreamilazzo@mancausoft.org>
Subject: devfs Gpio and interrupt
Date: Wed, 9 Feb 2011 15:22:30 +0100
Message-ID: <20110209142230.GB10103@homer>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I read gpio.txt in Documentation of kernel and try to use it.

I use:

# echo 13 > /sys/class/gpio/export
# echo in > /root/tasto1/direction=20
# cat /root/tasto1/direction
in

# cat /root/tasto1/value=20
1

when the button is pressed:
# cat /root/tasto1/value=20
0

# cat /root/tasto1/edge=20
none
# echo both > /root/tasto1/edge=20

# cat /sys/kernel/debug/gpio=20
[...]
 B5 gpio-13  (sysfs       ) in  hi irq-77 edge-both
[...]

# cat /proc/irq/77/spurious p
count 15
unhandled 0
last_unhandled 0 ms
cat: p: No such file or directory
Ture:~# cat /proc/irq/77/spurious=20
count 15
unhandled 0
last_unhandled 0 ms


I try the follow code in a while (1):

// /root/tasto1 is a symbolic link to /sys/class/gpio/gpio13/

pfd.fd =3D open("/root/tasto1/value", O_RDONLY);
pfd.events =3D POLLPRI | POLLERR;=20

//ready =3D poll(&pfd, 1, -1);=20
ready =3D poll(&pfd, 1, 100000);=20

lseek (pfd.fd, 0, SEEK_SET);

val =3D read(pfd.fd, buf, 254);
//the output are: 1, 10, 10
printf ("%d, %d, %d\n", ready, pfd.revents, pfd.events);

printf ("%d, %s\n", val, buf );

close(pfd.fd);

But it don't wait for an edge but they exit immediatly.=20
Why? where is the problem?

--=20
Mancausoft - http://www.mancausoft.org/
GPG key: B53F90F2

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk1SoyYACgkQ2D/gwrU/kPK/4ACgpCAWfWTp8X63IeN+Mr/2oE6v
PP4AniO9mCDf/2qpE9jtx71L5Sv0XMUb
=GPtC
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
