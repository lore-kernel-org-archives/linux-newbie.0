From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Tcsh: Append output to a file
Date: Wed, 15 May 2002 07:52:24 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020515065224.GA295@cam.ac.uk>
References: <2.2.32.20020515010844.00e0918c@[192.168.1.23]> <20020515011704.GC1047@neon>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020515011704.GC1047@neon>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> > >My question is: How do I append to an existing file?
> > /usr/local/sbin/dsniff >>& dsniff.log &
> Can you please tell me how to the same thing for bash? :)
/usr/local/sbin/dsniff >> dsniff.log &

if you just want output in the file,

/usr/local/sbin/dsniff >> dsniff.log 2>&1 &

if you want output and errors.

Steven Smith,
sos22@cam.ac.uk.

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE84gWoO4S8/gLNrjcRArSjAKDQModcNndOkLIlfvvpY+zfBSvN+ACfQ584
awj4ZQLJx5hjjlHCiB+x3bk=
=lNtE
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
