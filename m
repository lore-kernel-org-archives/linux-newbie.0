From: James Miller <jamtat@mailsnare.net>
Subject: shrunken console on laptop problem
Date: Wed, 26 May 2004 22:56:37 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0405262241300.28951@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm having some display problems on a couple of laptops: one has Gentoo,
the other Debian Sid.  The difference in the nature of the problem between
the two laptops is that one has an Xwindows display that looks fine
(Gentoo), while I'm still working on getting X going (hoping to set up
Xfbdev) on the other.  But the aspect of the problem the two share
concerns when the computers are in console mode - like when they're
booting.  Until the Gentoo machine gets to the login window for X, the
console part of the screen where text is showing as boot messages scroll
by occupies only a small portion that the center of the screen, rather
than taking up the whole screen.  It's not as though anything is cut off:
I see all the text there that I think I should be seeing.  But it's as
though the console has been shrunken down to occupy a small portion at the
center of the screen, with just blank black surrounding it.  This display
is meant to function at 1024x768, btw.  The other laptop does the exact
same thing: there is a console in the center of the screen with just blank
black surrounding it.  As I said, I haven't got any sort of X going on
this machine yet, so I'm forced to use this small portion of the screen as
a console when I'm trying to do things at the command line or using mc or
whatever other console apps I run.  This laptop's screen does 800x600,
btw.

Can anyone onlist inform me as to the nature of the problem I'm
confronting?  Just as well, can anyone offer suggestions about how I might
make the console take up the entire screen, rather than just a portion of
it?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
