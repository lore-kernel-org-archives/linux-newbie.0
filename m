From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: File-system Ext2 or Ext3??
Date: Sun, 12 May 2002 17:54:21 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020512165421.GA1066@cam.ac.uk>
References: <20020512150909.GA596@cam.ac.uk> <20020512152519.38384.qmail@web12808.mail.yahoo.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jI8keyz6grp/JLjh"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020512152519.38384.qmail@web12808.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > > still get forced fscks at startup,
> > How many? ext3 should be fscked every 20 or so times
> > it gets mounted,
> > to find any errors which crept in from somewhere.
> 20 boots at about average a week per boot, I shouldn't
> be seeing a fsck for 5 months. :(
> Instead I'm getting them more like every third bootup.
Does fsck say why it's running? There will usually be messages saying
(from memory) ``not cleanly unmounted'' or ``has been mounted ... times''
just before fsck proper starts.

> > ``Linux native'' isn't terribly well defined,=20
> YES! I'd noticed that before...how unhelpful is THAT,
> of course it's Linux Native, duh it's /, it HAS to be
> Linux Native to be mounted at startup!
It might be UMSDOS...

> > fdisk assumes ext2 is the One
> > True Linux Filesystem, so gives the wrong answer if
> > something else is used.
> > It should probably just say Linux.
> Yes...in a nutshell that sounds like I thought it
> might be, oversimplication of fs.
> There's so many apps that need to be upgraded and
> rewritten....
True, but it's far easier to just ignore the filesystem type field.
It's only supposed to be a hint, anyway.

Steven Smith,
sos22@cam.ac.uk.

--jI8keyz6grp/JLjh
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE83p49O4S8/gLNrjcRAnp1AKCR4fhXr/zw9g4uza13QPNW6vNxWQCdEXEo
bV4fKQ/IlNPVD7QdWDe4Jq0=
=Majd
-----END PGP SIGNATURE-----

--jI8keyz6grp/JLjh--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
