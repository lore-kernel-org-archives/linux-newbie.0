From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: safety/permissions
Date: Fri, 21 Mar 2003 16:56:11 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <15995.13851.863955.666795@ksys.rug.ac.be>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello again,

OK, I tried to make my 'receiving mail from outside' to work, and I
lost all my mail that was still on 'the mailserver', due to bad
fetchmail configuration file. That's way the previous message(s)
is/are not included in this one. But it's important to mention: telnet
does work! There was an error in my inetd.conf-file. I restored it,
and the 'normal telnet-procedure' works:

----
kurt@kurtpjoeter:~$ telnet 127.0.0.1 25
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
220 ksys.rug.ac.be ESMTP
helo dude
250 ksys.rug.ac.be
mail <kurt@ksys.rug.ac.be>
250 ok
mail <kurt@ksys.rug.ac.be>
250 ok
data
503 RCPT first (#5.5.1)
rcpt <kurt@ksys.rug.ac.be>
250 ok
data
354 go ahead
Subject: Just a test

I'm testing...
.
250 ok 1048261497 qp 18709
quit
221 ksys.rug.ac.be
Connection closed by foreign host.

kurt@kurtpjoeter:~$ telnet 157.193.192.167 25
Trying 157.193.192.167...
Connected to 157.193.192.167.
Escape character is '^]'.
220 ksys.rug.ac.be ESMTP
helo dude
250 ksys.rug.ac.be
mail <kurt@ksys.rug.ac.be>
250 ok
rcpt <kurt@ksys.rug.ac.be>
250 ok
data
354 go ahead
Subject: Test2

Testing again
.
250 ok 1048261594 qp 1625
quit
221 ksys.rug.ac.be
Connection closed by foreign host.
kurt@kurtpjoeter:~$

----

I received both messages (on my local machine).


Kurt.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
