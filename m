From: "Steven Smith" <sos22@cam.ac.uk>
Subject: Re: monitor
Date: Tue, 27 Apr 2004 22:15:15 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040427211515.GA932@archibold.chu.cam.ac.uk>
References: <408EC076.5000108@dpomeroy.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <408EC076.5000108@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
To: dave <dave@dpomeroy.com>
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>


--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I purchased a 17" monitor with 1280X1024 resolution.  That resolution=20
> makes my text and pictures to small.  I need to run 1024X768.  However=20
> 1024X768 doesn't look very good.  The detail is not sharp.
Is this a TFT monitor, by any chance?  Those will often have 1280x1024
physical picture elements, and so if you want to run the monitor at
anything other than its native resolution, it has to do a somewhat
convoluted image resizing process.  On many older TFTs, this looked
rather odd, and even on newer ones it's usually visible.

(On a CRT, the monitor electronics can essentially ignore the physical
phosphor clusters, and pretend it has continuous emitter elements.
The aperture grill/shadow mask/etc. then makes sure electrons don't
leak to the wrong colour dots.  In effect, the physical pattern of
shadows and phosphers handles the pixel blending automatically.)

> Is ther anyway to decrease the viewed resolution without reducing
> the video cards resolution?
Not to the best of my knowledge.  Your best bet is probably to just
scale the text up a bit: most programs accept arguments of the form
``-fs <size>'' to set the font size to <size> points (so, for
instance, ``xterm -fs 20''), or have a suitable configuration dialog
somewhere.

You could also try xmag, which is usually included with the standard
XFree86 clients package.

Steven Smith.

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (FreeBSD)

iD8DBQFAjs1jO4S8/gLNrjcRAu3XAKDUQVhqDo6aSh6yjoeBnSbNWf2XzQCdGMvz
lPhmCqBdSQ5wNnqyUt+XoV8=
=aPx+
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
