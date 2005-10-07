From: Ray Olszewski <ray@comarre.com>
Subject: Re: Netconfig Fail
Date: Thu, 06 Oct 2005 22:49:48 -0700
Message-ID: <43460C7C.6050000@comarre.com>
References: <20051006091512.7dd839e8.heisspf@skyinet.net>	<4344D330.2050005@comarre.com> <20051007122344.3780b5c0.heisspf@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051007122344.3780b5c0.heisspf@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

OK, Peter. Thanks for the added detail. I see one interesting thing.

Peter wrote:
[...]
>  broadcasting DHCP_REQUEST for 192.169.231.250 
> Oct  7 07:58:11 Peter dhcpcd[2293]: timed out waiting for DHCP_ACK response 
> Oct  7 07:58:11 Peter dhcpcd[2293]: broadcasting DHCP_DISCOVER
> 
> whereas when I still could connect with onboard LAN card:
> 
>  DHCP_ACK received from  (192.169.224.1) 
> Oct  2 12:17:51 localhost dhcpcd[104]: sending DHCP_REQUEST for 192.169.232.12
> to 192.169.224.1 

In the first entry, Slackware's dhcpcd is asking any DHCP server to 
assign to it IP address 192.169.231.250. In principle this is OK; 
normally, it would mean that the system has previously received this 
address assignment and wants to get the same address again. (My LAN 
machines, the ones on DHCP that is, do this same thing when they renew 
addresses.) When it gets no response, it then asks (the DHCP_DISCOVER) 
for any DHCP server to respond as available to give *any* addresses. You 
don't quote what happens next, but I'm guessing it's another "timed out 
waiting" message ... maybe several, since DHCP clients are normally very 
persistent in looking for servers.

But the second (on-mobo NIC) part of the report identifies a *different* 
DHCP server as the one it is getting an acknowledgment from. (Am I 
correct in assuming this is also from a Slackware log, BTW?)

To figure out what is going on, you want to look at other stuff that is 
near these messages but that you didn't quote to us in your reply.

In the on-mobo-NIC case, look before what you sent us to see if the DHCP 
  client there is sending DHCP_REQUEST to 192.169.224.1 or if the 
DHCP_ACK here is a response to a DHCP_DISCOVER.

In the PCI-NIC case, first check the timestamp you left off the first 
(DHCP_REQUEST) message to see if it is far enough before 07:58:11 to 
observe the time lag you see. Then see if anything is logged in response 
to the DHCP_DISCOVER message that dhcpcd sends out.

Then check for corresponding log entries in the Fedora and DSL runs, to 
see how they are actually finding their DHCP servers.

Then, using some version of your setup that gets an IP address, find out 
if the DHCP server Slackware wants to use is ping'able.

The core of your problem is that in the Slackware case, you don't get a 
response to a DHCP_DISCOVER message ... which would be a DHCP server 
identifying itself to you as a source of address assignments.

Why this happens depends in part on what you find when you check the 
things I mention above.

One other thing. You wrote:

> nd in fedora4 w/o -a flag. Note the second line missing in slack.
> 
> eth1      Link encap:Ethernet  HWaddr 00:08:A1:8C:44:5A  
>           inet addr:192.169.232.15  Bcast:192.169.255.255  Mask:255.255.224.0
>           inet6 addr: fe80::208:a1ff:fe8c:445a/64 Scope:Link
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:145 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:136 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000 
>           RX bytes:26493 (25.8 KiB)  TX bytes:11880 (11.6 KiB)
>           Interrupt:10 Base address:0xec00

What is interesting to me is not that the second line is present (it is 
what I would expect, the difference between a configured and an 
unconfigured interface), but that Fedora thinks your pci NIC is eth1, 
not eth0. Does that version have an eth0 (it must; use the -a flag to 
find out about it)? What is it? Can we see its ifconfig -a report?

I really don't know what this difference means, but it does make me 
doubt whether the two cases (Fedora and Slack) are really the same in 
*all* respects other than the choice of distro.

Oh yes, last thing. In Slackware, you report:

> This is in slackware
>  /sbin/ifconfig -a
> eth0      Link encap:Ethernet  HWaddr 00:08:A1:8C:44:5A  
>           BROADCAST MULTICAST  MTU:1500  Metric:1
>           RX packets:12 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000 
>           RX bytes:1896 (1.8 Kb)  TX bytes:4720 (4.6 Kb)
>           Interrupt:10 Base address:0xec00 

Note there are RX packets and bytes, so the system is receiving 
something, on a guess some response to its broadcast packets. In the 
worst case, run a sniffer (ethereal, tcpdump) on the system while trying 
to get a DHCP assignment.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
