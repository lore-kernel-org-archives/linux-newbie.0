From: RANDAZZO@ddc-web.com
Subject: RE: two Ethernet cards in the same machine with xover cable..... 
	[bcc]
Date: Wed, 24 Mar 2004 08:30:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <89760D3F308BD41183B000508BAFAC4104B1702B@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com, linux-newbie@vger.kernel.org

Ray/Chuck,

Thanks for all your help.  Let me try a new approach, I have been vague on
the details because I thought my problem was very simple......here is a
detailed decryption of my problem...

I have developed a network driver for a custom fibre channel card.  Though
the physical interface is FC, according to Linux, I have selected Ethernet
for the device classification....

The Fibre channel device is a PCI card with 2 interfaces.

The cabling setup is as follows....

*********************
*   Box #1 (RH 7.2) *
*********************
   * (fc0)       * (fc1)
   |             |
   |             |
   |-------------|
      fc cable

The ifconfig information is as follows:
fc0    Link encap:Ethernet  HWaddr xx:xx:xx:xx:xx:xx
            inet addr: 172.172.16.1  Bcast:172.172.255.255  Mask:255.255.0.0
            UP BROADCAST RUNNING MULTICAST  MTU:2048 Metric:1

fc1    Link encap:Ethernet  HWaddr yy:yy:yy:yy:yy:yy
            inet addr: 172.172.17.1  Bcast:172.172.255.255  Mask:255.255.0.0
            UP BROADCAST RUNNING MULTICAST  MTU:2048 Metric:1

To avoid initial routing problems, I have disabled ARP, by using the
IFF_NOARP flag.  Since I know the HW Addr of both channels, I temporarily
set the hw addr to the opposite channel, when a packet asks for it.

then a try to ping...
> ping -c 1 -I fc0 172.172.17.1

By putting debug messages inside the IP stack and an external network
analyzer, I notice the following happen in order....

1. Packet is transmitted out fc0
2. Packet is received physically on fc1
3. netif_rx is called on fc1
4. ip_input_route_slow is called on fc1
5. fib_validate_source is called on fc1
6. fib_lookup is called on fc1
7. fib_lookup returns, updated res
8. res.type is RTN_LOCAL
9. fib_validate_source returns e_inval_res is
  res.type != RTN_UNICAST

From that point on the functions fail all the way back through the
stack.....it seems that the fib_lookup figures
out the the destination and source addresses are local, which screws up
everything....

I know this is related to routing, possibly rules.......

If you need anymore information, let me know..

Regards,
Mike







-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Ray Olszewski
Sent: Tuesday, March 23, 2004 9:24 PM
To: linux-newbie@vger.kernel.org
Subject: Re: two Ethernet cards in the same machine with xover
cable..... [bcc]


At 06:38 PM 3/23/2004 -0500, chuck gelm wrote:
>RANDAZZO@ddc-web.com wrote:
>
>>All,
>>
>>This may seem stupidly easy, but please here me out.....
>>
>>I have 2 pro100 nics (using eepro100 driver)
>>
>>currently my setup is..
>>
>>
>>
>>>>ifconfig
>>>>
>>eth0    Link encap:Ethernet  HWaddr xx:xx:xx:xx:xx:xx
>>            inet addr: 172.172.16.1  Bcast:172.172.255.255
Mask:255.255.0.0
>>            UP BROADCAST RUNNING MULTICAST  MTU:1500 Metric:1
>>
>>eth1    Link encap:Ethernet  HWaddr yy:yy:yy:yy:yy:yy
>>            inet addr: 172.172.16.1  Bcast:172.172.255.255
Mask:255.255.0.0
>>            UP BROADCAST RUNNING MULTICAST  MTU:1500 Metric:1
>>
>>These nics are connected with an RJ-45 crossover cable......
>>
>>what do I need to do to get ftp communication between these
devices.........
>Hi, Mike:
>
>You need to put them in different machines and give them different
>IP addresses.
>:-|
>HTH, Chuck

Well, Mike, you see what you get when you keep asking the same question 
over and over, in increasingly vague terms.

Since I remember what your actual, original question was, I suggest you try 
what I suggested back then -- look at the source code for ping 
(specifically for a version of ping that implements the -I flag) and see 
how it does it. I just did that for the stock ping that Debian distributes 
(in netkit-base). It uses the setsockopt() call to assign to its socket an 
a.b.c.d value contained a struct in_addr called ifaddr. This seems to force 
the packets that ping sends to go out the specific interface you specify on 
the command line, rather than following the routing table.

This is *probably* what you need. The source provides what looks to me like 
a good example, and the relevant man pages should fill in the rest.

Oh, Chuck is right, though, that the two interfaces still do need distinct 
IP addresses ... but I assume that part was just a typo in your message.





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
