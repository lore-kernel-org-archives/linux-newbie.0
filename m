From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: usleep
Date: Thu, 12 Jun 2003 12:47:02 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030612114702.GA2295@cam.ac.uk>
References: <20030611225502.29651.qmail@mail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030611225502.29651.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Lee Chin <leechin@mail.com>
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I would think the following code would wait for 1 second each
> itteration before printing hello, but it waits way too long.
> Replacing the for loop body with a usleep(1000000) works
> great... what am I missing here?
Essentially, that usleep() isn't actually terribly accurate for short
waits.  First, you always give up the rest of your timeslice, which
delays you a few milliseconds (more if there's contention for the
processor).  Second, kernel timers will always fire a short period
after the actual specified time, which gives you a further small,
roughly constant delay.  Third, you aren't actually woken up
immediately after the timer goes off; you simply become eligible for
scheduling again.

This means that when you call usleep(x), you actually end up sleeping
for x + n us, where n is a few thousand.  If you call usleep(1000000),
this will probably be less than one percent of the total time slept,
so nobody really cares.  If you call usleep(1000), it's likely to be
several times the actual sleep time required, which you almost
certainly do care about.

If you really can't call usleep() or nanosleep() with a big number,
the only option is probably to spin: the kernel can't cope with really
fine-grained scheduling.  If you're root, you can use a real time
process, in which case the kernel will do the spinning for you for
delays of less than 2ms.  Depending on the exact delay being used and
how you calibrate the busy wait, this may be slightly more accurate.

Steven Smith,
sos22@cam.ac.uk.

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE+6Gg2O4S8/gLNrjcRArAdAKCe5ONK14SGCOQOk9snyMUkoG64qgCfek2V
fA3aWrhc+aGw8xC0A4UMJvU=
=dpyI
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
