From: Ray Olszewski <ray@comarre.com>
Subject: Re: safety/permissions
Date: Fri, 21 Mar 2003 08:50:14 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030321082918.01e81cd0@celine>
References: <15995.13851.863955.666795@ksys.rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <15995.13851.863955.666795@ksys.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Kurt Sys <kurt.sys@rug.ac.be>, linux-newbie@vger.kernel.org

Kurt -- Not to sound like a dullard here, but ... what is your question? I 
only have an imprecise memory of your earlier messages, not actual copies, 
but you were having some sort of problems with your MTA. From this message, 
we know that

A. Your MTA itself is running in daemon mode (since you can send mail 
successfully by telnet'ing to port 25).

B. Your fetchmail configuration is wrong in some unspecified way that, 
presumably, you are aware of.

Things we still don't know are:

A. How are you connected to the Internet? While you can telnet *locally* to 
port 25, can someone from outside do so? I cannot do so from here, though I 
can traceroute to it. This may mean that you are, or your ISP is, blocking 
access to port 25 from offsite (the attempt just hangs; no response, not 
even "Connection refused", hinting at firewalling as the cause.). You need 
to investigate why this is happening before you will be able to receive 
mail directly.

B. If you are still seeing offsite mail sitting in the queue. In this case, 
you should investigate if you can connect *to* port 25 on other hosts 
directly from your system. If your ISP is blocking incoming port-25 
traffic, it **may** also be blocking outgoing port-25 traffic to anyplace 
but its own SMTP relay servers.

C. If your system is already setup to use your ISP's SMTP relay. If so, and 
you are having the problem I described in B, you might investigate whether 
your ISP has any authentication requirements you are not fulfilling. Some 
ISPs use pop-before-smtp authentication, for example. Linux apps can handle 
that, though I forget exactly how ... if that's what you need, post a 
followup saying so, and someone here will help you out with the details.

Depending on where you have been trying to send offsite mail to, it is 
possible that you are running into some other authentication problem. It's 
hard to do more than guess here ... but it is not all that likely, just a 
remote possibility. But one way to test it is to try sending a message 
directly to me. I run my own MTA, and it has no restrictions on it for 
accepting mail to valid addresses **in my domain** (it's not an open relay, 
so please don't misread this message as saying it is one). If you cannot 
send an e-mail directly to me, then you probably have port-25 problems 
(rather than, say, auth/ident proboems).

If your remaining problems are caused by your ISP, then Linux 
troubleshooters won't be able to help you. Your only options are (a) find 
out how your ISP want you to send mail and obey its rules; (b) persuade 
your ISP to change its rules better to match your technical needs; or (c) 
find a new ISP.

At 04:56 PM 3/21/2003 +0100, Kurt Sys wrote:
>Hello again,
>
>OK, I tried to make my 'receiving mail from outside' to work, and I
>lost all my mail that was still on 'the mailserver', due to bad
>fetchmail configuration file. That's way the previous message(s)
>is/are not included in this one. But it's important to mention: telnet
>does work! There was an error in my inetd.conf-file. I restored it,
>and the 'normal telnet-procedure' works:
>
>----
>kurt@kurtpjoeter:~$ telnet 127.0.0.1 25
>Trying 127.0.0.1...
>Connected to 127.0.0.1.
>Escape character is '^]'.
>220 ksys.rug.ac.be ESMTP
>helo dude
>250 ksys.rug.ac.be
>mail <kurt@ksys.rug.ac.be>
>250 ok
>mail <kurt@ksys.rug.ac.be>
>250 ok
>data
>503 RCPT first (#5.5.1)
>rcpt <kurt@ksys.rug.ac.be>
>250 ok
>data
>354 go ahead
>Subject: Just a test
>
>I'm testing...
>.
>250 ok 1048261497 qp 18709
>quit
>221 ksys.rug.ac.be
>Connection closed by foreign host.
>
>kurt@kurtpjoeter:~$ telnet 157.193.192.167 25
>Trying 157.193.192.167...
>Connected to 157.193.192.167.
>Escape character is '^]'.
>220 ksys.rug.ac.be ESMTP
>helo dude
>250 ksys.rug.ac.be
>mail <kurt@ksys.rug.ac.be>
>250 ok
>rcpt <kurt@ksys.rug.ac.be>
>250 ok
>data
>354 go ahead
>Subject: Test2
>
>Testing again
>.
>250 ok 1048261594 qp 1625
>quit
>221 ksys.rug.ac.be
>Connection closed by foreign host.
>kurt@kurtpjoeter:~$
>
>----
>
>I received both messages (on my local machine).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
