From: Jerry James Haumberger <jerryjh@imt.net>
Subject: Need fdformat from Slackware 3.5
Date: Wed, 4 Dec 2002 17:44:05 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212041734.KAA25803@cu.imt.net>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hal --

It's odd, yes.  At least on the surface.  You would expect (at least
I would, as a relative newcomer to Linux) that formatting floppies
for ext2 use is a process unrelated to DOS -- yet, in order to use
mke2fs on an unformatted floppy (for example), it will work if the
floppy is first formatted from DOS.

Although I could format all my floppies first with DOS and then
prepare them for use with mke2fs under BasicLinux (which doesn't
have the fdformat utility available), I'd prefer to skip the
DOS dependency while using Linux (and save a bit more time) by
having fdformat available.  And since I'm interested in a "minimalist"
distribution of Linux (BasicLinux), I'd prefer to manipulate DOS
files without adding Mtools under such circumstances.

>Trying superformat then dosfsck -tvr confirms that superformat does,
>in fact, put a dos fs on the disk.. Interesting.... We learn
>something new every day, eh?  Just a thought..


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
