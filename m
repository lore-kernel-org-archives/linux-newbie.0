From: James Miller <jamtat@mailsnare.net>
Subject: disabled system speaker: how to enable?
Date: Wed, 31 Dec 2003 13:33:21 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312311325080.465@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

We recently installed Gentoo Linux on a laptop, which went successfully
for the most part.  The Gentoo install seems to run from a ramdisk Linux
version, and it includes things like the links browser so you can go
online during the install to check documentation.  We also installed an
application there that used the console beep (a chat client) to keep in
touch with someone during the install.  The system speaker/console beep on
the machine worked fine at this stage, and would beep as it was supposed
to when someone would send a message.  On the installed system, however,
the console beep/system speaker is not working.  It doesn't work in the
chat client, and issuing | echo -e "\a" | doesn't make the system speaker
beep either (no error responses or anything, just a blank line like it's
trying to ring the system bell, then a return to bash prompt).  This is
the 2.6 kernel, btw.  So, what could the problem be?  Should we have maybe
enabled console beep when we compiled the kernel or something?  Any other
things I could check/implement to get it working?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
