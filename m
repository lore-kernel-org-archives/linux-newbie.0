From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: unable to ping cable provider
Date: Sat, 23 Nov 2002 12:52:25 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0211231208080.14036-100000@ppg_penguin.linux.bogus>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

 I've just had a set-top box installed (by NTL) to give me a broadband
connection, but I'm clearly out of my depth.

My set-up is

+---------------+            +----------------+       +-------------+
| my net        |  +-----+   | firewall       |       |  NTL        |
| 192.168.0.x   |--| hub |---| eth0           |       |             |
| (several)     |  +-----+   | 192.168.0.254  |       |             |
+---------------+            |================|       |             |
                             |           eth1 |-------|             |
                             | e.g.10.64.14.5 |       +-------------+
                             +----------------+

My own network is working fine - all the boxes talk to each other, using
/etc/hosts for name lookups. The firewall is running LFS-3.3.

My connection to NTL is using dhcp (I'm running dhclient-3.0pl1). I get
assigned an address (10.64.14.5 at the moment) when I bring up the
interface and I can see the lease data in
/var/state/dhcp/dhclient.leases being updated at intervals. This same
file shows the router is 10.64.14.1 and the dhcp-server is 10.0.138.70 .

The first stage of making the connection usable is to register with
NTL. Stuff on google suggests that all http requests are diverted to the
sign-up server at this point, for a page start.html. I tried to use lynx
to get this page, but it failed. Examination shows that I cannot ping
any of the NTL addresses from the firewall. I'm using iptables, so I
cleared out all the tables and re-enabled ip-forwarding in case the
firewall script was the problem (I'm guessing this is safe for the
moment because of the lack of connectivity).

The routing table from netstat -rn shows

Dest          Gateway     Genmask       Flags MSS Window irtt  Iface
192.168.0.0   0.0.0.0     255.255.255.0 U      40 0       0    eth0
10.64.14.0    0.0.0.0     255.255.255.0 U      40 0       0    eth1
0.0.0.0       10.64.14.1  0.0.0.0       UG     40 0       0    eth1


If I try to ping 10.64.14.1 (or any other NTL IP)  I get
root@mybox~# ping -c 2 10.64.14.1
PING 10.64.14.1 (10.64.14.1): 56 octets data

--- 10.64.14.1 ping statistics ---
2 packets transmitted, 0 packets received, 100% packet loss


If I try to ping 10.64.14.255, only my firewall (10.64.14.5) responds -
even if I give it a bigger count (on the internal network, only one box
responds for counts of 1 or 2, but they all respond for counts of 5 or
more).

I'm hoping this is something fairly obvious. Any suggestions, please ?

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
