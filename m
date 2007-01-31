From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: required header files not #included in cdev.h
Date: Wed, 31 Jan 2007 10:26:04 +0100
Message-ID: <20070131092604.GC4304@gateway.home>
References: <292693080701310028j3a4f246ducafbb3136421c0f5@mail.gmail.com> <Pine.LNX.4.64.0701310333390.30221@CPE00045a9c397f-CM001225dbafb6>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0701310333390.30221@CPE00045a9c397f-CM001225dbafb6>
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
To: "Robert P. J. Day" <rpjday@mindspring.com>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vget.kernel.org


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 31, 2007 at 03:36:28AM -0500, Robert P. J. Day wrote:
> On Wed, 31 Jan 2007, Daniel Rodrick wrote:
> > Is this OK?
>=20
> typically, this is not OK, but you must be looking at an old version
> of cdev.h.  the latest "git pull" version does, in fact, include the
> appropriate header files:
>=20
> #include <linux/kobject.h>
> #include <linux/kdev_t.h>
> #include <linux/list.h>

I guess his "old version" is linux-2.6.19. The include files were fixed
during development from 2.6.19 to 2.6.20-rc1:

erik@arthur:~/git/linux-2.6 > git-log v2.6.19..v2.6.20-rc1 include/linux/cd=
ev.h
commit 5ec68b2e310437e99c297ba04e1afc5297aa6de1
Author: Jan Engelhardt <jengelh@linux01.gwdg.de>
Date:   Wed Dec 6 20:36:14 2006 -0800

    [PATCH] pull in necessary header files for cdev.h

    linux/cdev.h uses struct kobject and other structs and should therefore
    include them.  Currently, a module either needs to add the missing incl=
udes
    itself, or, in case a module includes other headers already, needs to p=
ut
    <linux/cdev.h> last, which goes against a alphabetically-sorted include
    list.

    Signed-off-by: Jan Engelhardt <jengelh@gmx.de>
    Signed-off-by: Andrew Morton <akpm@osdl.org>
    Signed-off-by: Linus Torvalds <torvalds@osdl.org>


Erik

--=20
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery

--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFFwGCs/PlVHJtIto0RAkWgAJ4uFm9UcxPB3iK+GnBeyv3LBCYH1wCfcIzl
Xi5MKswMy4V4SDVrgBUKW1Y=
=dsnn
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

