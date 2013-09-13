From: "Bradley D. Thornton" <Bradley@NorthTech.US>
Subject: Re: Which distro?
Date: Fri, 13 Sep 2013 07:54:11 -0700
Message-ID: <52332713.7000903@NorthTech.US>
References: <l0v3jt$47e$1@ger.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <l0v3jt$47e$1@ger.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Nabbefeld <peter.nabbefeld@gmx.de>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: RIPEMD160



On 09/13/2013 06:23 AM, Peter Nabbefeld wrote:
> 
> 
> Hi all,
> 
> which linux distribution would You recommend?




1.) Slackware Linux

You can download the iso image here:

http://taper.alienbase.nl/mirrors/slackware/slackware-current-iso/slackware-current-install-dvd.iso

It is very easy to maintain, known to be perhaps the most stable of all
Linux distros, and running current means it stays current always.

All you need to do to keep Slackware completely current, running the
most stable, tested, and vetted current versions of software available, is:

# slackpkg update
# slackpkg install-new
# slackpkg upgrade-all
# slackpkg clean-system




2.) Arch Linux: https://www.archlinux.org/download/

Arch Linux is designed, out of the box, as a rolling release, and is
always current. Not as easy as Slackware, but keeps you up to date with
the very latest of all software.

Arch is prolly the easiest to do a complete update on, w/FreeBSD being
arguably the second easiest. To do a complete update of Arch, and all of
your installed software, you simply enter:

# pacman -Syu




3.) LMDE: http://www.linuxmint.com/download_lmde.php

LMDE is another rolling release, always current, and although not as
easy to maintain as Slackware it should be quite familiar to you and
simple to keep up to date since you have used an ewboontew - but this
distro doesn't break like ewboontews and remains current so you don't
have to reinstall from scratch again again every few months.

Out of the box it is one of the most popular distros, and hardly anyone
has anything bad to say about LMDE.




4.) Debian: http://cdimage.debian.org/cdimage/weekly-builds/

Debian is also widely considered to be, along with Slackware, one of the
most stable and reliable Linux distros. Running Debian Testing means you
are using it as a rolling release, and although it's not quite as easy
as maintaining Slackware or LMDE, it is the core that LMDE is based on
and will serve you quite well for many years w/o ever having to perform
another installation.

Whether you choose LMDE (based on Debian Testing) or Debian Testing,
making sure your distro is current involves the simple use of the same tools

# apt-get -y update

aptitude and synaptic are also tools you can use.

The problem with Debian is that *current*, isn't always as current as
many people, including yourself, might like - This is by design, and
intended as such for the sake of stability (the very same reason all of
the ewboontew variants are so unstable).




5.) FreeBSD: http://www.freebsd.org/where.html

FreeBSD is considered to be as stable as Slackware and Debian stable.
You can perform an upgrade to all of the latest software and version
simply by issuing:

# freebsd-update fetch
# freebsd-update install

and if you let it go for a few years, you can always force a complete
upgrade through several versions with:

# freebsd-update upgrade -r 9.1-RELEASE # for example




5.) Gentoo: You've already used Gentoo - so you already know how good it
is, but yes, there's a bit of involvment on your part required ;)




6.) Sorcerer Linux: http://sorcerer.silverice.org/img.php

Sorcerer Linux *IS* the *Original* source based distro, predating even
that of Gentoo, and is designed to always be current. It is not,
however, for the neophyte, with most documentation existing within the
distro itself and support coming direct from the maintainer himself and
the rest of us in the community on the mailing list.

Once you get a Sorcerer box up and running, it automatically takes care
of updating, recompiling, and installing *Everything* from source,
whenever there are updates.

Performance wise, I can't say that anything really compares to Sorcerer,
but then again, you will be required to perform due dilligence in your
research on how to maintain Sorcerer, which is easy, once you get the
hang of it - until then, you'll be scratching your head.

Once you get everything setup, keeping current is as easy as:

# augur synch # yes, w/an 'h' ;)
# augur newer
# augur update

Because you're a Gentoo user, I think you might be interested in this
rather recent review:

http://www.osnews.com/story/4768/Sorcerer_Linux_Review/page3/

Sorcerer is probably the easiest distro I know of to maintain, except
for Slackware, but that might be because I've been using Slackware
continuously since 1993.

> 
> I'm looking for something easy to maintain and up-to-date.
> 
> I've tried Xubuntu, but it seems to me not to be very reliable, as I'm
> getting some problems upgrading:

It's not very reliable - it's crap. All ewboontew is crap.

> - It semms to do an upgrade, but obviously some files aren't upgraded.
> They're still shown as an "alarm", but cannot upgrade those. :(
> - As I cannot get enough info about those updates, that might or might
> not be a security problem.

That's because all ewboontew derivations are total crap.

> 
> I know (and like) gentoo, but it's too complex for doing everyday-tasks.

I have no response to that. A single emerge command usually takes care
of any updates, and everyday tasks are done in userland, right?

Anyway, we both know it is a fine distro, and you understand more than
anyone why you are looking elsewhere - but remember, frinds don't let
frinds run ewboontew - stay away from trash like that!

> 
> There're numerous linux distros ou there, could somebody tell me about
> other well-maintained distros, please?

Well Peter, I hope that I've been been helpful :)

Kindest regards,


- -- 
Bradley D. Thornton
Manager Network Services
NorthTech Computer
TEL: +1.310.388.9469  (US)
TEL: +44.203.318.2755 (UK)
TEL: +41.43.508.05.10 (CH)
http://NorthTech.US

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Find this cert at x-hkp://pool.sks-keyservers.net

iQEcBAEBAwAGBQJSMycTAAoJEE1wgkIhr9j3J/YH/jEE5MsMzBmZJc3/pAz5PeTu
4bd6B8Bi9jZDlM8g3NX8Exu53XUn/23GFDX6pdZl9qwa5yiiZazbJ/RFNVE7eTfW
eiBXZOUw3mawpPHA7WQzjhh3OI9WyvE2CxRohqE9G9kZkPLtGz0PrxnDrX0HtcGq
Wo1qtURP1fv9voIic+WYKpCeML35AOhiWw4QVOU5EyQR0nZn72SyvntVEl1GuNfY
gl53zaK5iXNkugq3TCIhdAf7ixW166776hrMuWbMXboWJvwyWZeIb7yMsJ1irtWt
iNYFpzTF5pMGAaWyQ/Sz2zr9SqvPT1Mcf10U7Efu8bJ1dher6m9wEy7kTTJOFs8=
=6CeH
-----END PGP SIGNATURE-----
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
