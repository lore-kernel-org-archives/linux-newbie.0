From: Sanjay Arora <skpobox@yahoo.com>
Subject: Re: Linux Networking problem...please help..
Date: Wed, 16 Jul 2003 05:20:34 -0700 (PDT)
Sender: linux-net-owner@vger.kernel.org
Message-ID: <20030716122034.88944.qmail@web21001.mail.yahoo.com>
References: <3F1332FC.8080903@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <3F1332FC.8080903@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-net@vger.kernel.org
Cc: linux-newbie@vger.kernel.org

Netmask is 255.255.255.0 on all machines.

Point is that the WinXP machine is being given a
redirect by the Linux firewall and that is being
ignored, either due to inability of WinXP or some
misconfiguration by me.

Sanjay.

--- Stephen Samuel <samuel@bcgreen.com> wrote:
> What are the netmasks for the two machines?? If you
> give them a /18
> (or a /16) netmask and the associated broadcast
> addresses, then they'll
> know to just talk directly to each other.
> 
> Of course, I barely trust Windows to understand
> netmasks, but it
> should be OK -- far better than trying to get it to
> accept ICMP
> redirects.
> 
> 
> Sanjay Arora wrote:
> > Network Scenario: RH 8 Linux Firewall Server using
> three ethernet cards, 
> > IPs 172.16.0.141 (connected to Cable Ethernet ISP
> doing NAT), 
> > 192.168.200.1 connected to an ethernet hub, &
> 192.168.100.1 (presently 
> > not being used). Using a hub two lans are
> connected to 192.168.200.1, 
> > each presently having one machine each having IP
> addresses 192.168.200.2 
> > (Windows XP machine, having Gateway address of
> 192.168.200.1 in TCP/IP 
> > settings) and 192.168.250.1 (RH8 Linux Server,
> again having 
> > 192.168.200.1 as GW address).
> > 
> > 1. When I ftp from 192.168.200.2 (WinXP) to
> 192.168.250.1 (RH Linux File 
> > Server), the firewall shows an error message
> saying that WinXP machine 
> > is ignoring redirects to 192.168.250.1 The
> transfer speed is also around 
> > 3.5 MB instead of full 10 MB which I get between
> the two Linux Servers. 
> > What's the reason? What do I do to correct this
> behaviour?
> > 
> > 2. The RH fileserver machine is very
> underutilized. I am thinking of 
> > putting another ethernet card in it and connect is
> to the cable ISP and 
> > Firewall server using a hub. I plan to put a
> firewall on the new 
> > ethernet/IP address denying all outgoing packets
> and put a sniffer on 
> > it. What are the security implications of this?
> Mind the IP that sniffer 
> > is running on is denying all outgoing traffic and
> dropping all incoming 
> > traffic and providing no services at all. On the
> other hand the machine 
> > is inside the firewall.... a compromise here would
> provide direct access 
> > to all local network resources. Is a compromise
> possible on an IP that 
> > denies all traffic inbound and outbound? Should I
> waste one machine for 
> > this task on my proposed small network (less than
> 20 machines)?
> > 
> > With thanks in advance ;-))
> > Sanjay.
> 
> 
> -- 
> Stephen Samuel +1(604)876-0426               
> samuel@bcgreen.com
> 		   http://www.bcgreen.com/~samuel/
>     Powerful committed communication. Transformation
> touching
>         the jewel within each person and bring it to
> life.
> 


__________________________________
Do you Yahoo!?
SBC Yahoo! DSL - Now only $29.95 per month!
http://sbc.yahoo.com
