From: James Miller <jamtat@mailsnare.net>
Subject: unicode input success report - final?
Date: Wed, 6 Oct 2004 12:26:34 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410061156210.2933@debian-emach>
References: <Pine.LNX.4.58.0409301946510.25984@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0409301946510.25984@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Maybe this will be a final report on this issue.  Most importantly, since
my last post I've been in contact with the author of xwingreek - a Russian
fellow who programs in Java and Python who also has an interest in
polytonic Greek (Greek with diacritical marks) input.  He's been a great
help.  Xwingreek is actually a bit deprecated.  He's written new keyboard
switching programs that integrate into OpenOffice.org and M$Word: these
allow switching between up to 3 keyboard maps/fonts.  He refers to the
programs as "Thessalonic" and "PyUNO" (the latter being the one written in
Python).  I did not succeed in finding either in the Debian repositories I
have or in the OOo user interface - despite the fact that he thinks PyUNO
is already incorprated into Debian's OOo release.  But that's not too
important to me since I'm taking the other approach I mentioned earlier
(editing XF86Config-4 to allow for keyboard map/font switching for X
apps).  He's also helped me out with this.  He's pointed out to me that
there is an additional line possible in the keyboard stanza of
XF86Config-4 (this refers to 4.3.0something and may not apply to earlier
releases): the "XkbVariant" line.  In order to get the phonetic Russian
and polytonic layouts (or at least a semblance of polytonic) I want, I've
added the "XkbVariant" line with ",phonetic,polytonic" following.  That
has gotten me most of the way to where I need to be in entering unicode
input into Xapps.  It also works in a console if you have the right fonts
installed.  As an additional detail, I should mention that I think you
must have a unicode locale specified in your system for this to work.  In
my case, I've set locale to en_US.UTF-8 (how to set that varies by
distribution: dpkg-reconfigure locales is how Debian does it).  I'll
provide the relevant section of my XF86Config-4 for those interested:

Section "InputDevice"
Identifier      "Generic Keyboard"
Driver          "keyboard"
Option          "CoreKeyboard"
Option          "XkbRules"      "xfree86"
Option          "XkbModel"      "pc104"
Option          "XkbLayout" "us,ru,el"
Option          "XkbVariant" ",phonetic,polytonic"
Option          "XKbOptions" "grp:alt_shift_toggle,grp_led:scroll"
EndSection

Note the "grp_led:scroll" segment too, which causes the scroll lock LED
on the keyboard to light up when I'm in one of the alternate keyboard/font
mappings.  In summary, I've written this in the hope it may help someone
else wanting to do this under Linux.  Having researched and written it up,
I can't say I feel much sense of accomplishment.  The reason there is a
need for such a description as I've written is because Linux is lacking in
certain user-friendliness features that a certain, non-geekish segment of
the population needs.  The real need is for programmers to fill that gap
by writing programs that will do this sort of thing: already the Russian
fellow I've mentioned above is doing this and I've heard of others.  Thus,
my little research/how to project here could likely be itself obsoleted
pretty shortly.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
