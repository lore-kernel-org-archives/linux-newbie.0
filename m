From: "John T. Williams" <jtwilliams@vt.edu>
Subject: iptables and logging
Date: 10 Feb 2004 14:24:40 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1076441078.2268.13.camel@Marx.fesnel.no-ip.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I've set up a basic firewall using iptables.  It allows connections from
a block of ip addresses to port 22, and allows connection back from
established,related.  Then everything else gets dropped.  Out of
curriousity mostly, I wanted to log everything that gets dropped, but
iptables logs an overwhelming amount of information.  All I really want
is src ip, des ip, and if its tcp/udp , des port.  I read virtually the
entire man page for iptables and took for other sources, but I can't
figure out any way to limit what is actually logged.  It did mention the
ability to log to user space via netlink socket, using the ULOG option,
but I had no idea what netlink was.  All this is leading to: Does anyone
know any way short of editing the source code to either change the
output format of the information sent to system logger, or perhaps how I
could use 'netlink socket' to extract the information I want and log it
to some other file.  

Thanks
John 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
