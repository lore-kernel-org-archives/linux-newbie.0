From: Heimo Claasen <hammer@revobild.net>
Subject: Re: /cdrom fails to unmount
Date: 24 Jul 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307240457.h6O4v5qR009233@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Maybe, and I think, the thing is much more trivial - but for the reason
of typical specialised blindness, you never get it explained from the
*nix gurus: It has to do with the current "location" where you are when
trying to "umount /cdrom" - if one of the applications in any one of the
desktop windows "is" still "in" the /cdrom directory, for instance after
having done some task there, you cannot umount it from there nor from
another task, because it's "busy" (not with a process - there duely is
none to find -, but simply because the directory=device is accessed.)

I have this nuisance time and again because after a while doing this or
that I tend to forget that some earlier activity delocated the "working
directory" (for its own purpose), and when I then want to change media in
a CDROM or ZIP drive I promptly get that friendly "device is busy"
harassment.

A good illustration is the behaviour of the Midnight Commander: you
start it somwhere on some branch on the directory tree, then you
navigate _inside_ the prog to _look_ at some other branch/files, and if
you exit MC then your're quite somewhere else from where you started.

Maybe that's natural for everyone who grew up with *nixish mother's
milk; for all others, and certainly for mewbies like me, it's a bit more
diffcult to understand why "The System" would change your current/working
directory with, say, just reading-in data for an application, from a data
file which is situated quite somewhere else.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-07-23
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
