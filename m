From: Rodrigo Rubira Branco <rrbranco@br.ibm.com>
Subject: Re: Why is Linux not RTOS?
Date: Tue, 29 May 2007 21:47:35 -0300
Message-ID: <1180486056.5473.28.camel@localhost.localdomain>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>
	 <7783925d0704040605s4590d421y39ae5b13a020a8a@mail.gmail.com>
	 <ev0fpc$bc5$1@sea.gmane.org> <200704051236.29847.Tzahi.ML2@gmail.com>
	 <f68850780704050307o3639b8bbi993e6a7a11adbe72@mail.gmail.com>
Reply-To: rrbranco@br.ibm.com
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-iayHCDsRV7cAhLA2fYKN"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <f68850780704050307o3639b8bbi993e6a7a11adbe72@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Raseel Bhagat <raseelbhagat@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


--=-iayHCDsRV7cAhLA2fYKN
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Ok, let's clarify somethings ;)


First of all I really recommend this links:
http://www.linuxjournal.com/article/9361
http://rt.wiki.kernel.org/

The real-time implementations previously commented in the list relies on
"interrupt shielding" (forcing interrupts to run on a reserved CPU) and
"CPU pinning" (forcing real-time tasks to only run on a CPU which
doesn't run any other tasks), so we can't say it's a 'real' real-time ;)
(it does not take the best advantage of multiple cpu's for example and
needs more than just one in anyway).

Legal notice: It's just my personal contribution.


P.S.:  Sorry my delay to answer that ;)


On Thu, 2007-04-05 at 15:37 +0530, Raseel Bhagat wrote:
> Hi Tzahi,
>=20
> On 4/5/07, Tzahi Fadida <Tzahi.ML2@gmail.com> wrote:
> > What is this i hear about PREEMT_RT from VirtualLogix:
> > http://www.wirelessiq.com/content/newsfeed/9867.html
>=20
> I think the author is trying to mention the different innovative
> solutions to the latency issue in the GPOS Linux Kernel. PREEMPT_RT ,
> IIRC  was a Real Time patch by Ingo Molar.
> VirtualLogix's Virtual OS is another such solution, etc.
>=20
> Thanks,
> Raseel
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--=20
Rodrigo Rubira Branco
Software Engineer=20
Advanced Linux Response Team (ALRT) / Linux on Power Toolchain
IBM Linux Technology Center (IBM/LTC)
rrbranco@br.ibm.com

GPG KeyID: 1FCEDEA1

--=-iayHCDsRV7cAhLA2fYKN
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQBGXMmnRpuC3B/O3qERAlHJAJ4lYdqW4xSPQlXoA/rK7ESGAH4XrgCfVd2k
45jib0ZJ5WP5IM7oZ35lIio=
=iXbf
-----END PGP SIGNATURE-----

--=-iayHCDsRV7cAhLA2fYKN--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
