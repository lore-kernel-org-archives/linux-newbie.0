From: Ray Olszewski <ray@comarre.com>
Subject: Re: no working Mozilla after Sid dist-upgrade: suggestions?
Date: Fri, 16 Jul 2004 08:17:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040716075506.01f20c68@celine>
References: <Pine.LNX.4.58.0407160852200.1363@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407160852200.1363@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:14 AM 7/16/2004 -0500, James Miller wrote:
>Last night I did apt-get update and apt-get dist-upgrade on my Debian Sid
>system.  The new XFree has improved the display, thankfully, which was
>sluggish and buggy after the last dist-upgrade.  But now, Mozilla (1.7.1)
>won't run: it segfaults:
>--------------------------
>me@mycomputer:~$ mozilla
>selected UILocale: en-US
>selected ContentLocale: US
>Segmentation fault
>me@mycomputer:~$
>--------------------------
>Firefox, which I also have on the system and which was also upgraded,
>starts ok but keeps crashing when I visit certain sites (e.g., Ebay).
>--------------------------------------------------------------
>me@mycomputer:~$ mozilla-firefox ww.ebay.com
>selected locale: en-US
>
>(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
>916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
>failed
>
>(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
>916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
>failed
>
>(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
>916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
>failed
>
>(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
>916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
>failed
>
>(Gecko:4544): libgnomevfs-CRITICAL **: file gnome-vfs-mime-info.c: line
>916 (get_value_real): assertion `!does_string_contain_caps (mime_type)'
>failed Segmentation fault
>me@mycomputer:~$
>----------------------------------------------------------------------
>Unless I'm very careful what sites I visit, I can't keep the browser
>running for more than a few minutes.  The upshot is that I'm stuck without
>a graphical browser.  Dillo does work, but due to its limitations is
>unsuitable for many things.  I assume I'm up against the sort of stability
>problems Sid is supposed to have, given it's experimental nature: does
>that sound correct?  I can't really function for very long without a
>reliable graphical browser, though.  Is there anything I can do to get one
>or the other - or perhaps some third one - working?  I did try update(ing)
>and dist-upgrade(ing) again this morning, recalling Ray having said that
>these sorts of problems are often promptly sorted out by the Debian folks,
>but nothing got upgraded.  Input and solutions will be appreciated.
>
>James
>
>PS  The last version of Firefox (8.2) I had on this machine was buggy as
>well, crashing when I would try to visit certain sites.  The current
>version is 9.1-4 and the current Mozilla version is 1.7.1.


I can't comment on your specific problem, but at least I should clarify 
what I meant by "promptly". I didn't mean instantly. Realistically, it 
takes a day or so for the bug to be identified, and another day or so for 
it to be fixed ... assuming it is routine, not a serious upstream problem, 
or a major incompatibility related to a shared-library change. These 
routine bugs are often just delayed recompiles, situations in which the 
source needs no actual changes, but the binary simply needs to be 
recompiled against a new set of library headers.

Occasionally, I've seen fixes take weeks, though the only specific case I 
remember is with an optional package that had a small user base (that 
happened to include me ... the package in question was vcr).

At the Debian site (start at www.debian.org and follow obvious links), I 
don't see any new "important" or "grave" bugs reported for mozilla-browser. 
Segfaults usually mean library mismatches in practice, so I'd wait a day or 
so and try another update/upgrade. (There was an old, reportedly fixed, 
problem with mozilla and E-Bay, but it looks different from yours.)

Firefox-mozilla had two "grave" bugs recently reported, though neither 
description matches yours very closely.

You might consider, in circumstances like this, filing bug reports at the 
Debian site.

PS - the current version of firefox-mozilla is 0.9.1-4, not (as you write 
it) 9.1-4. The leading 0. part indicates, as is customary, that it is an 
alpha package, not yet version 1.0. So its being buggy should be no 
surprise, and is at least partly an upstream issue, not a Debian one.

Sorry I can't provide more specific help.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
