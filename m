From: Ray Olszewski <ray@comarre.com>
Subject: Re: router/firewall log interpretation help
Date: Wed, 18 Feb 2004 16:07:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040218155603.02001e20@celine>
References: <Pine.LNX.4.58.0402181323100.1034@debian-emach>
 <Pine.LNX.4.58.0402181323100.1034@debian-emach> <20040218213912.GA7837@sevoog.kriation.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040218213912.GA7837@sevoog.kriation.com>
References: <Pine.LNX.4.58.0402181323100.1034@debian-emach>
 <Pine.LNX.4.58.0402181323100.1034@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

One correction to what Armen wrote.

The example packet he chose is coming FROM port 68, going TO port 67. 68 is 
the DHCP client, 67 the server. So a DHCP client is sending out a broadcast 
packet (the only thing it can do, since it doesn't know the DHCP server's 
IP address ... in some cases, it won't have its own IP address or even know 
the network number) to ask any DHCP server that hears it to offer it a 
lease (an address and related info).

DHCP *servers* often send the replies as broadcast packets too, since they 
are often replying to hosts that do not yet have IP addresses. But they 
don't send out broadcast packets just to hear themselves talk ... only in 
response to a broadcast packet from a client.

The statement that "All machines connected to the same line need to know that
there's a DHCP server running" is the piece that is wrong. Nobody needs to 
know that there is a DHCP server running, as a general matter. A DHCP 
client needs to find a server only when it actually needs to get or renew a 
lease, and it does so by initiating the exchange.

In this case, what you (James) saw was probably a "leaky router" at some 
other site on the ISP's network ... one that let a broadcast packet 
improperly leak over to the ISP site. It tried several times but got no 
responses. There are other things it might be too, none of them your problem.

The simplest place to check port numbers, at least for the common ports, is 
/etc/services . For the less standard ones, there are bigger listings on 
the Web (easy to Google).

At 04:39 PM 2/18/2004 -0500, Armen Kaleshian wrote:
>Good start James!
>
>I've tried to clarify, piece by piece the output log for you below...
>
>: Feb 17 15:08:13 - kernel: IP fw-in deny eth0 UDP 192.168.1.101:68
>: 255.255.255.255:67 L=328 S=0x00 I=391 F=0x0000 T=128
>
>Date
>What did the logging
>What chain the packet came in on
>What the firewall did to the packet
>What interface it came in on
>What protocol
>The source address:source port
>The destination address:destination port
>The length of the packet
>The service descriptor
><Unsure of the rest>
>
>DHCP works by sending out a broadcast packet, because in essence, it's a
>broadcast service. All machines connected to the same line need to know that
>there's a DHCP server running, and when they see the initial DHCP packet, and
>they're set to accept the service, they ask for an IP, and the server send one
>out to that physical address.
>
>Let me know if you need more clarification. There are a ton of resources 
>on the
>web regarding the common log format. Try googling common log format for
>firewalls, and you should get some more information about the above.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
