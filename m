From: David Benfell <benfell@parts-unknown.org>
Subject: Re: which UNIX to use (was: Re: which distribution to use?)
Date: Thu, 30 May 2002 00:23:40 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020530072340.GD20254@home.parts-unknown.org>
References: <001f01c20659$f2c8d820$7730f7c2@geoff> <20020529043915.GB961@raven.parts-unknown.org> <1022702777.2081.99.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="R3G7APHDIzY6R/pk"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1022702777.2081.99.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org


--R3G7APHDIzY6R/pk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This, being a Linux list, is a horrible place to get into this
discussion...

On Thu, 30 May 2002 00:59:15 +0300, Raider wrote:

> Bottom
> line - OpenBSD doesn't even bother with the usability.
>=20
In what sense are you referring to usability?

Where I've never been able to make sense of Linux's packet filtering,
it took me about 15 minutes to configure it on an OpenBSD system.
=46rom my perspective, OpenBSD's model of packet filtering is much more
in line with how packet filtering is actually used and what it's
actually needed for.  It seems to me a lot simpler.  For me, this is a
major win.

I'm no Linux networking guru but I've found OpenBSD's networking
configuration relatively easy to sort out.  The ifconfig and route
commands are different, but similar enough to what you'll find on
Linux that I doubt these would be a serious problem.  (Look at the man
pages and, really, you'll figure it out.)

OpenBSD (and I think the other BSDs) use a different device naming
convention so, for example, where Linux calls most high bandwidth
interfaces ethn (where n is a unit number), you'll find a variety of
names under OpenBSD for the same devices.  This is a little harder,
but I found it surprisingly straight-forward.

OpenBSD doesn't use the shadow suite for password management; instead,
it keeps the real passwords in /etc/master.passwd, along with some
other crucial information.  That's simply different, not really
harder.  (FreeBSD, by the way, does something similar.)

One of the first things I have to do to a new OpenBSD system is to
install zsh.  OpenBSD (and I think all BSDs) come with a real sh,
not bash, which is really crude.  I'm really gritting my teeth until I
manage to get through this, so I'll acknowledge that this is
definitely harder.  The solution, for me, is to understand that
installing a shell that I can live with is a top priority, higher than
working on what the system is actually going to be used for.

Another thing I have to do early on is to install vim.  That's not
because I can't use vi.  It's because I'm in the habit of typing vim.

Installing qmail is a bit harder; Dave Sill's Life with Qmail doesn't
cover OpenBSD and there are a couple places where you need to figure
out the OpenBSD-equivalent procedures for what he's telling you to do.
It's not bad enough that I've felt compelled to write Dave offering
suggestions on how he could better cover OpenBSD, though I probably
should, since he's generally done a fine job trying to take the
guesswork out of installing qmail.

I just recently upgraded an OpenBSD 3.0 installation to OpenBSD 3.1.
This was truly painless.  The only thing I had to fix was the symbolic
link for qmail's sendmail wrapper -- which I knew I'd have to do.  It
was also fast.  I was probably through it in about 15 minutes.
(Initial installations are also very fast.)

There are a few things like the examples I mention above.  Some things
are harder.  Some things, I think, are easier.  But a statement that
OpenBSD doesn't even bother with usability really seems to miss the
mark.

For me, it still comes back to how I ended my previous posting.  The
choice of operating system depends on how each meshes with how you're
going to use each system and with your own operating style.

--=20
David Benfell, LCP
benfell@parts-unknown.org
---
Resume available at http://www.parts-unknown.org/resume.html

--R3G7APHDIzY6R/pk
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.7 (GNU/Linux)

iQEXAwUBPPXTfHw5zqzgtjVOFAK8AgQAiUrbJLrX06EHVAUzhQyIic/khN0KLJih
WgUVTNAVTR1uwKLfOhCLwvcCzPn/xQ4nZZitRQxxyN/OLYoFZmkvtwYg5RmPgD8a
eB34qDNN3bxIjF2oKN2qCeyFt4vjF+lsSev2wtRxvv65OdZrMOZLwdlicyF2rXGG
B2JMVNjsFd4D/AnhiVtr+hvNDoZEPr7bfpZiuSWxM6hEP28RLfLRJHAUCLwgGfMf
Si78PjOp+tzX3IgMzWovZUAMOjGR85b0U0r/RmksaqySS3dtTAqcQkaQit+orMtN
Cyx4AmGGZFEBfug1LgZ3z89Ljpig5LJV+3AS3g8zX3oPLQAoo4qfboK5
=ZF1G
-----END PGP SIGNATURE-----

--R3G7APHDIzY6R/pk--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
