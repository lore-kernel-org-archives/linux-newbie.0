From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: lilo
Date: Sat, 27 Apr 2002 19:29:02 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020427182902.GA419@cam.ac.uk>
References: <20020427165127.35238.qmail@web12801.mail.yahoo.com> <00f601c1ee0c$7b757cc0$0901a8c0@system>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <00f601c1ee0c$7b757cc0$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
To: Tom Beer <mailings@analogon.com>
Cc: Staci <spiritlover666@yahoo.com>, linux-newbie@vger.kernel.org


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> It fits on a disk.
Have you tried running the kernel off of a floppy? That would at
least confirm it's working.

> I compiled many things as modules and the kernel 2542462 big.
That's a big kernel. Do you mean vmlinux (which could be that large)
or bzImage (which shouldn't be)?

> But isn't there a way to install the bzImage?
Usually, you go:

cp arch/i386/boot/bzImage /boot/bzImage.2.4.18

and add a section to lilo.conf:

image = /boot/bzImage.2.4.18
	label = some_label
	read-only

before rerunning lilo:

/sbin/lilo -v

If that doesn't work, then please post the output and the contents of
your lilo.conf to the list.

Steven Smith,
sos22@cam.ac.uk.

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE8yu3uO4S8/gLNrjcRAnDyAJ4ryWVK2X20iSFc7fIA6XjrL2CSKQCgippj
xbWl0oGGljf3wJlbLZjtyRk=
=Oowv
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
