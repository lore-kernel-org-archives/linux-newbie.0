From: Ray Olszewski <ray@comarre.com>
Subject: Re: unable to ping cable provider
Date: Sat, 23 Nov 2002 09:10:24 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021123085232.02126060@celine>
References: <Pine.LNX.4.21.0211231208080.14036-100000@ppg_penguin.linux
 .bogus>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0211231208080.14036-100000@ppg_penguin.linux
 .bogus>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Ken -- You may already have gotten the help you need from John Kelly's 
response. The few details I can add may or may not be helpful.

1. You are being assigned a private-range address (10.b.c.d) by your ISP. 
This means one of two things:

         A. The ISP NAT's these addresses upstream of you.
         B. The ISP assigns these addresses temporarily, until you register 
with the ISP.

I'm guessing that you are in situation B, and you need somehow to register 
your set-top box (or maybe your NIC MAC address) to get a real connection. 
More on that later.

2. That you cannot ping your default gateway may not be significant, since 
ISP's often disable ping responses from their routers. This makes user-end 
troubleshooting harder, but I've never noticed that ISPs are much concerned 
about helping their customers do anything that is not a vanilla connection. 
I'd put this part of the analysis aside for now. (Oh, one question ... is 
the "mybox" that you are pinging *from* the router itself or a LAN 
workstation? If the latter, you won't be able to ping through the router, 
except to its own external interface address, until you install an iptables 
ruleset that NATs the LAN ... just enabling ip_forwarding is not 
sufficient, since outside hosts do not know that your router's external 
interface address is their route to 192.168.0.0/24 . Since I'm not familiar 
with LFS-3.3, specifically how it sets up iptables rulesets, I can't 
suggest details here.)

3. The approach you seem to have arrived at ... put the NIC in a Windows 
box; register the NIC; move the NIC to your Linux router ... is the good, 
conservative approach to making the connection work (assuming you are in 
situation 1B, not 1A). You could also try connecting via your ISP's 
preferred browser (IE, no doubt) running on a NAT'd Windows or Mac host on 
the LAN. If you do this right, the connection should look to the ISP as 
though it were coming from the router's IP and MAC address (unless the ISP 
specifically has anti-NAT stuff in its system, an unlikely possibility ... 
but one that will cause bigger problems than we've considered so far if 
they somehow do it).

At 12:52 PM 11/23/02 +0000, Ken Moffat wrote:
>Hi,
>
>  I've just had a set-top box installed (by NTL) to give me a broadband
>connection, but I'm clearly out of my depth.
>
>My set-up is
>
>+---------------+            +----------------+       +-------------+
>| my net        |  +-----+   | firewall       |       |  NTL        |
>| 192.168.0.x   |--| hub |---| eth0           |       |             |
>| (several)     |  +-----+   | 192.168.0.254  |       |             |
>+---------------+            |================|       |             |
>                              |           eth1 |-------|             |
>                              | e.g.10.64.14.5 |       +-------------+
>                              +----------------+
>
>My own network is working fine - all the boxes talk to each other, using
>/etc/hosts for name lookups. The firewall is running LFS-3.3.
>
>My connection to NTL is using dhcp (I'm running dhclient-3.0pl1). I get
>assigned an address (10.64.14.5 at the moment) when I bring up the
>interface and I can see the lease data in
>/var/state/dhcp/dhclient.leases being updated at intervals. This same
>file shows the router is 10.64.14.1 and the dhcp-server is 10.0.138.70 .
>
>The first stage of making the connection usable is to register with
>NTL. Stuff on google suggests that all http requests are diverted to the
>sign-up server at this point, for a page start.html. I tried to use lynx
>to get this page, but it failed. Examination shows that I cannot ping
>any of the NTL addresses from the firewall. I'm using iptables, so I
>cleared out all the tables and re-enabled ip-forwarding in case the
>firewall script was the problem (I'm guessing this is safe for the
>moment because of the lack of connectivity).
>
>The routing table from netstat -rn shows
>
>Dest          Gateway     Genmask       Flags MSS Window irtt  Iface
>192.168.0.0   0.0.0.0     255.255.255.0 U      40 0       0    eth0
>10.64.14.0    0.0.0.0     255.255.255.0 U      40 0       0    eth1
>0.0.0.0       10.64.14.1  0.0.0.0       UG     40 0       0    eth1
>
>
>If I try to ping 10.64.14.1 (or any other NTL IP)  I get
>root@mybox~# ping -c 2 10.64.14.1
>PING 10.64.14.1 (10.64.14.1): 56 octets data
>
>--- 10.64.14.1 ping statistics ---
>2 packets transmitted, 0 packets received, 100% packet loss
>
>
>If I try to ping 10.64.14.255, only my firewall (10.64.14.5) responds -
>even if I give it a bigger count (on the internal network, only one box
>responds for counts of 1 or 2, but they all respond for counts of 5 or
>more).
>
>I'm hoping this is something fairly obvious. Any suggestions, please ?




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
