From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Undelete for linux
Date: Sun, 28 Apr 2002 09:55:34 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020428085534.GA361@cam.ac.uk>
References: <013501c1ed12$3197a2e0$0101a8c0@barneond> <m3k7qthalx.fsf@wobble.eth.net> <000901c1ee3b$ca347080$0101a8c0@barneond>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <000901c1ee3b$ca347080$0101a8c0@barneond>
List-Id: <linux-newbie.vger.kernel.org>
To: "Lab. Sist. Operativos 2" <operativos2@tutopia.com>
Cc: linux-newbie@vger.kernel.org


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> > > Hi, I need to know howto make a undelete for linux, I need to use
> > > the library /usr/include/linux/ext2_fs.h or
> > > /usr/include/linux/ext3_fs.h.
> > Did you remove some file accidentally?  And do you want to recover it?
> > Is this what you want?
> No I need make a project in the college
Try looking at the undeletion and undeletion of directories mini-HOWTOs
at:

http://www.ibiblio.org/pub/Linux/docs/HOWTO/mini/Ext2fs-Undeletion
http://www.ibiblio.org/pub/Linux/docs/HOWTO/mini/Ext2fs-Undeletion-Dir-Struct

Alternatively, you could look at porting the undeletion things at

http://amadeus.uprm.edu/~undelete

to newer kernels, if that isn't considered cheating.

Steven Smith,
sos22@cam.ac.uk.

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8y7kGO4S8/gLNrjcRAtliAJ4mVOJQM17R/b0SV1Cv78noNFogTwCfbYTR
0OGQ0xOLvyef5SsltRGHtqI=
=uuYq
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
