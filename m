From: "Phillip Morgan" <pmorgan@qpbd999.quickpages.net.au>
Subject: Port 20 blocked. How to unblock
Date: Fri, 12 Jul 2002 16:40:09 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207120640.g6C6e9b18711@qpbd999.quickpages.net.au>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi All,

When trying to ftp from offsite I can connect to my proftpd-1.2.5 
server but cannot upload or download. I'm told file does not exist or 
no permission, but the files and directories do exist, and I've even 
tried chainging owners and permissions to 777, with no luck.

I tried to telnet to port 21 and found that works, but telnet'ing to 
port 20 (ftp-data), fails (connection refused).

I looked in /etc/services and port 20 is defined (both tcp and udp).

I'm running proftpd-1.2.5 via inetd and tcp wrapper. I'm using the 
wrapper so I can implement the hosts.allow and hosts.deny functions. I 
have nothing in either of these files that blocks ftp or ports 20/21.

So why would a connect to port 20 be refused?

TIA
-- 
Quickpages Technical Support
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
