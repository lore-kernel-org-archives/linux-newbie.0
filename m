From: Beolach <beolach@comcast.net>
Subject: Re: shrunken console on laptop problem
Date: Sat, 29 May 2004 01:01:14 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40B8353A.5090907@comcast.net>
References: <Pine.LNX.4.58.0405262241300.28951@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0405262241300.28951@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

James Miller wrote:
> I'm having some display problems on a couple of laptops: one has Gentoo,
> the other Debian Sid.  The difference in the nature of the problem between
> the two laptops is that one has an Xwindows display that looks fine
> (Gentoo), while I'm still working on getting X going (hoping to set up
> Xfbdev) on the other.  But the aspect of the problem the two share
> concerns when the computers are in console mode - like when they're
> booting.  Until the Gentoo machine gets to the login window for X, the
> console part of the screen where text is showing as boot messages scroll
> by occupies only a small portion that the center of the screen, rather
> than taking up the whole screen.  It's not as though anything is cut off:
> I see all the text there that I think I should be seeing.  But it's as
> though the console has been shrunken down to occupy a small portion at the
> center of the screen, with just blank black surrounding it.  This display
> is meant to function at 1024x768, btw.  The other laptop does the exact
> same thing: there is a console in the center of the screen with just blank
> black surrounding it.  As I said, I haven't got any sort of X going on
> this machine yet, so I'm forced to use this small portion of the screen as
> a console when I'm trying to do things at the command line or using mc or
> whatever other console apps I run.  This laptop's screen does 800x600,
> btw.
>
> Can anyone onlist inform me as to the nature of the problem I'm
> confronting?  Just as well, can anyone offer suggestions about how I might
> make the console take up the entire screen, rather than just a portion of
> it?
>
> Thanks, James

This is a fairly common problem with laptops (and is not actually
related to Linux, btw), and with desktop systems with LCD monitors.  It
is caused by the way LCDs handle non-native resolutions (ie: 640x480 on
your LCD laptop capable of 1024x768).  LCDs are actually incapable of
running at any resolution other that their native resolution, and so
they can either do what you are seeing, where only the central 640x480
of the total 1024x768 is used, or it can stretch the image so it is
displayed fullscreen.  They have this because the method used to stretch
the display sometimes does a poor job, especially with text fonts.  How
to change your laptops to display fullscreen depends on what type of
laptop you have, usually either in the BIOS setup, or using a special
function key.  On my Dell Latitude CPi, it has a 'Font' function key
[Fn+F7] that toggles this.  If you still have trouble finding how to
switch to fullscreen,  I would recommend checking your laptop
manufacturers support.

Hope this helps,
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQFAuDU3GL3AU+cCPDERAr3DAKCDUEDFt2qNRko82WKXek84caO/PgCfX1oD
tzILHcO/TfmMyoQLBz+ZHdk=
=Jba8
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
