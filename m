From: Nathan Clayton <nathanclayton@daftwazzock.com>
Subject: Re: Advice about packages
Date: Wed, 01 Oct 2003 23:58:44 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F7BCCA4.4030900@daftwazzock.com>
References: <002901c38861$8ef4d0c0$0da16389@hyperion2>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002901c38861$8ef4d0c0$0da16389@hyperion2>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="macroman"; format="flowed"
To: linux-newbie@vger.kernel.org

Phillip Ames wrote:

>Hi,
>I'm relatively new to using Linux on a daily basis and I was looking f=
or
>some information about what the "trends" are for production Linux
>machines.  I installed RedHat 9, and have mucked about with rpm and
>thought that packages were the greatest thing since sliced bread.
>However, in the course of my reading and playing I've noticed that man=
y
>places recommend that the binary executables actually be compiled by
>your machine (with all its kernel options, etc.) which is sensible.
>Everything is well when I ./configure them and then "make install" but
>if there is an update to a particular product it seems very inconvenie=
nt
>to upgrade versions.  An example is the Apache httpd server - 1.3.xx
>stores its served files in /var/www/html/ and the actual httpd daemon =
in
>/usr/bin.  Apache 2, however, sets the DocumentRoot as
>/usr/local/apache2/htdocs/ and the binaries in /usr/local/apache2/bin/=
=2E
>I know it's just a simple matter of changing the DocumentRoot entry in
>the httpd.conf file for served documents but is there a better/easier
>way to go about upgrading the binaries?  Or is the de facto standard t=
o
>simply run ./configure --with-prefix=3D/usr/bin?  Any advice would be
>appreciated.  Thanks,
>
>
>-Phil
>
> =20
>
Ok, first off, are you using this for just a desktop? If that's the=20
case, you really don't need to compile everything for your computer.=20
While there will be a bit of a preformance hit, it really won't be too=20
large, and almost negligible when compared to the processing speeds of=20
modern computers. For the most part nowdays, you will only really need=20
to compile something if: your distribution doesn't support it and=20
there's no RPM/DEB files for it, there are some kernel modules which yo=
u=20
need but aren't in your distribution's source tree, you want to try to=20
eke out the most preformance possible, or you need to dsable some=20
features for security reasons.

My suggestion would be to just be lazy and let the package manager deal=
=20
with the big stuff that can be a total pain (like X, KDE, or GNOME), an=
d=20
just compile the little things that you need to customize your system=20
(i.e. the version of Xine with lib-decss support built in :). Granted=20
you won't be at the bleeding edge of things, but that's never stable,=20
and if this is your desktop or production system you can easily loose=20
data (I've had this happen, and it really sucks). Keep your system up t=
o=20
date with whatever update tool Redhat provides (I can't remember, I use=
=20
SuSE).

Nathan

--=20
"Man mu=DF nicht gro=DF sein, um gro=DF zu sein."
http://www.claytondevelopment.com


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
