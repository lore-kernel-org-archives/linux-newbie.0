From: Ray Olszewski <ray@comarre.com>
Subject: Re: Port 20 blocked. How to unblock
Date: Fri, 12 Jul 2002 07:56:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020712074923.0216d360@celine>
References: <200207120640.g6C6e9b18711@qpbd999.quickpages.net.au>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207120640.g6C6e9b18711@qpbd999.quickpages.net.au>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Phillip Morgan <pmorgan@qpbd999.quickpages.net.au>, linux-newbie@vger.kernel.org

You may have a firewall problem. ftp is one of the "problem" services that 
requires special handling by firewalls, or even use of passive mode only by 
the client. Can you connect to the ftp server from onsite?

For more help. you will need to provide the details of how your site is 
reachable from offsite. Are we ttalking about a NAT'd LAN with port 
forwarding to the ftp server, or a real IP address behind a firewall, or 
what? If you are using a firewalling router, is it Linux based or something 
else (include the details in either case).

I can tell you that the one disagnostic you reported was irrelevant. 
Working ftp servers do not listen on port 20, only on port 21. They use 
port 20 only for data transfer, like the name implies, not for initiating 
sessions. My fully functional (on-LAN) ftp server behaves exactly as you 
describe yours doing for telnets to ports 21 and 20.

At 04:40 PM 7/12/02 +1000, Phillip Morgan wrote:
>Hi All,
>
>When trying to ftp from offsite I can connect to my proftpd-1.2.5
>server but cannot upload or download. I'm told file does not exist or
>no permission, but the files and directories do exist, and I've even
>tried chainging owners and permissions to 777, with no luck.
>
>I tried to telnet to port 21 and found that works, but telnet'ing to
>port 20 (ftp-data), fails (connection refused).
>
>I looked in /etc/services and port 20 is defined (both tcp and udp).
>
>I'm running proftpd-1.2.5 via inetd and tcp wrapper. I'm using the
>wrapper so I can implement the hosts.allow and hosts.deny functions. I
>have nothing in either of these files that blocks ftp or ports 20/21.
>
>So why would a connect to port 20 be refused?



--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
