From: J S <webnews@comcast.net>
Subject: Linux as a router and/or bridge
Date: Thu, 29 May 2003 23:08:32 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1054264112.4715.4.camel@jayhawk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Linux people,

I'm trying to understand how to set up a Linux system as a router.  For
example, assume I have an interface with IP address 192.168.0.1(eth0)
and another with IP address 192.168.1.1(eth1).  What do I need to do to
allow traffic received on one interface to be automatically forwarded
out of the other interface?  To extend the example, assume eth0 receives
a packet from 192.168.0.25 that is destined for 192.168.2.40.  What is
the minimal set of steps I need to perform in order to get my kernel to
send that packet on its way?

Second question, what exactly is network bridging and how might I use it
instead of setting up a Linux system as a router?

Josh

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
