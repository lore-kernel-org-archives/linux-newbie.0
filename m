From: Steven Ackerman <steven@nvts.us>
Subject: RH 9.0 and knetfilter installation
Date: 23 May 2003 16:36:26 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1053732984.4479.8.camel@RHServer>
Reply-To: steven@nvts.us
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Greetings list,

I am running RH 9.0 and trying to install knetfilter 3.1.1. I untarred
the file .tar.gz file and then used the command rm config.cache;
../configure in the directory the files were untarred (correct usage?)
to.

When I do that, it goes through checking for a whole host of different
things but stops at the end and says:

Checking for iptables....no
Configure error: No iptables found.

Now it seems obvious to me that iptables is not installed on the
machine. I did a server installation and could swear that I did some
kind of basic firewall installation. That's unimportant. I need to know 
how to install iptables and move on from here. I have the 3 Red Hat 9.0
CD's.Can anyone help?

-Steve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
