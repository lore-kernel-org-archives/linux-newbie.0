From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Block Device Size
Date: Tue, 4 Jun 2002 21:41:44 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020604204144.GB946@cam.ac.uk>
References: <200206022108.23246.knutties@indiainfo.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="St7VIuEGZ6dlpu13"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200206022108.23246.knutties@indiainfo.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Linux Newbie <linux-newbie@vger.kernel.org>


--St7VIuEGZ6dlpu13
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> I created a block device on an ext2 partition. I ran mkreiserfs on that=
=20
> device. What is the size of this device that I have created?
That depends on how you created it. If you used mknod and created a block
special, the data for the device will be stored on a physical partition,
and the size of the device will be equal to that of the partition.

If you created an ordinary file using e.g. dd, and attached the loopback
block device to it, then the device's size is equal to that of the
underlying file.

> Once I mount the
> device and use df, the size of the device is greater than that of the ext=
2=20
> partition in which I created the device.
This could happen trivially if the device is a block special and the target
partition is larger than the containing partition.

It can also happen using loopback devices if the partition file is sparse.
This means that large chunks of the file which are full of zeros do not
need to be stored. A file created using
``dd if=3D/dev/zero of=3Dsome_file count=3D1 seek=3D100'' will be sparse, f=
or
instance. To check whether a given file is sparse, compare the sizes
given for it by ls and du - du gives the amount of disk allocated,
whereas ls gives the number of bytes which can be read from the file,
so du sizes are smaller than ls sizes for sparse files.

Some old documents recommend the use of sparse files for filesystem images,
in order to save space. However, this is an extremely bad idea on recent
kernels, and can cause a deadlock, which will bring the system to its
knees in a few minutes. I tested this before sending this message, and
it's still a problem on 2.4.18. :)

> /natarajan/reiser.fs  3.7G  	 33M  3.6G   1% /natarajan/mount
I'd guess from this that you're using a sparse filesystem image file.
You might want to reconsider.

Steven Smith,
sos22@cam.ac.uk.

--St7VIuEGZ6dlpu13
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8/SYIO4S8/gLNrjcRApJWAJ92MCHNTh5mr3KvQXGgZRTbWIQvUQCgwFBJ
kuP207fSVp4jhT0qy6AqPVU=
=ikOO
-----END PGP SIGNATURE-----

--St7VIuEGZ6dlpu13--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
