From: Glynn Clements <glynn.clements@virgin.net>
Subject: Re: Linux Networking problem...please help..
Date: Mon, 14 Jul 2003 03:41:57 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16146.6261.303652.963557@cerise.nosuchdomain.co.uk>
References: <5.1.1.6.0.20030713233516.00b45080@hotmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20030713233516.00b45080@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sanjay Arora <skpobox@yahoo.com>
Cc: linux-newbie@vger.kernel.org


Sanjay Arora wrote:

> Network Scenario: RH 8 Linux Firewall Server using three ethernet cards, 
> IPs 172.16.0.141 (connected to Cable Ethernet ISP doing NAT), 192.168.200.1 
> connected to an ethernet hub, & 192.168.100.1 (presently not being used). 
> Using a hub two lans are connected to 192.168.200.1, each presently having 
> one machine each having IP addresses 192.168.200.2 (Windows XP machine, 
> having Gateway address of 192.168.200.1 in TCP/IP settings) and 
> 192.168.250.1 (RH8 Linux Server, again having 192.168.200.1 as GW address).

Do all the machines have a /16 netmask (255.255.0.0) for the 192.168.x
addresses?

> 1. When I ftp from 192.168.200.2 (WinXP) to 192.168.250.1 (RH Linux File 
> Server), the firewall shows an error message saying that WinXP machine is 
> ignoring redirects to 192.168.250.1

This suggests that the XP machine has the wrong netmask. If it has a
/24 netmask (255.255.255.0), it will consider 192.168.250.1 to be in a
separate network, and will attempt to send packets via the router.

-- 
Glynn Clements <glynn.clements@virgin.net>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
