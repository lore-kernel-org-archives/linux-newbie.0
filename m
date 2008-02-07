From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: Location of syscall wrappers
Date: Thu, 7 Feb 2008 10:25:40 +0100
Message-ID: <20080207092540.GB4468@gateway.home>
References: <f5524d840802062248v2311b6at1dc22bc30ece3b60@mail.gmail.com> <C86899CCB10A6C4E93D5978DCB232D4B07A66B7D@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2B/JsCI69OhZNC5r"
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B07A66B7D@GDCMX01.igglobal.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: Sachin Gaikwad <sachin.kernel@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 07, 2008 at 02:12:38PM +0530, Rajat Jain wrote:
> Hi,
>=20
> >=20
> > Use syscall(SYSTEM_CALL_NUMBER, arg1, arg2, arg3);
> >=20
> > _syscall3() macro are are not supported nowadays.
> >=20
> > http://lkml.org/lkml/2007/7/5/314
> >=20
>=20
> Who is supposed to provide syscall()?? C library? Where do I find its
> definition (not declaration)?

libc provides syscall(). Definition can be found in syscall(2).

Use is like this (implementing inotify_add_watch()):

#include <sys/syscall.h>
#include <unistd.h>
#include <linux/inotify.h>

static int inotify_add_watch(int fd, const char *path, unsigned int mask)
{
        return syscall(__NR_inotify_add_watch, fd, path, mask);
}


> What is an application supposed to do if it does not want to use the
> library?

The same as an application should do if it wants to use printf() but
not libc: implement it yourself.


Erik

--=20
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery

--2B/JsCI69OhZNC5r
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFHqs6U/PlVHJtIto0RAs/kAJ44gbGHF0GK9qSw9O3X8eF6yC1LcwCfXIRR
2gneaxt0LGpngg84vc+GWRI=
=SQBe
-----END PGP SIGNATURE-----

--2B/JsCI69OhZNC5r--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

