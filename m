From: Raider <georgep@gmx.net>
Subject: Re: which UNIX to use (was: Re: which distribution to use?)
Date: 30 May 2002 00:59:15 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1022702777.2081.99.camel@localhost.localdomain>
References: <001f01c20659$f2c8d820$7730f7c2@geoff> 
	<20020529043915.GB961@raven.parts-unknown.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-2G8ZZLXS2I31IXq6ZDXf"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020529043915.GB961@raven.parts-unknown.org>
List-Id: <linux-newbie.vger.kernel.org>
To: David Benfell <benfell@parts-unknown.org>
Cc: linux-newbie@vger.kernel.org


--=-2G8ZZLXS2I31IXq6ZDXf
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Well... keep it simple: BSD is on the traditional side of Unix.=20
Linux... is on the "cool" side.

The kernel, which has nothing to do with the home user and rather with
the server admin, is better.  But Linux is catching on.

The driver database and the app list, which has everything to do with
the end user, as the server admin will probably use a handfull of tools,
and some home-made scripts, shows Linux is winning.

So here you have both advantages and disatvantages of the "coolness" of
Linux.  More apps, easier to use, but louzier code, less optimisation...

In the end, it isn't that important what OS to use.  As Unix has won the
war by far and any single noticeable OS nowadays has a (more or less)
POSIX kernel.

From what I recall the issue here was which Linux distribution to use.=20
Not BSD.. or any Unix flavour.  So the originator of this alternative
"thread" should have labeled the message differently.  So, geoff,
remember next time to keep the subject in concordance with the
contents.  This is no "spanking".  But rather a nice way to tell you
that your message would have been deleted by default, just in this case
I checked the mail.  Me, and I'm not the only one, I read or delete the
mail based on the subject and don't bother to read more.  After all this
is WHY the subject line exists.

Back to UNIX, OpenBSD is certainly a NO.  I know people who are good on
Linux and get lost with some admin tasks on any BSD.  OpenBSD has that
particular charateristic of being "safe".  And safety goes as the main
purpose.  And real life shows that it's all just a long line with one
extreme being labeled as "safe" and the other as "friendly".  Now, no OS
has even got to extreme.  But as Linux lies somewhere in the middle of
the line and Win95 somewhere on the "friendly" side... quite on the
extreme (although it isn't that friendly either ;-) OpenBSD goes to
about the same lenght in the opposite direction.  Later on you'll see
that newer MDK and RH offer you at install time a "security level" which
means how they set up permissions on various files.  Lowest level is
more or less equal a windoze's usability... and about the same safety.=20
Highest level makes things really hard for the "regular" user.  Bottom
line - OpenBSD doesn't even bother with the usability.

	NetBSD has about the same problem as OpenBSD.  Its purpose isn't
friendliness or teaching somebody to do anything.  Its purpose is
portability.  And AFAIK, they are the most portable as working on most
architectures.

	FreeBSD is the only BSD that comes anywhere closer to Linux.  This is
why it is friendlier, and this is why it is the most popular, known and
tested BSD flavour to my knowledge (lately I mean).

	Now, this is a big problem - making a real comparison.  It is like
comparing apples and oranges.  Of course, they are fruits... and round.=20
But things end up about here.  The originator should ask about Linux vs
*BSD.  As different Linux distributions are only that - different
distributions of the same system.  In some cases the differences are
even smaller than say Windows with Netscape explorer versus Windows
(same kernel) with Outlook and IE.

	Back to the main issue - if you are taking into consideration examining
a BSD system... FreeBSD is the only choice.  If you need any of the
others - you won't have that dillema.

	FreeBSD and Linux are coming closer every month.  FreeBSD has some
packs to make it able to run Linux binary, and Linux has a fair
knowledge about BSD, enough to see it's partitions and things like
that.  Go for FreeBSD in case you have lots of spare time and - most
important - a real computer, no WinAnything.  First example that comes
into my mind - if you have a hardware modem you will be able to use it
with FreeBSD without any problem.  If you have a software modem, your
only chance is with Linux.

	As for Linux... I use MDK and it gives me an WinXP experience ;-) on a
k6-2@300Mhz.  Lots of graphics, lot of coolness.

	I won't go into any more details as a holy war debate is the last thing
I want.

On Wed, 2002-05-29 at 07:39, David Benfell wrote:
> On Tue, 28 May 2002 16:10:50 +0100, geoff wrote:
> > Is anyone able to compare (say) Slackware Linux with any other UNIX clo=
nes
> > such as FreeBSD ?
> >=20
> > From a learning point of view, I guess it depends on what it is that yo=
u
> > wish to learn.
> >=20
> Comparing BSDs with Linux is a little difficult to do objectively.
> All claim to be powerful, reliable, and secure.  And all are,
> certainly relative to Windows.
>=20
> The choice of an operating system depends heavily on what you actually
> plan to do with that operating system.  Few operating systems are set
> up "for learning."
>=20
> For servers and routers, I choose OpenBSD.  For desktop systems, I
> choose Linux.
>=20
> I've been told that FreeBSD is a great server system, but not so great
> for desktop use.  This apparently defies the experience of some people
> I know, one of whom uses FreeBSD on his laptop.  And if I were in the
> position of having to support a large number of desktops, I would take
> a hard look at FreeBSD simply because I prefer its flavor of package
> management.
>=20
> My impression is that of the BSDs, FreeBSD has the most going for it
> in the way of driver development for odd hardware.  I'm guessing that
> Linux is still ahead here, though, due both to manufacturer support
> and the sheer number of people working on it.
>=20
> I'm presently writing this on a laptop which doesn't support Linux
> well.  Am I worried?  No.  I figure Linux will catch up with it in
> fairly short order.  (Even if it doesn't, it works well enough for my
> purposes.)  Would I be so confident with a BSD?  No, even though
> FreeBSD probably would work as well on it as Linux does now.
>=20
> Similarly, I suspect that most of the people doing development for
> desktop applications (and probably a bunch of other software) are
> using Linux platforms.  The stuff should generally still build under
> the BSDs; sometimes you might have to use gmake (GNU make), and
> I guess there will be instances where the porting just won't work.
>=20
> I haven't mentioned NetBSD.  I haven't played with it at all, nor do I
> know anyone who has.  Its main claim to fame seems to be in the
> diversity of platforms it will run on.  They really work on this.
>=20
> So you see, the choice of operating system has little do do with a
> "learning experience."  It has much more to do with how each meshes
> with your needs (for each given system) and style of operation.
>=20
> --=20
> David Benfell, LCP
> benfell@parts-unknown.org
> ---
> Resume available at http://www.parts-unknown.org/resume.html


--=-2G8ZZLXS2I31IXq6ZDXf
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.0.6 (GNU/Linux)
Comment: For info see http://www.gnupg.org

iD8DBQA89TS4JRE4XzTZU8gRAlfOAJ9BFWN5EMmR4XQbl0AXzlhqw597VACgix46
ngfRb2G2m3qqc8RpYE3IVNA=
=JnAm
-----END PGP SIGNATURE-----

--=-2G8ZZLXS2I31IXq6ZDXf--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
