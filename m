From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: export variables
Date: Fri, 24 Jan 2003 17:37:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030124173732.GA5031@cam.ac.uk>
References: <200301240748.03285.r4mz3z@yahoo.es>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wRRV7LY7NUeQGEoC"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200301240748.03285.r4mz3z@yahoo.es>
List-Id: <linux-newbie.vger.kernel.org>
To: ramzez <r4mz3z@yahoo.es>
Cc: linux-newbie@vger.kernel.org


--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> - -------------- test.sh ------------------
> export MY_VAR=3D"SOME_VALUE"
> echo "$MY_VAR"
> - -------------- test.sh ------------------
> later: chmod +x test.sh then run this script: ./test.sh
>
>   but when try to use this variable in my environment I can't do, if writ=
e=20
> "env" the nev variable MY_VAR doesn't appear ... I think that there are s=
ome=20
> protection about export variables, but how do I can export variables?
The environment of a process cannot easily be changed from outside
that process once the process has started running.  This means that
exporting a variable does not do the obvious thing: if you run
a shell script, which tries to export a variable, then that variable
will only be exported to processes which are spawned by that shell
script.  In particular, if test.sh contains

export WIDGET=3Dwobble

then running test.sh will have absolutely no effect on the environment
of the shell which invoked it.

If you need to change a running shell's environment through a script,
then you need to get that shell to source rather the script rather
than to execute it.  To do this, go

$ . ./test.sh

This causes the shell to run test.sh as if it had been typed in at
the command line, rather than spawning an entirely independent shell
and running test.sh through that.

Steven Smith,
sos22@cam.ac.uk.

--wRRV7LY7NUeQGEoC
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE+MXncO4S8/gLNrjcRAimGAKC/ngWkTfJA/bq4QD8k625XZQ1LeQCgobfW
DCzgGR+0pwzRUkbxV8XDBzM=
=EJJ/
-----END PGP SIGNATURE-----

--wRRV7LY7NUeQGEoC--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
