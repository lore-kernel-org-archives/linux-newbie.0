From: John Kelly <jkelly@ntlworld.com>
Subject: Re: unable to ping cable provider
Date: Sat, 23 Nov 2002 15:02:26 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021123145412.LQUH16799.mta05-svc.ntlworld.com@there>
References: <Pine.LNX.4.21.0211231208080.14036-100000@ppg_penguin.linux.bogus>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0211231208080.14036-100000@ppg_penguin.linux.bogus>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Saturday 23 November 2002 12:52 pm, Ken Moffat wrote:
> Hi,
>
>  I've just had a set-top box installed (by NTL) to give me a broadband
> connection, but I'm clearly out of my depth.
>
> My set-up is
>
> +---------------+            +----------------+       +-------------+
>
> | my net        |  +-----+   | firewall       |       |  NTL        |
> | 192.168.0.x   |--| hub |---| eth0           |       |             |
> | (several)     |  +-----+   | 192.168.0.254  |       |             |
>
> +---------------+            |================|       |             |
>
>                              |           eth1 |-------|             |
>                              | e.g.10.64.14.5 |       +-------------+
>
>                              +----------------+
>

I have an NTL broadband connection and I guess I should know how it works or 
not.. I have a setup similiar to yours but I would advise you to forget about 
iptables and/or NAT and get a standalone box up on NTLs network first. 
Once you have a standalone box working, you can consider your network.
I actually used a windows box 'cos NTL refused to have anything to do with 
Linux.

> My own network is working fine - all the boxes talk to each other, using
> /etc/hosts for name lookups. The firewall is running LFS-3.3.
>
> My connection to NTL is using dhcp (I'm running dhclient-3.0pl1). I get
> assigned an address (10.64.14.5 at the moment) when I bring up the
> interface and I can see the lease data in
> /var/state/dhcp/dhclient.leases being updated at intervals. This same
> file shows the router is 10.64.14.1 and the dhcp-server is 10.0.138.70 .
>

Is the DCHP working correctly? ie what does '/sbin/ifconfig eth1' show?

> The first stage of making the connection usable is to register with
> NTL. Stuff on google suggests that all http requests are diverted to the
> sign-up server at this point, for a page start.html. I tried to use lynx
> to get this page, but it failed. Examination shows that I cannot ping
> any of the NTL addresses from the firewall. I'm using iptables, so I
> cleared out all the tables and re-enabled ip-forwarding in case the
> firewall script was the problem (I'm guessing this is safe for the
> moment because of the lack of connectivity).

When you sign up to NTL broadband, you have to register your cable modem. 
This was my downfall as the server did not seem to like me and It took 2 
months for NTL to fix. 
The google stuff sounds correct. I could only connect to one IP until I was 
registered. My old employer, an ISP had a similiar setup in that people 
dialling in with a singup CD could only access the signup server. 
So there is nothing up usual in not being able to ping any NTL addresses. If 
there is an access list in place for unregistered users then you cannot ping 
anything except what the ACL allows. My NTL default gateway does not respond 
to pings and the signup server is probably configured in the same way. 

The chances are that the NTL signup server is 'optimised' for a specific 
browser. I seem to recall that it had lots of popups and other dancing 
baloney. So that probably explains why lynx does not work. I don't have the 
URL to hand or I could check. 


Hope this helps.

regards,

John Kelly


>
> The routing table from netstat -rn shows
>
> Dest          Gateway     Genmask       Flags MSS Window irtt  Iface
> 192.168.0.0   0.0.0.0     255.255.255.0 U      40 0       0    eth0
> 10.64.14.0    0.0.0.0     255.255.255.0 U      40 0       0    eth1
> 0.0.0.0       10.64.14.1  0.0.0.0       UG     40 0       0    eth1
>
>
> If I try to ping 10.64.14.1 (or any other NTL IP)  I get
> root@mybox~# ping -c 2 10.64.14.1
> PING 10.64.14.1 (10.64.14.1): 56 octets data
>
> --- 10.64.14.1 ping statistics ---
> 2 packets transmitted, 0 packets received, 100% packet loss
>
>
> If I try to ping 10.64.14.255, only my firewall (10.64.14.5) responds -
> even if I give it a bigger count (on the internal network, only one box
> responds for counts of 1 or 2, but they all respond for counts of 5 or
> more).
>
> I'm hoping this is something fairly obvious. Any suggestions, please ?
>
> Ken
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
