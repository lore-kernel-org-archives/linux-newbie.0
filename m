From: jamtat@mailsnare.net
Subject: Getting a valid display under Debian revisited
Date: Tue, 9 Dec 2003 11:21:30 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312091046300.1655@debian-box>
References: <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello all.  I'm still experimenting with various ways of installing
Debian.  Since I seem to have hosed the gui on a system I've been using,
and since a "new" computer showed up in the dumpster over at the
department, my latest victim for cruel Debian install experiments is a
P166 with 32MB RAM, 2GB HD and S3Trio64v+ video card (among other things).
I chose the floppy install: six diskettes, then everything downloaded from
the 'net (the machine had an SMC NIC as well, and I have a fairly fast
connection here at the U).  So, the base system was installed as Woody
(2.2.20 kernel and all).  Side note: I really wanted to try out the new
installer beta, but I couldn't access any documentation on it (maybe
because of the Debian server compromises of late).

After installing the base system, I edited /etc/apt/sources.list and
switched over to unstable.  I then ran apt-get update, apt-get
dist-upgrade.  Then, I proceeded to install additional software - the X
window system being the central concern, installed using tasksel.  I also
installed (apt-got) fluxbox for a WM.  Entered settings for my monitor
and video card when asked.  On next boot, however, I got pretty much the
same black screen I wrote to the list about earlier - though that black
screen was with a different video card, monitor and computer: it's just
blank black, as though the monitor is powered off.  The difference in this
case is that I can ctrl-altFsomething and get to other virtual terminals.
I can also kill X windows by going to the terminal X runs on and hitting
ctrl-alt-backspace.  This was more than I could do on the other machine.

So, I conclude that I'm doing something really fundamental really
wrong(ly).  I want to start by asking if I should expect the sid/unstable
version of X windows to have any conflicts with running on a system using
the older 2.2.20 woody/stable kernel (both systems I'm having display
problems with run sid/unstable XFree86 and the stable 2.2.20 kernel)?  I
noted among the messages on screen when either firing up or killing X
windows that it was compiled using the 2.4.22 kernel.  I also noted a
pointer to /dev/mice/???  that my system couldn't make sense of in
XF86Config-4, and which I edited to point to /dev/psaux.

Before going on to any more in-dpeth trouble shooting on this, I'd just
like to ask if I might not be running into problems at some really basic
level like using the older, stable kernel with the newer XFree86.

Thanks, James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
