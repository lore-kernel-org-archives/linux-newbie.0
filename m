From: James Miller <jamtat@mailsnare.net>
Subject: limited unicode success report, question
Date: Thu, 30 Sep 2004 20:21:19 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0409301946510.25984@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Well, xpdf if still not displaying and there are other font issues.  I was
debating a reinstall (ugh) because of the way things have sort of gotten
out of hand with this system, but I'm going to defer that for as long as
possible.  In spite of the setbacks in learning to use and administrate my
Linux system, I do have an occasional success.  Maybe for every 3 or 4
failures I succeed in doing something I need/want to do.  This note will
document one such limited success.

Don't know if others recall how, a few months back I was trying to input
unicode fonts into the system.  Well, that attempt ended in failure, but I
had another go at it recently and have gotten a bit further.  This is with
a Debian unstable system, so I don't know how transferable any of this
will be to other distros/systems.  It turns out one secret to inputting
unicode in at least some X applications (can confirm it works in
OpenOffice, which is important for me, and Mozilla) is to use setxkbmap.
From the command line, as root I presume, run, for example "setxkbmap ru."
That maps your keyboard to standard Russian layout and, if you have fonts
installed, allows inputting them in X apps like OOo.  I've tried it and it
works.  I've succeeded to some extent with both Russian and Greek fonts in
this. (caveat: you might want to enter "setxkbmap us" into the terminal to
start with since, if you have no Russian or Greek terminal fonts, you will
lose ability to enter input into the terminal and could have problems
getting English back.  If you enter that first, as I'm suggesting, you can
just scroll back in your bash history to restore English)  Yet another
option that gives something like the keyboard switching capability Windows
users can have involves editing XF86Config-4.  This works for XFree86
4.3.something, but may not work for earlier releases.  I found this
information in the file /etc/X11/xkb/README.config.  Edit the keyboard
stanza in XF86Config-4 as follows (excerpt from the help file mentioned
above):

"Let's say you want to configure your new Logitech cordless desktop
keyboard, you intend to use three different layouts at the same time - us,
czech and german (in this order), and that you are used to Alt-Shift
combination for switching among them.  Then the configuration snippet
could look like this:

Section "InputDevice"
Identifier "Keyboard1"
Driver "Keyboard"
Option "XkbModel" "logicordless"
Option "XkbLayout" "us,cz,de"
Option "XKbOptions" "grp:alt_shift_toggle"
EndSection"

I tried this and, sure enough, after restarting X, I can use alt-shift to
toggle between keyboard maps/fonts in OOo (I replaced "us,cz.de" with
"us,ru,el" to suit my needs).  Another post at
http://www.linuxquestions.org/questions/showthread.php?s=&threadid=221053
even describes an additional entry to make the scroll lock LED light up
when the non-native input method is selected.

Given that I've gotten this far, why do I speak of "limited success"?
Here's why.  I need a Greek keyboard map that allows inputting of
diacritical marks, and I'm beginning to doubt that such an animal exists.
If you know of one, please do let me know.  Another hang-up, though one
likely a bit easier to address, is the Russian keyboard map that ru
respresents: it's the traditional Russian typewriter layout, and I need a
phonetic one.  It seems ru_yawerty is what I need, but I can't succeed in
loading it so far.  But I have some ideas, as follows.

In the directory /etc/X11/xkb/symbols there are whole lot of what appear
to be keyboard maps listed - ru_yawerty among them.  When I try to load
it, I get no errors in the terminal I run setxkbmap from, so it seems to
work.  But no Russian font appears when I type.  If I do ctrl-alt-F1 and
look at (I guess) stdout, I see something like "couldn't load
pc/ru_yawerty."  I see a pc directory under the symbol directory mentioned
above, and there is, in fact, no ru_yawerty in it.  My keyboard is
registered in XF86Config-4 as pc104.  So, maybe all I have to do is copy
ru_yawerty into that /etc/X11/xkb/symbol/pc directory and it will load?
What do you think?  Furthermore, if it does seem like this will work, why
isn't that keyboard map in the pc directory to begin with?

Help will be appreciated.  If I can get the phonetic keyboard layout for
Russian part of my unicode input problem will be solved - at least for
now.  I fear the Greek diacriticals problem will be insurmountable at the
present stage of development though.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
