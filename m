From: "Benny Pedersen" <linux-net@tcob1.net>
Subject: Port 20 blocked. How to unblock
Date: Saturday, 03 Aug 2002 20:02:30 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_110=3a300=2f15_3d4c1bce@fidonet.org>
References: <200207120640.g6C6e9b18711@qpbd999.quickpages.net.au>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207120640.g6C6e9b18711@qpbd999.quickpages.net.au>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: Phillip Morgan

Hello Phillip.

12 Jul 02 16:40, you wrote to all:

 PM> I tried to telnet to port 21 and found that works, but telnet'ing to
 PM> port 20 (ftp-data), fails (connection refused).

fix with using passive ftp, only non passive ftp use port 20

and dont use host.* use proftpd.conf, man proftpd.conf find limith

and make AllowStoreRestart on to enable resume upload, and have AllowStoreRestart off in your anon ftp config

ask if you still need help

 PM> So why would a connect to port 20 be refused?

ask your isp :-)

Benny

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
