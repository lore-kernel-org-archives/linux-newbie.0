From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Kernel error
Date: Mon, 27 May 2002 17:50:31 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020527165031.GA2875@cam.ac.uk>
References: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="C7zPtVaVf+AK4Oqc"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH>
List-Id: <linux-newbie.vger.kernel.org>
To: Shaun Bryant <sbryant@ThePit.org>
Cc: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> depmod: *** Unresolved symbols in
> /lib/modules/2.4.5/kernel/arch/i386/kernel/microcode.o.gz
> depmod: *** Unresolved symbols in
> /lib/modules/2.4.5/kernel/drivers/char/drm/gamma.o.gz
<snip>

The only explanation which immediately comes to mind is that you've
recompiled a kernel without setting EXTRAVERSION in the Makefile.
Normally, when you make modules_install for a new kernel, it obliterates
the old contents of /lib/modules/<version>, to avoid odd crashes
from using modules compiled for the wrong kernel. If you then reverted
to an old kernel which had the same version, you'd have the new modules
and an old kernel, which can sometimes give this sort of error.

My suggestion would be to compile a new kernel, and set EXTRAVERSION.
If the new kernel is version 2.4.5<extra>, then put the System.map
in /boot/System.map-2.4.5<extra>.

This doesn't explain why all of your modules are gzipped, though.
Is this a distribution-specific kernel, or one compiled from the sources at
www.kernel.org?

Steven Smith,
sos22@cam.ac.uk.

--C7zPtVaVf+AK4Oqc
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQE88mPXO4S8/gLNrjcRAr+EAJ4uiqQFOy/WRsruC6bNxGdy7LKdKQCgrnap
+fAA/XR4aavADsQg+YnwWlE=
=wwnM
-----END PGP SIGNATURE-----

--C7zPtVaVf+AK4Oqc--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
