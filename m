From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: Process logger?
Date: Mon, 27 Nov 2006 04:31:36 -0700
Message-ID: <20061127043136.744b9db6@mandalor.homelinux.net>
References: <26face530611232045w7fa86de2l33938fe8550c50e5@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_8RWOMw.fT=0WhkI5l1s/Apf";
 protocol="application/pgp-signature"; micalg=PGP-SHA1
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <26face530611232045w7fa86de2l33938fe8550c50e5@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Kelly Jones <kelly.terry.jones@gmail.com>
Cc: linux-newbie@vger.kernel.org

--Sig_8RWOMw.fT=0WhkI5l1s/Apf
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 23 Nov 2006 21:45:36 -0700
"Kelly Jones" <kelly.terry.jones@gmail.com> wrote:
> If a process runs for a long time, I can use "ps -aux -www" to see
> info about it, and even look at /proc/pid/*
>=20
> But sometimes a process starts, runs, and ends before I can see it
> with "ps -aux -www" or can look at /proc/pid/*
>=20
> Is there a way to log processes? A daemon or kernel module that
> creates syslog entries like this:
>=20
> Nov 23 16:57:38 machine processd[6052]: Process 1234 started,
> command=3Dfoo, arg1=3Dbar, arg2=3Dblah
>=20
> Nov 23 16:57:38 machine processd[6052]: Process 1234 opened file
> "/tmp/foobar.txt", file descriptor 3
>=20
> Nov 23 16:57:39 machine processd[6052]: Process 1234 ended
>=20
> Obviously this would be something that could turned on/off (would
> really clutter the logs otherwise).
>=20
> I know about strace, but that only works well for processes I start
> from the command-line.

If you're still looking for info on this, you might be interested in
the GNU system accounting utilities.  I've not really used them myself,
but I think they do pretty close to what you want.

More info at <http://directory.fsf.org/acct.html> and
<http://savannah.gnu.org/projects/acct/>


Good luck,
Conway S. Smith

--Sig_8RWOMw.fT=0WhkI5l1s/Apf
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFFasydGL3AU+cCPDERAvDcAJ4umDBPTu1miEtatBo7gfFG2UpYjQCcDjOh
rXpsk8LL0NW2ZFrOZefhwL4=
=Ol8o
-----END PGP SIGNATURE-----

--Sig_8RWOMw.fT=0WhkI5l1s/Apf--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
