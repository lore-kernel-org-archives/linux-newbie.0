From: Owen Ford <oford@arghblech.com>
Subject: Re: Heavy load of graphics
Date: Thu, 07 Oct 2004 01:25:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1097130340.24725.22.camel@spider.hotmonkeyporn.com>
References: <Your message of "Tue, 05 Oct 2004 06:01:00 +0100." <20041005050100.76032.qmail@web52902.mail.yahoo.com>
	 <5.1.0.14.1.20041006224402.02071d28@celine>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-c4ayXTZQWiIvI3LV60GJ"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041006224402.02071d28@celine>
List-Id: <linux-newbie.vger.kernel.org>
To: newbie <linux-newbie@vger.kernel.org>


--=-c4ayXTZQWiIvI3LV60GJ
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu, 2004-10-07 at 00:48, Ray Olszewski wrote:
> At 10:07 AM 10/7/2004 +0800, Peter wrote:
> >Want to free memory?
> >
> >$ free
> >              total       used       free     shared    buffers     cach=
ed
> >Mem:        223708     220120       3588          0      28356     10793=
6
> >-/+ buffers/cache:      83828     139880
> >Swap:       128480       3996     124484
> >
> >$ locate /usr/bin/f* or x* or g* ...
> >
> >
> >$ free
> >              total       used       free     shared    buffers     cach=
ed
> >Mem:        223708      41364     182344          0       1520      2859=
2
> >-/+ buffers/cache:      11252     212456
> >Swap:       128480       5056     123424
>=20
> Peter -- This is a pretty strange consequence of running the "locate"=20
> command. And I cannot replicate it here. For example:
>=20
> ray@waverly:~$ free
>               total       used       free     shared    buffers     cache=
d
> Mem:        773892     742056      31836          0      87600     441912
> -/+ buffers/cache:     212544     561348
> Swap:            0          0          0
> ray@waverly:~$ locate /usr/bin/f*
> /usr/bin/factor
> [about 40 more lines, deleted here]
> ray@waverly:~$ free
>               total       used       free     shared    buffers     cache=
d
> Mem:        773892     742076      31816          0      87608     441924
> -/+ buffers/cache:     212544     561348
> Swap:            0          0          0
>=20
> Any idea what's causing the change on your system? My understanding of=20
> Linux says it shouldn't work the way you report seeing it, so I'm wonderi=
ng=20
> what I am missing.

It's not really anything to do with locate.  You create an enormous
amount of memory pressure that won't be needed but the once.  This
causes tho VM to dump most of what is in RAM to swap or just free the
pages.

I believe that is the LRU algorithm doing its job :)

In my case most of my applications were dumped to swap.  X was still
snappy but almost everything else was massively sluggish and locate ate
all available memory plus a big chunk of swap.

spider ~ # free  =20
             total       used       free     shared    buffers     cached
Mem:       1034704    1023732      10972          0      53008     334368
-/+ buffers/cache:     636356     398348
Swap:      2048248      25464    2022784
spider ~ # locate /usr/bin/g*
<snip>
spider ~ # free=20
             total       used       free     shared    buffers     cached
Mem:       1034704     132848     901856          0        652      36024
-/+ buffers/cache:      96172     938532
Swap:      2048248     252972    1795276
spider ~ #=20

--=20
Owen Ford <oford@arghblech.com>

()  ascii ribbon campaign - against html e-mail=20
/\                        - against proprietary attachments

--=-c4ayXTZQWiIvI3LV60GJ
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.6 (GNU/Linux)

iD8DBQBBZOFj4bjUYpnk5/QRAu0/AJwOcN1B1P7zQvD+Kiog0aQ5GbejUQCgw+a+
nIKORLCVZDWK06svhOeHrD4=
=tJ+0
-----END PGP SIGNATURE-----

--=-c4ayXTZQWiIvI3LV60GJ--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
