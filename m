From: "Little, John" <JOHN.LITTLE@okdhs.org>
Subject: RE: Telnet
Date: Thu, 23 May 2002 09:24:15 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <E7B0663E34409F45B77EFDB62AE0E4D202236238@s99mail02.okdhs.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "'cr@orcon.net.nz'" <cr@orcon.net.nz>
Cc: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

telnet is a terminal communications program.  used to open a terminal
session on a remote system.  telnet is a command you can use on the
commandline

ie :
[u51847@penguin u51847]$ telnet kidst500

kidst500 is a system on our local network that supports telnet sessions.
You usually have to have a userid unless the remote system supports
anonymous sessions.  Normally you wouldn't want to telnet to
www.something.com because that is a webserver.  However you can try this
"telnet www.something.com 80" that tells the telnet software to use port 80.
You can see what a http session looks like.

One caveat is that telnet is insecure.  It passes userids and passwords as
plaintext.  If you are looking for security, use ssh.

Also, try out your man pages ie:

[u51847@penguin u51847]$ man telnet
-----Original Message-----
From: cr [mailto:cr@orcon.net.nz]
Sent: Thursday, May 23, 2002 8:02 AM
To: linux-newbie@vger.kernel.org
Subject: Telnet


This probably sounds ridiculous to you all, but what's Telnet (as in "Telnet

to www.goodstuff.org")   and what application (in Gnome or KDE?) could I use

to do it?    I've used browsers/ftp/mailreaders/newsgroups but so far as I 
know  never 'telnetted'.   

chris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
