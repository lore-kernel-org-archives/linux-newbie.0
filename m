From: Ray Olszewski <ray@comarre.com>
Subject: Re: Securing my box
Date: Fri, 15 Nov 2002 09:45:51 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021115093714.02132e20@celine>
References: <200211150619.49278.1stflight@ameritech.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211150619.49278.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux newbie <linux-newbie@vger.kernel.org>

At 06:19 AM 11/15/02 -0500, 1stFlight wrote:
>I recently had a friend port scan me as a test of my ip_tables based firewall
>And like I wanted he discovered there were no ports open. However if I do a
>"netstat -a | grep LISTEN" I see
>
>tcp        0      0 localhost.localdom:1024 *:*                     LISTEN
>tcp        0      0 *:printer               *:*                     LISTEN
>tcp        0      0 *:sunrpc                *:*                     LISTEN
>tcp        0      0 *:x11                   *:*                     LISTEN
>tcp        0      0 *:ssh                   *:*                     LISTEN
>
>
>What's going on here? Did I mess up my config? Thanks!

What's "going on here" is that you have applications on the host that are 
listening on those ports for incoming traffic. Offhand I can't say for sure 
what, but probably you are running lpd, sshd, the portmapper (say for NFS 
mounts) and XFree86 (I don't even have a guess for the 1024 entry).

 From what your friend found in his portscan, you have firewalling software 
running somewhere between him and you that blocks his access to these same 
ports. If the " ip_tables based firewall" is software (more accurately, 
kernel configuration) running on this same host, -AND- it has only a single 
network interface, then running the apps that listen on these ports may be 
pointless (or not; X11 and lpd are surely providing local services as 
well). Except for the memory they use, running them is harmless. And if you 
have multiple interfaces (for example, a dial-up PPP connection and a NIC 
connecting you to a LAN), the firewall *might* be blocking access from the 
Internet while permitting it from the LAN ... that's one of the things 
firewalls do, after all.

So ... bottom line ... whether you "messed up" your config depends on 
undescribed details of your overall setup, and your intent.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
