From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Linux Mount Partitions
Date: Fri, 25 Oct 2002 15:12:07 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021025141207.GA382@cam.ac.uk>
References: <Pine.BSF.4.44.0210250441590.3791-100000@server1.shellworld.net> <20021025130434.49227.qmail@web13402.mail.yahoo.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20021025130434.49227.qmail@web13402.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Abhijit Vijay <abhijit_v@yahoo.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> You have the kernel image which is located
> at /boot (?)
By convention, the partition which contains the kernel image
is mounted on /boot.  The kernel image itself is just an
ordinary file in that partition.

> But why is it that /dev/cdrom is mounted by default on
> /mnt/cdrom? Why not reduce confusion and mount it on
> /dev/cdrom itself?
/dev/cdrom and /mnt/cdrom provide different interfaces to similar,
but not identical, information.  The device file, which will usually
be /dev/cdrom, is intended for low-level access to the CD itself,
with very little translation (e.g. read 10 sectors starting from
sector 5000), whereas /mnt/cdrom provides a nice view of the files
on the CD.

While it would be possible, in principle, to mount the CD drve
on /dev/cdrom and call the device file something else, any program
which doesn't treat CD as filesystems (like, say, a player for
music CDs) would probably stop working.

> Also, what are the other partitions
> that are mounted by default and their default
> locations?
Have a look in /etc/fstab and ``man fstab''.

Various filesystems are mounted by convention automatically.  These
are virtual, and so don't need a backing partition (the kernel makes
the files up when needed).

The only one you really need is /proc, type proc, which contains
various kernel parameters and information on running processes.  If
you don't have this, ps, top, uptime, and plenty of other programs
stop working.

A filesystem of type shm is also usually mounted on later kernels.
For various arcane reasons, it doesn't actually matter where this
one gets mounted, but /var/shm is common.  A few programs assume
that such a filesystem is mounted somewhere, but very few (the only
one which I can immediately think of is cdrecord).

Depending on the distribution, you may also need to mount devfs
on /dev.  This provides a slightly nicer way of translating
between user-accessible device names (e.g. /dev/cdrom) and the
kernel's internal representations, but isn't really necessary.
If you have it, leave it alone, and if you don't, don't bother
setting it up.

Some programs perform better if a tmpfs filesystem is mounted
on /tmp.  Files created on a tmpfs filesystem are only ever stored
in memory, rather than on disk, so should be far faster.  On the
other hand, they get zapped if you reboot.  Unlike the previous three,
tmpfs can be ignored and, in theory, nothing will actually break,
just run a little slower.

Steven Smith,
sos22@cam.ac.uk.

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE9uVE3O4S8/gLNrjcRAvoDAKC/+Xh8cnaN7FftX81XyAI+z2qUoQCfajuI
wvsxnrp+NjYEsXhchrisZmI=
=GG4Q
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
