From: Ray Olszewski <ray@comarre.com>
Subject: Re: Getting the MAC address of a client
Date: Thu, 10 Oct 2002 11:51:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021010113915.020b27b0@celine>
References: <20021010175605.19028.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021010175605.19028.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechin@mail.com>
Cc: linux-newbie@vger.kernel.org

At 12:56 PM 10/10/02 -0500, Lee Chin wrote:
>Hello,
>When my server application accepts a client socket connection, what is the 
>easiest way to obtain the MAC address of the peer?  I tried listing the 
>ARP table but I did not see an entry for the IP address and MAC address of 
>the client.
>I want to avoid having to ping the client to get the ARP table populated

The answer to your question depends on am omitted detail.

If the "peer" IS on the same Ethernet as the server, its MAC address should 
be in the arp table once any packets have been exchanged between server and 
client. The only exception would be a server so active that it had to flush 
the arp table to make room for newer entries between the time it accepted 
the last packet and the time you checked the arp table. If it is not 
showing up, then you'll have to give us more details if we are to figure 
out why.

If the "peer" is NOT on the same Ethernet as the server, there is no way 
(other than doing something in the application layer) to get its MAC 
address. MAC addresses are associated with the link layer (in this 
instance, the Ethernet frame), so do not cross routers (which operate at 
the network layer, in this instance, the IP datagram). In this case, just 
to be clear, ping'ing won't solve the problem.

There is one other, intermediate case that I know of. If your "peer" is 
connected to the server through a LAN that proxy-arps its IP address, the 
server's arp table should include an entry that associates the IP address 
with the router's IP address. I doubt this applies to your case, but I 
mention it just for completeness' sake. There may be other rare cases 
similar to this one.


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
