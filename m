From: RANDAZZO@ddc-web.com
Subject: RE: two Ethernet cards in the same machine with xover cable..... 
	 [bcc]
Date: Thu, 25 Mar 2004 11:06:55 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <89760D3F308BD41183B000508BAFAC4104B17031@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com, linux-newbie@vger.kernel.org


According to the comment for ip_route_input_slow(), IP spoofing are filtered
with 100% of gurantee.  Also, it says that looped back packets must have
correct destination already attached by output routine.

My question is.......

What do I need to do to "set the correct destination in the output routine!"

Regards,
Mike

/*
 *	NOTE. We drop all the packets that has local source
 *	addresses, because every properly looped back packet
 *	must have correct destination already attached by output routine.
 *
 *	Such approach solves two big problems:
 *	1. Not simplex devices are handled properly.
 *	2. IP spoofing attempts are filtered with 100% of guarantee.
 */

int ip_route_input_slow(struct sk_buff *skb, u32 daddr, u32 saddr,
			u8 tos, struct net_device *dev)

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Ray Olszewski
Sent: Wednesday, March 24, 2004 2:21 PM
To: linux-newbie@vger.kernel.org
Subject: RE: two Ethernet cards in the same machine with xover
cable..... [bcc]


At 08:30 AM 3/24/2004 -0500, RANDAZZO@ddc-web.com wrote:
>Ray/Chuck,
>
>Thanks for all your help.  Let me try a new approach, I have been vague on
>the details because I thought my problem was very simple......here is a
>detailed decryption of my problem...
>
>I have developed a network driver for a custom fibre channel card.  Though
>the physical interface is FC, according to Linux, I have selected Ethernet
>for the device classification....
>
>The Fibre channel device is a PCI card with 2 interfaces.
>
>The cabling setup is as follows....
>
>*********************
>*   Box #1 (RH 7.2) *
>*********************
>    * (fc0)       * (fc1)
>    |             |
>    |             |
>    |-------------|
>       fc cable
>
>The ifconfig information is as follows:
>fc0    Link encap:Ethernet  HWaddr xx:xx:xx:xx:xx:xx
>             inet addr: 172.172.16.1  Bcast:172.172.255.255
Mask:255.255.0.0
>             UP BROADCAST RUNNING MULTICAST  MTU:2048 Metric:1
>
>fc1    Link encap:Ethernet  HWaddr yy:yy:yy:yy:yy:yy
>             inet addr: 172.172.17.1  Bcast:172.172.255.255
Mask:255.255.0.0
>             UP BROADCAST RUNNING MULTICAST  MTU:2048 Metric:1
>
>To avoid initial routing problems, I have disabled ARP, by using the
>IFF_NOARP flag.  Since I know the HW Addr of both channels, I temporarily
>set the hw addr to the opposite channel, when a packet asks for it.
>
>then a try to ping...
> > ping -c 1 -I fc0 172.172.17.1
>
>By putting debug messages inside the IP stack and an external network
>analyzer, I notice the following happen in order....
>
>1. Packet is transmitted out fc0
>2. Packet is received physically on fc1
>3. netif_rx is called on fc1
>4. ip_input_route_slow is called on fc1
>5. fib_validate_source is called on fc1
>6. fib_lookup is called on fc1
>7. fib_lookup returns, updated res
>8. res.type is RTN_LOCAL
>9. fib_validate_source returns e_inval_res is
>   res.type != RTN_UNICAST
>
> >From that point on the functions fail all the way back through the
>stack.....it seems that the fib_lookup figures
>out the the destination and source addresses are local, which screws up
>everything....
>
>I know this is related to routing, possibly rules.......
>
>If you need anymore information, let me know..

Is the entry in step 4, possibly, a typo for "ip_route_input_slow" (I can't 
find a function called "ip_input_route_slow")?

All this source is not the easiest stuff to read, but my best guess is that 
you are running into the kernel's anti-spoofing protection. Since 
fib_lookup() identifies the packet's source address as local (RTN_LOCAL), 
it "knows" that it cannot be coming in from what appears to be an external 
source. Hence the source address is spoofed, the packet represents a 
possible attack, and it gets discarded.

If this is the cause of your problem ... and, really, it is only an 
educated guess on my part ... it *might* suffice to turn off anti-spoofing 
in the kernel. I think you do this by cat'ing a 0 to 
/proc/sys/net/ipv4/conf/*/rp_filter (replacing * with an interface name).

All the relevant source for this stuff is in ./linux/net/ipv4 . You might 
find it worth examining more closely than I was willing to for these
purposes.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
 
"This message may contain company proprietary information. If you are not
the intended recipient, any disclosure, copying, distribution or reliance on
the contents of this message is prohibited. If you received this message in
error, please delete and notify me."

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
