From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: CD writing in ext2 filesystem
Date: Thu, 25 Apr 2002 20:12:07 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020425191207.GA533@cam.ac.uk>
References: <200204232318.55166.mssnlayam@cs.annauniv.edu> <1019641504.16651.14.camel@Zebra> <200204250727.51401.mssnlayam@cs.annauniv.edu> <02042518344606.04696@unix.pa3gcu>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <02042518344606.04696@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>, Paul Furness <paul.furness@vil.ite.mee.com>, GNU/Linux Newbie <linux-newbie@vger.kernel.org>


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> >   > Is there a particular reason why you were trying to put an ext2 fio=
le
> >   > system on the CD rather than an ISO9660 one?
=2E..
> > But the main advantage (of using ext2) is that you get a
> > filesystem which is the same as your native system. Permissions,
> > ownership, symlinks, pipes, device files..... (all the great features
> > of ext2) get taken care of. Most of the above would
> > not be possible with iso9660. The Rockridge extensions handle them
> > well. However it too has a problem with the maximum depth
> > of a directory tree.
> UUM, excuse me for only thinking, but, if one creates a tarball and then=
=20
> burns it to a cd, one then has the same, or am i missing something here.?=
????
You'll get everything he listed, but ext2 has a few exotic features that
tar doesn't:

1) ACLs and EAs (if you have the patches from acl.bestbits.at)
2) HURD translator and author data
3) Sparse files
4) The noatime, sync, append only, compressed, nodump, immutable, journaled,
secure delete, and undeletable attributes.

Very few of these are generally useful, and numbers 1 and 4 need unusual
patches to use fully, but they are there for a reason, and most tars
don't support them. Plus, in the future, we're likely to get multiple
file forks, which really will need backing up.

Burning an ext2 image onto a CD is a strange thing to do, but not without
its merit.

Steven Smith,
sos22@cam.ac.uk.

--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8yFUHO4S8/gLNrjcRAsswAJkBQr1vwD0xiL8Jagf82TJzc4HsfwCdEhc0
pPpBsu5+YON8iLWyI091iOg=
=qiMZ
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
