From: Jim Reimer <wa5rrh@arrl.net>
Subject: sudo, SUID and SGID
Date: Sat, 24 Aug 2002 10:27:57 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208241527.g7OFR8El003246@franklin.icok.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm not sure I'm clear as to when I should use sudo, and
when I should use SUID and/or SGID.  It looks like I should
use sudo when I want only a limited number of users to
have access to a (normally root) program, and SUID/SGID
when I want to let everybody have it.  Is that all there
is to it?

If I want a script to run as root, I *must* use sudo?

Another thing is that if SUID/SGID is appropriate, which
is used?  Is it ever necessary to use both at the same time?

Thanks for enlightening me.
-jdr-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
