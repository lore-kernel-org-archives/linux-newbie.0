From: Armen Kaleshian <akaleshian@kriation.com>
Subject: Re: router/firewall log interpretation help
Date: Wed, 18 Feb 2004 16:39:12 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040218213912.GA7837@sevoog.kriation.com>
References: <Pine.LNX.4.58.0402181323100.1034@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.58.0402181323100.1034@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

Good start James!

I've tried to clarify, piece by piece the output log for you below...

: Feb 17 15:08:13 - kernel: IP fw-in deny eth0 UDP 192.168.1.101:68
: 255.255.255.255:67 L=328 S=0x00 I=391 F=0x0000 T=128

Date
What did the logging
What chain the packet came in on
What the firewall did to the packet
What interface it came in on
What protocol
The source address:source port
The destination address:destination port
The length of the packet
The service descriptor
<Unsure of the rest>

DHCP works by sending out a broadcast packet, because in essence, it's a
broadcast service. All machines connected to the same line need to know that
there's a DHCP server running, and when they see the initial DHCP packet, and
they're set to accept the service, they ask for an IP, and the server send one
out to that physical address.

Let me know if you need more clarification. There are a ton of resources on the
web regarding the common log format. Try googling common log format for
firewalls, and you should get some more information about the above.

--Armen

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
