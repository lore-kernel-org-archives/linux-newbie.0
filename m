From: James Miller <jamtat@mailsnare.net>
Subject: getting a console prog to run on tty2 at bootup
Date: Fri, 10 Dec 2004 07:11:15 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0412100651320.8769@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello all.  I'm running a new Debian variant called "Ubuntu"--sort of an
unstable/testing composite.  I run a number of console apps and like to
keep a virtual console open for them (as opposed to using xterms).  I've
found a nice sort of console windowing program called "twin" that allows
me to run all my console apps in a single virtual terminal.  Right now, I
start all this manually: on bootup, I hit ctrl-alt-F2 and issue the
command to start twin.  What I'd like to do is automate it a bit more so
that twin automatically runs on tty2 when I boot the system.  I understand
that I probably need to edit the file /etc/inittab to make this happen.
Is this correct?  Are there any other startup files that would need
editing to do what I want here?  Furthermore, exactly how would I edit
/etc/inittab to accomplish this?  I think the relevant portion of the file
to edit is this one:

# Note that on most Debian systems tty7 is used by the X Window System,
# so if you want to add more getty's go ahead but skip tty7 if you run X.
#
1:2345:respawn:/sbin/getty 38400 tty1
2:23:respawn:/sbin/getty 38400 tty2
3:23:respawn:/sbin/getty 38400 tty3
4:23:respawn:/sbin/getty 38400 tty4
5:23:respawn:/sbin/getty 38400 tty5
6:23:respawn:/sbin/getty 38400 tty6

I think the 23 refers to the port telnet runs on, right?  Seems I need to
edit the line 2:23:respawn:/sbin/getty 38400 tty2, but the question is
how?  Do I replace /sbin/getty with the path to twin and add any command
line switches after (-hw=tty is what I use when I run it manually from a
console)?  Does the 38400 need to be in there, and for that matter, the
23?

Any advice on editing relevant startup files properly in order to get twin
running on tty2 at system startup would be appreciated.

Thanks, James

PS I log into the virtual terminal as my system's user before running twin
when I do this manually.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
