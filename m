From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: Tar Exclude
Date: Wed, 13 Nov 2002 17:11:06 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021113171106.GA1287@cam.ac.uk>
References: <077901c28b27$c6fd7540$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <077901c28b27$c6fd7540$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I have a script that tars a all the sub directories of a directory into
> individual tar files for each subdirectory. I have an exclude file that
> is set to skip some of the folders I don't want tarred. This works but
> it creates the empty tar files. Is this normal?
Yes.  It is, in fact, exactly what you've told tar to do: create
a tar file containg everything in directory foo, excluding files
in directory foo.  This gives us an empty tar file.

> Can it be set not to do this?
I can't see any immediately obvious way to stop tar making empty
files, but you could try a script like this:

tar --create ... # Whatever arguments you're currently using for tar.
[ `tar -tf foo.tar | wc -l` -eq 0 ] && rm foo.tar

replacing foo.tar with the filename of the generated tarball which
might be empty.  (The second line checks whether the tar file is
empty, and rm-s it if it is).

This isn't a terribly pleasant solution, but it should work.

Steven Smith,
sos22@cam.ac.uk.

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE90oeqO4S8/gLNrjcRAs65AJ9UX5h3kUIsO7sPga14tEFOSqwrdwCeK8EG
udn6vzWxwaNrvAdpkC/UpW0=
=lOv4
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
