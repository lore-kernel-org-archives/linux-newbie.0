From: Hal MacArgle <haltec@kvinet.com>
Subject: NFS - uid different??
Date: Wed, 9 Jul 2003 14:50:42 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030709145042.A276@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Been using NFS for years with little problems until I
discovered one client machine that has different uid's than the
server.. No matter how much I read or try I can't figure out how to
work with files on the client with, typically, uid 1001 for user
haltec and the server with user haltec uid 1000.. If the user/uid
matches on each machine - no problem of course..

I've tried the anon stuff till blue in the face but every time I copy
a file from the server that has the correct owner it ends up on the
client with the owner matching the different uid... So far I've been
chown'ing on the client, which seems to work OK, but there must be a
better way - somehow, because every owner in the entire directory
tree has to be changed..

There must be a file that maps the user to the uid.. /etc/passwd
lists them of course, but editing it doesn't solve the problem and
creates _many_ others.. :^(..

I have the Linux Network Administrators Guide, but it mentions files
that are missing from Slackware 8.0/9.0.. No real help there..

If the above makes sense, is there anyone accomplishing what I want
to do?? TIA,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
