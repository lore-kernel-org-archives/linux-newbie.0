From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Re: CD-ROM Hell
Date: 01 Oct 2002 20:26:58 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1033518420.19378.7.camel@localhost.localdomain>
References: <1033443333.7225.50.camel@localhost.localdomain> 
	<200210010238.22882.wfoo@linuxvoodoo.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature";
	boundary="=-EpLLLi3/lF6wbBBHzBfY"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210010238.22882.wfoo@linuxvoodoo.com>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie <linux-newbie@vger.kernel.org>


--=-EpLLLi3/lF6wbBBHzBfY
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

For some reason, the command "lsof | grep /mnt/cdrom ." didn't produce
any results.  No error, nothing.  I looked at the man page for lsof but
it didn't seem to have anything to say about locating run-away
processes.  I also took a look at my running processes and couldn't find
anything suspicious.=20

The damn CD-ROM is still going.  I was able to successfully run umount
/mnt/cdrom.  But, of course, I can't remount it because "the device is
busy".
I'd really like to find out why this happens and how to recover from it
without a reboot.  It happens quite often with old or burned CDs, and
it's a problem I've had with 4 different CD-ROMs on 4 different distros
of Linux.

On Tue, 2002-10-01 at 02:38, Wladimir Foo wrote:
> > I have two terrible CD-ROMs and a lot of shady CDs.  Sometimes I'll put
> > one in the drive and Linux will fail to read it properly.  Sometimes
> > this means I just can't read the disk.  Other times it means that the
> > damn drive light stays on and the disk stays mounted and "busy" until I
> > reboot the frickin PC.
> >
>=20
> As Ray mentioned earlier, it would be easier to come up with a possible r=
emedy=20
> if we knew what you were doing. But, here's a something else that might h=
elp.=20
> Try using lsof:
>=20
> lsof | grep /mnt/cdrom .
>=20
> lsof will output the program(s) that is(are) using resources on /mnt/cdro=
m.=20
> Now simply quit (or kill those programs) and you should be able to unmoun=
t=20
> the cdrom drive.
>=20
> --=20
> http://www.linuxvoodoo.com    =20
> perl -le '$_=3D"75>42833<33.=3D3?,13406577073890:;90833<330690<3!!";tr[0-=
?][=20
> YXOUIWLVETHDCNM];print'
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
 "Sometimes I wonder whether the world is being=20
  run by smart people who are putting us on or=20
  by imbeciles who really mean it".=20
    ---Mark Twain=20
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D=20

--=-EpLLLi3/lF6wbBBHzBfY
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQA9mj1R0dAWZ6zmr0ARAtYzAJ4hDqEHCPV7HyJmvjPYDF/uDTh9dQCghius
8A4IcqsyE6wLY1E00A7xQRI=
=72I+
-----END PGP SIGNATURE-----

--=-EpLLLi3/lF6wbBBHzBfY--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
