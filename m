From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Need some help getting DSL connected in
Date: Mon, 01 Jul 2002 18:39:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D20DA1E.FFA66A14@gelm.net>
References: <CPIMSSMTPU08LV5dlR100000655@cpimssmtpu08.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Womack <arwomack01@worldnet.att.net>
Cc: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

Howdy, Y'all:

Add another ethernet card to one of the 4 computers on the hub.
 and it can be your 'server/router/firewall'.
Have the 'server/router/firewall' route from 192.168.0.x<>192.168.1.x.
This doesn't consume additional ports on your hub.

telephone-line -> DSL -> eth0-server/router/firewall-eth1 -> hub.
                          ^
 ipchains -A input -l -i eth0 -d 0.0.0.0 80 -p tcp -j ACCEPT

HTH, Chuck


Alan Womack wrote:
> 
> It's not actually a DSL router, but just a DSL modem capable of being hooked to ethernet directly.  My current hub only has 4 ports, and all 4 are in use before the modem arrived.  The modem does indeed to nat and uses PPPoA encapsulation for it's VPN portion from my system to MSN via qwest.
> 
>  >>  1. Why do you want to use the Linux host this way? If the DSL router
>  >>  itself
>  >>  has a /30 netmask on its internal side, that sounds like a DSL modem that
>  >>  connects multiple computers without any help. The 192.168.1.1 internal
>  >>  value implies that is already offers NAT capabilities to translate these
>  >>  private addreses to the public IP addresses your ISP probably uses.
> 
> The modem does a DHCP for the ethernet card it is connected to, assigning it 192.168.1.2
> Should I permanently assign that address to the eth0 interface or leave it as DHCP assigned?
> 
>  >>  2. If the DSL modem really offers connections to network 192.168.1.0/30,
>  >>  then the eth0 address you are using will not work. Address 192.168.0.5
>  >>  isn't on that network.
> 
> My kernal is stock redhat 7.2.  I have ipforwarding in the kernal is my assumption because I have ipchains and iptables as installed components also.
> 
>  >>  3. Are you using the stock RH 7.2 kernel or did you compile your own? I'm
>  >>  afraid I don't recall what kernel shipped with RH 7.2, nor exactly what
>  >>  was
>  >>  compiled in and what available a modules (and what not at all). You may
>  >>  need to compile a custom kernel to enable IP forwarding and, if you need
>  >>  it, IP Masquerading. You will also need the appropriate userspace tools to
>  >>
>  >>  set up the kernel's firewall (probably ipchains and ipmasqadm, if this is
>  >>  a
>  >>  2.2.x kernel).
> 
> Was working my may down one of those last couple of days, but they loose me terribly.
> 
>  >>  You might want to read the relevant HowTos. From memory, they are Routing
>  >>  and Firewalling, both available at www.linuxdoc.org. There are also (I
>  >>  think) specific HowTos or mini-HowTos on Advanced Routing, IP
>  >>  Masquerading,
>  >>  and maybe Ipchains. All of this would be good background.
> 
>  >>  Once you feel a bit more up to speed, please don't hesitate to post again.
>  >>
>  >>  The kind of information we need to know is:
> 
> DHCP but it is assigned 192.168.1.2
> 
>  >>  1. What IP address does your ISP say should be on the interface that is
>  >>  connected to the DSL modem? (It might give you a specific addres, or tell
>  >>  you to use DHCP (Windows calls this "Obtain an IP address automatically"),
>  >>
>  >>  or tell you to run a separate piece of Windows software (for a PPPoE
>  >>  connection, which requires that a Linux host run a PPPoE client like the
>  >>  one from Roaring Penguin.)
> 
> Stock, Linux Webby.Family 2.4.7-10 #1 Thu Sep 6 17:27:27 EDT 2001 i686 unknown
> 
>  >>  2. What kernel are you running? (The output of "uname -a" typically
>  >>  provides this info.) Is it stock or custom?
> 
> [root@Webby pam.d]# more /proc/sys/net/ipv4/ip_forward
> 0
> 
>  >>  3. What is the output of "more /proc/sys/net/ipv4/ip_forward"? For the
>  >>  kernel to route, it needs to return "1", not "0".
> 
> I use iptables:
> 
> [root@Webby pam.d]# /sbin/iptables -nvL
> Chain INPUT (policy ACCEPT 508K packets, 60M bytes)
>  pkts bytes target     prot opt in     out     source               destination
> Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
>  pkts bytes target     prot opt in     out     source               destination
> Chain OUTPUT (policy ACCEPT 441K packets, 46M bytes)
>  pkts bytes target     prot opt in     out     source               destination
> 
>  >>  4. What is the output of "ipchains -nvL"? To get this, you may need to
>  >>  install whatever .rpm package RH supplies ipchains in. (This one assumes a
>  >>
>  >>  2.2.x kernel, BTW.)
> 
> only one I want to actually serve the web is the linux server, I will be running misterhouse and some other services on it someday soon.
> 
>  >>  5. Do you want the LAN workstations to do anything other than make
>  >>  outgoing
>  >>  connections to the Internet? Or do you want any of them to run services
>  >>  that are visible on the Internet? If the latter, which services (common
>  >>  ones are smtp, http, ssh, and dns)?
> 
> I have statically assigned them, they are currently all 192.168.0.x addresses because I was using a dialip modem and microsoft internet connection sharing.
> 
>  >>  6. How do the workstations now get their IP addresses assigned? Once you
>  >>  have the Linux host running as a rotuer, you'll need a way to tel them
>  >>  that
>  >>  the Linux host's LAN address is their default gateway.
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
