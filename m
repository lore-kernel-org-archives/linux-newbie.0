From: Ray Olszewski <ray@comarre.com>
Subject: Re: Need some help getting DSL connected in
Date: Sat, 29 Jun 2002 17:56:16 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020629173522.020b0c60@celine>
References: <20020630003017.JIUT6230.mtiwmhc23.worldnet.att.net@alan>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020630003017.JIUT6230.mtiwmhc23.worldnet.att.net@alan>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwomack01@worldnet.att.net>, "Majordomo leben.com" <linux-newbie@vger.kernel.org>

OK. You should be able to do what you want.  But we do need to know quite a 
bit more.

1. Why do you want to use the Linux host this way? If the DSL router itself 
has a /30 netmask on its internal side, that sounds like a DSL modem that 
connects multiple computers without any help. The 192.168.1.1 internal 
value implies that is already offers NAT capabilities to translate these 
private addreses to the public IP addresses your ISP probably uses.

2. If the DSL modem really offers connections to network 192.168.1.0/30, 
then the eth0 address you are using will not work. Address 192.168.0.5 
isn't on that network.

3. Are you using the stock RH 7.2 kernel or did you compile your own? I'm 
afraid I don't recall what kernel shipped with RH 7.2, nor exactly what was 
compiled in and what available a modules (and what not at all). You may 
need to compile a custom kernel to enable IP forwarding and, if you need 
it, IP Masquerading. You will also need the appropriate userspace tools to 
set up the kernel's firewall (probably ipchains and ipmasqadm, if this is a 
2.2.x kernel).

You might want to read the relevant HowTos. From memory, they are Routing 
and Firewalling, both available at www.linuxdoc.org. There are also (I 
think) specific HowTos or mini-HowTos on Advanced Routing, IP Masquerading, 
and maybe Ipchains. All of this would be good background.

Once you feel a bit more up to speed, please don't hesitate to post again. 
The kind of information we need to know is:

1. What IP address does your ISP say should be on the interface that is 
connected to the DSL modem? (It might give you a specific addres, or tell 
you to use DHCP (Windows calls this "Obtain an IP address automatically"), 
or tell you to run a separate piece of Windows software (for a PPPoE 
connection, which requires that a Linux host run a PPPoE client like the 
one from Roaring Penguin.)

2. What kernel are you running? (The output of "uname -a" typically 
provides this info.) Is it stock or custom?

3. What is the output of "more /proc/sys/net/ipv4/ip_forward"? For the 
kernel to route, it needs to return "1", not "0".

4. What is the output of "ipchains -nvL"? To get this, you may need to 
install whatever .rpm package RH supplies ipchains in. (This one assumes a 
2.2.x kernel, BTW.)

5. Do you want the LAN workstations to do anything other than make outgoing 
connections to the Internet? Or do you want any of them to run services 
that are visible on the Internet? If the latter, which services (common 
ones are smtp, http, ssh, and dns)?

6. How do the workstations now get their IP addresses assigned? Once you 
have the Linux host running as a rotuer, you'll need a way to tel them that 
the Linux host's LAN address is their default gateway.

This isn't a complete list, but it should do to get the process started. 
Good luck.

At 05:30 PM 6/29/02 -0700, Alan Womack wrote:
>Windows Internet Connection Sharing is giving me fits getting my DSL 
>shared onto my private home network.
>
>I have 2 network cards in my linux server (redhat 7.2)
>
>Eth0 is set up as 192.168.0.5
>
>Eth1 is set up as 192.168.0.6
>
>My internal network is plugged into Eth1 and I am able to ping all my 
>windows pcs fine.
>
>I want to plug the DSL ethernet connection into Eth0 and have my other 
>machines "route" or use the 192.168.0.5 as the gateway to the internet.
>
>The modem is an Arescom 860 and appears to be permanently set for 
>192.168.1.1 with 255.255.255.252 for the subnet
>
>After this I'm rather lost and don't know what other information to 
>provide to allow someone to assist me.




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
