From: James Miller <jamtat@mailsnare.net>
Subject: no working Mozilla after Sid dist-upgrade: suggestions?
Date: Fri, 16 Jul 2004 09:14:56 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407160852200.1363@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Last night I did apt-get update and apt-get dist-upgrade on my Debian Sid
system.  The new XFree has improved the display, thankfully, which was
sluggish and buggy after the last dist-upgrade.  But now, Mozilla (1.7.1)
won't run: it segfaults:
--------------------------
me@mycomputer:~$ mozilla
selected UILocale: en-US
selected ContentLocale: US
Segmentation fault
me@mycomputer:~$
--------------------------
Firefox, which I also have on the system and which was also upgraded,
starts ok but keeps crashing when I visit certain sites (e.g., Ebay).
--------------------------------------------------------------
me@mycomputer:~$ mozilla-firefox ww.ebay.com
selected locale: en-US

(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
failed

(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
failed

(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
failed

(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
failed

(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
failed Segmentation fault
me@mycomputer:~$
----------------------------------------------------------------------
Unless I'm very careful what sites I visit, I can't keep the browser
running for more than a few minutes.  The upshot is that I'm stuck without
a graphical browser.  Dillo does work, but due to its limitations is
unsuitable for many things.  I assume I'm up against the sort of stability
problems Sid is supposed to have, given it's experimental nature: does
that sound correct?  I can't really function for very long without a
reliable graphical browser, though.  Is there anything I can do to get one
or the other - or perhaps some third one - working?  I did try update(ing)
and dist-upgrade(ing) again this morning, recalling Ray having said that
these sorts of problems are often promptly sorted out by the Debian folks,
but nothing got upgraded.  Input and solutions will be appreciated.

James

PS  The last version of Firefox (8.2) I had on this machine was buggy as
well, crashing when I would try to visit certain sites.  The current
version is 9.1-4 and the current Mozilla version is 1.7.1.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
