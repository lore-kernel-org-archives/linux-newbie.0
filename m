From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux Networking problem...please help..
Date: Sun, 13 Jul 2003 14:52:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030713142935.01ee05f8@celine>
References: <5.1.1.6.0.20030713233516.00b45080@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20030713233516.00b45080@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:11 AM 7/14/2003 +0530, Sanjay Arora wrote:
>Network Scenario: RH 8 Linux Firewall Server using three ethernet cards, 
>IPs 172.16.0.141 (connected to Cable Ethernet ISP doing NAT), 
>192.168.200.1 connected to an ethernet hub, & 192.168.100.1 (presently not 
>being used). Using a hub two lans are connected to 192.168.200.1, each 
>presently having one machine each having IP addresses 192.168.200.2 
>(Windows XP machine, having Gateway address of 192.168.200.1 in TCP/IP 
>settings) and 192.168.250.1 (RH8 Linux Server, again having 192.168.200.1 
>as GW address).
>
>1. When I ftp from 192.168.200.2 (WinXP) to 192.168.250.1 (RH Linux File 
>Server), the firewall shows an error message saying that WinXP machine is 
>ignoring redirects to 192.168.250.1 The transfer speed is also around 3.5 
>MB instead of full 10 MB which I get between the two Linux Servers. What's 
>the reason? What do I do to correct this behaviour?

Hard to say from what you reported. Especially hard because the problems 
both involve an XP system, and my expertise (like most folks here) is in 
Linux. With that warning, I do have a thought.

1. What does the routing table on the WinXP host look like? The redirect 
message *might* mean that it does not know it has a direct (LAN) connection 
to 192.168.250.1, so uses the Linux Firewall (192.168.200.1) as its route 
to 192.168.250.1. The Linux firewall does know that the WinXP host has a 
direct route so sends a redirect message. Ignoring redirects isn't unusual, 
as they are a possible security problem.

2. If the WinXP host is using the Linux Firewall to reach the RH Linux FIle 
Server, then the slower ftp speed is at least approximately explained, 
since each packet has to traverse the LAN twice (once between the XP Host 
and the Firewall, the other between the FIrewall and the RH Linux File 
Server). The difference between 3.5 Mb (I suspect you mean b=bits, not 
B=Bytes, because "full 10 MB" has no real meaning, but "full 10 Mb" would 
mean something with 10 Mbit hardware) and 5 Mb is not remarkable when 
routing is involved.

If all this guesswork is right, then the fix is to modify the routing table 
on the WinXP host so it knows that it has a direct route to whatever 
network 192.168.250.1 is on (and maybe make an analogous change to the RH 
Server's routing table0.

>2. The RH fileserver machine is very underutilized. I am thinking of 
>putting another ethernet card in it and connect is to the cable ISP and 
>Firewall server using a hub. I plan to put a firewall on the new 
>ethernet/IP address denying all outgoing packets and put a sniffer on it. 
>What are the security implications of this? Mind the IP that sniffer is 
>running on is denying all outgoing traffic and dropping all incoming 
>traffic and providing no services at all. On the other hand the machine is 
>inside the firewall.... a compromise here would provide direct access to 
>all local network resources. Is a compromise possible on an IP that denies 
>all traffic inbound and outbound? Should I waste one machine for this task 
>on my proposed small network (less than 20 machines)?

What is your purpose in connecting the RH fileserver to the external side 
of the firewall? Do you *only* want it to act as a sniffer? If so, what you 
describe should be reasonably safe, especially if the "external" interface 
on the machine does not have a public IP address (I don't think a sniffer 
requires one). To be maximally safe with this setup, modify your Ethernet 
cable so the host can only receive packets, not send them, on the 
interface. At that point, your host is as safe as the kenrel itself ... if 
there is a flaw in the iptables code, it could still, just barely 
conceivably, be the basis of an exploit. But the risk seems small, and 
risks can never be reduced to zero with a working system.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
