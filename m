From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Accessing NTFS partition
Date: 02 Oct 2002 14:57:54 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1033585076.18809.57.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature";
	boundary="=-tnDt1p5PjGTD6xFbB5O4"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie <linux-newbie@vger.kernel.org>


--=-tnDt1p5PjGTD6xFbB5O4
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Here's the situation, as detailed as I can think to present it.

1.  I have 2 hard drives.  They look as follows:
/dev/hda / (windows partition: fat32)4GB / (linux partition: ext2)4GB /
(linux swap) 1GB/

/dev/hdb / (linux partition: ext2)5GB / (windows partition: ntfs) 15GB /

2.  I can mount everything with no problem and change rights to
everything no problem except for the last partition on the second
drive.  This is because it is ntfs and should only be mounted READ ONLY.
See /etc/fstab and /etc/mtab entries for this drive below:

/etc/fsab:
/dev/hdb5 /mnt/ibm2 ntfs user,ro 0 0

/etc/mtab
/dev/hdb5 /mnt/ibm2 ntfs ro,noexec,nosuid,nodev 0 0

3.  Documentation suggests that changing ownership of the folder that
this drive is mounted under will allow that user access to the contents
of the drive.  So the owner is bsimmo1 and the group is bsimmo1.  Yet
bsimmo1 cannot access the drive.

4.  The problem seems to be the fact that I cannot write entries to the
ntfs volume.  This is because the drivers are not yet mature enough to
allow "safe" writes to the file system. =20


Can anyone suggest a way that I can use my ordinary, non-root, account
to read files from this volume?  My only alternative is to burn the
drive to CD (God forbid) and format it with ext2 fs.
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

--=-tnDt1p5PjGTD6xFbB5O4
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQA9m0Gy0dAWZ6zmr0ARAhtXAJwNl/TS1VOA6aqrfFZtPXQJ1m6JggCgj+cd
5seHmegMiU+h6i8SO5RNs5E=
=YBV8
-----END PGP SIGNATURE-----

--=-tnDt1p5PjGTD6xFbB5O4--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
