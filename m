From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: not getting command prompt at the console
Date: Thu, 22 Feb 2007 11:25:40 +0100
Message-ID: <20070222102540.GB31252@gateway.home>
References: <b115cb5f0702220149wfbfc051qc8d0106b9e4ed98d@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0702220149wfbfc051qc8d0106b9e4ed98d@mail.gmail.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>, linux-mips@linux-mips.org


--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2007 at 03:19:10PM +0530, Rajat Jain wrote:
> Hi All,
>=20
> I just finished porting linux kernel 2.6.15 to a MIPS based board. The
> board now boots up beautifully ... and here is the console log:

[...]

> Next, I expected to see a command prompt which never comes. At this
> point if I debug, I find the processor executing the idle process.
>=20
> I am successfully hable to telnet to the board and fire whatever
> commands I want though. How do I bring the prompt to the serial
> console?

Run a getty on the serial device (I suppose you're using a serial
port).

> My root FS seems OK since the same root FS is working for the same
> board for an ancient kernel (2.4.20)

Could be that the serial driver changed or that you forgot to compile a
driver for the serial device.


Erik

--=20
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFF3W+k/PlVHJtIto0RArSNAJ90TmeVEdoINTMf2c9Nbd6aEPXSkgCdG3hr
qSwrqnHz3ROZBAuJoc5JX80=
=iJ73
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

