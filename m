From: sos22@cam.ac.uk
Subject: Re: How can I move /usr/bin, /usr/lib (etc.) files?
Date: Thu, 2 Jan 2003 20:26:47 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030102202647.GD8978@cam.ac.uk>
References: <av1qr4$hev$1@main.gmane.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YD3LsXFS42OYHhNZ"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <av1qr4$hev$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
To: Jamie Risk <jamie_risk@yahoo.ca>
Cc: linux-newbie@vger.kernel.org


--YD3LsXFS42OYHhNZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> I'm using bash, so editting the ".profile" file in the user's home directory
> seems to have done the trick for the most part,
You may also want to modify /etc/environment, so that programs
other than Bash get the new PATH as well.

(Your system may call /etc/environment something else.  Look in
/etc/pam.d/login or /etc/security.d/login for pam_env.so for
some ideas)

> although when I invoked
> "man" (as in "man bash") after moving the directory, updating ".profile" and
> re-login,  I get messages akin to "/usr/bin/nroff not found" and
> "/usr/bin/tr not found".
>  * Where, in general, do programs (such as man) get there path information
> from?
In general, it depends on the program.  man, though, usually looks
in /etc/manpath.conf. (man 5 manpath)

> Similarily, I'd like to move the /usr/lib directory to another location.
>  * Should I download src for packages that I'm using and recompile with
> appropriate destinations chosen in the configure scripts?
That might be necessary.  If you're lucky, though, you might be able
to get away with adding the new location of /usr/lib to /etc/ld.so.conf
and the environbment variable LD_LIBRARY_PATH (same syntax as
$PATH).

Your life will almost certainly be drastically easier if you
create a symlink from /usr/lib to the new location...

Steven Smith,
sos22@cam.ac.uk.

--YD3LsXFS42OYHhNZ
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE+FKCHO4S8/gLNrjcRAnBKAKCpEkkU37vsgoaL7BzrtJ4TiYE4jACeKQa9
hMaVt0U5bXdo58QfE26PiP0=
=ig17
-----END PGP SIGNATURE-----

--YD3LsXFS42OYHhNZ--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
