From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Re: CD-ROM settings and hardware resources...
Date: 20 Oct 2002 01:46:27 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035092798.26224.22.camel@localhost.localdomain>
References: <1034969037.26230.3.camel@localhost.localdomain> 
	<5.1.0.14.1.20021019160457.024730b0@celine>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature";
	boundary="=-q/X9yRDIzAog5NqH+tt/"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021019160457.024730b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie <linux-newbie@vger.kernel.org>


--=-q/X9yRDIzAog5NqH+tt/
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Sorry to all for not being more descriptive.  Here are my specs as far
as I can tell:
1.  Kernel: 2.4.19mdk (Mandrake 9.0)
2.  CD-RW: HP CD-Writer+ 9100 (ATAPI)
,fs=3Dauto,ro,--,iocharset=3Diso8859-1,codepage=3D850,umask=3D0


The CDs I'm trying to read were made in Windows (98, 2000, XP) with this
very same drive about a year ago.  They all contain home-made movies
that I created in XP.  The range in sizes is 9MB to 200MB.  Now, I have
never been able to play any of them directly off of the disk in Windows,
but I have always been able to transfer them from CD to hard disk.  My
problem in Linux is that the drive "stalls" during a copy or a read of
the media during playback in xine or kaboodle or xmovie, etc...  It
would play the first 30 seconds of the film and then stall out.  The
media program freezes and the drive is locked until I kill the processes
accessing it.  The same is true when I attempt a copy from CD to hard
drive in Konqueror.  The copy window says it transfered 4MB and then the
drive status windows says "stalled" and that's as far as I can get.

I figure there is a setting in some config somewhere that will get me
better performance when dealing with CD-R media.  I thought that there
might be a parallel between the "read ahead" setting in the driver under
Linux as well as Windoze.

BTW, I'm NOT pro-Windoze.  I'm trying to set all this up under Linux so
that I never have to use MS software again.

Oh, I'm also looking to upgrade my system considerably.  Right now I'm
running an old AMD Athlon 650Mhz with a 9GB and 20GB two-drive setup.  I
want something fast and cheap that is Linux approved or Linux friendly.
Does anyone know of a web storefront that sells such hardware or will I
have to simply shop with a list of known compatible hardware?

Thanks in advance guys!

On Sat, 2002-10-19 at 19:09, Ray Olszewski wrote:
> I meant to reply earlier but it slipped my mind.
>=20
> First, it would help to be a bit more descriptive than just to say "has=20
> trouble reading large files". What sorts of files? What sort of trouble?=20
> What application software is involved?
>=20
> Without that detail, here is just a guess ... under Linux, DMA is not=20
> enabled on the drive (I'm assuming here that this is an ATAPI drive,=20
> another detail you omitted). You can check this (and if need be correct i=
t)=20
> with "hdparm" ... the man page will give you the details.
>=20
> [...]
> >On 18 Oct 2002, Bryan Simmons wrote:
> > > I've noticed that my HP CD-Writer 9100+ has trouble reading large fil=
es
> > > off of a burn under Mandrake 9.0.  This problem doesn't occur in
> > > Windows.  I think it may be the read-ahead setting.  Does anyone know
> > > anything about this?
> [...]
>=20
> --
> -------------------------------------------"Never tell me the odds!"-----=
---
> Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> -------------------------------------------------------------------------=
------
>=20
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" i=
n
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--=20
Regards,

Bryan Simmons=20
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D=20
 UFO's are real.  The Air Force is a hoax.
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D=20

--=-q/X9yRDIzAog5NqH+tt/
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.7 (GNU/Linux)

iD8DBQA9skMzr3nDhuQnQRARAvgdAJ4lHh83j/zQppaVT6e5lFqD7eG9EACfRG6n
zgGPhHvmwUwFFVVHqQs7E1Q=
=Jt9p
-----END PGP SIGNATURE-----

--=-q/X9yRDIzAog5NqH+tt/--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
