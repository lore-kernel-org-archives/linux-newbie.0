From: James Miller <jamtat@mailsnare.net>
Subject: getting a valid display under Debian
Date: Tue, 11 Nov 2003 13:42:08 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0311111308410.3176@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

I'm fiddling with a test Debian install on an older machine (486 DX4 100,
64 MB RAM, S3Virge/VX 4MB PCI video card).  I installed the base Debian
system via network, then switched sources.list to Sid.  I used tasksel to
install the Xwindows system: I believe this is 4.2.something.  So far, no
luck in getting a GUI display (runs fine in command line mode).  I should
mention that, on this same machine, I have gotten Xwindows working fine on
another partition that uses a Slackware distro with XFree 3.3, I think.
The monitor is an older Epson EVGA - 14" (does only 640x480, I believe).
I want to use fluxbox as a desktop, btw.

I thought getting a working display might be as simple as copying over the
XF86Config file from my Slackware partition.  Thus far, that hasn't
worked.  I've also tried running the command "xf86config" and entering in
all the same values I've used for the other, working, X display.  That
also has not worked.  By "not worked," here is what I mean: after doing
the configuration and generating the XF86Config file with it (or copying
it over, as the case may be), I issue "startx" from the command line.
When I do so, I get a blank screen - almost as if the monitor is turned
off, though there is obviously some low level of phosphor excitement.
The display becomes totally useless at this point: I can't get to any
virtual terminals, for example.  I can't kill X with ctrl-alt-backspace.
I only get this blank screen display, no matter what I do.  When I get
exasperated, I hit ctrl-alt-del, hear the system bell, and the computer
reboots (so it is accepting keyboard input, apparently).  So, I'm a bit
confused about what to do to get a working GUI display.

One point of confusion is the two XF86Config files I find in /etc/X11: one
is named just XF86Config, while the other is XF86Config-4.  I'm guessing
the system is using the latter.  Any clarification on this, anyone?
Also, I was hoping there is something like XF86Setup (like under the older
Slack I have on this system) for Debian, but I've been unable to find
such.  apt-get install xf86setup returns a message saying it's been
superseded by xbase-clients.  Looking over info I've found on the web
about xbase-clients however, doesn't reveal anything that sounds like the
XF86Setup program (this is a GUI program for generating the XF86Config
file that runs in VGA mode, as I understand it).  Is there such a program
that runs under Debian?

Feedback on this problem, anyone?  Further details needed, Ray?

Thanks, James

PS I should also mention that I edited
/etc/X11/Xsession.d/99xfree86-common_start and inserted "fluxbox" there,
since I understood that is where the desktop is specified.  Usual
disclaimers about my ignorance in these matters are appended here as a
formality.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
