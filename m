From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: safety/permissions
Date: Mon, 24 Mar 2003 17:32:26 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <15999.13082.237069.193180@ksys.rug.ac.be>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello all,

I don't know if there were (a lot) of responses to my last mail(s),
since I again did some 'uncareful' things and I lost now and then some
mail. Anyway, for the people who want to know, the problem is solved
now completely. It was something with my fetchmail configuration. I
don't fully understand why it used to work but it didn't work when I
reinstalled Linux Debian, but ok... Here's the solution:

My .fetchmailrc-file looks now like this:
-----
set postmaster "kurt"
set bouncemail
set spambounce
set properties ""
set daemon 500
poll allserv.rug.ac.be with proto IMAP
       user 'ksys' there with password 'xxxx' is 'kurt' here 
       options smtphost 'ksys.rug.ac.be' forcecr ssl fetchall
-----

I had to add the option:
smtphost 'ksys.rug.ac.be'

I guess another config-file, somewhere is /etc is wrong and fetchmail
reads that file if it doesn't find the 'smtphost'-option. Could this
be right?


Anyway,
thanks for your help,
Kurt.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
