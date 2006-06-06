From: Learnlinux_2day <learnlinux_2day@yahoo.co.in>
Subject: How to disable telnetd login authentication?
Date: Tue, 6 Jun 2006 05:14:16 +0100 (BST)
Message-ID: <20060606041416.3724.qmail@web8411.mail.in.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Not sure if this is the right list for this sort of a
question..

Is there a way to disable authentication by the
telnetd whenever a client connects. Basically, I need
to setup an open telnet port! Currently, the telnet
client comes up with a login/password prompt, but I
would like to configure the telnetd such that any
telnet attempts/connections are always deemed as
authenticated and automatically presents the client
with a shell prompt.

I am using netkit-telnet-0.17 on a linux-2.6.11.12, on
a custom powerpc build. No PAM is used so far.

-- Shiva


Send instant messages to your online friends http://in.messenger.yahoo.com <br><br> Stay connected with your friends even when away from PC.  Link: http://in.mobile.yahoo.com/new/messenger/  
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
