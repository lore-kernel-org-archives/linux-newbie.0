From: RANDAZZO@ddc-web.com
Subject: connecting two nics....
Date: Tue, 9 Mar 2004 15:38:38 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <89760D3F308BD41183B000508BAFAC4104B16FE0@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Any help on this.........

Mike

Question Title: How do I connect two NICs in the same machine to be on one
network
Author: mrandazzo
Points: 125
Date: 03/08/2004 09:54AM PST
 

Here is my ifconfig output.......remember I want to get lcl_eth_0 to talk to
lcl_eth_1.

lcl_eth_0
inet addr: 100.100.1.1 Mask: 255.255.255.0
lcl_eth_1
inet addr: 100.100.2.1 Mask: 255.255.255.0
eth0
inet addr: 172.16.18.186 Mask: 255.255.248.0
lo
inet addr: 127.0.0.1 Mask: 255.0.0.0

First, I remove the following route entries that were automatically put in
by ifconfig.
dest             genmask           iface
100.100.2.0  255.255.255.0   lcl_eth_1
100.100.1.0  255.255.255.0   lcl_eth_0

After that I ping one of them.....
ping 100.100.2.1
I observe that these pings are going to the lo interface....

I add the following routes.....
dest             genmask           iface
100.100.2.1  255.255.255.255   lcl_eth_0
100.100.1.1  255.255.255.255   lcl_eth_1

I ping one of them again....
ping 100.100.2.1
I observe that these pings are STILL!!! going to the lo interface....

I uninstall the lo interface...
ifconfig lo down...

I ping one of them again....
ping 100.100.2.1
I observe that these ping just stalls....

Why isnt a ping to 100.100.2.1 going out the lcl_eth_0 interface?

Regards,
Mike

 Comment from jlevie
Date: 03/08/2004 03:45PM PST
 Comment   


I'm a bit confused as to what you are trying to accomplish. The question
title is asking "How do I connect two NICs in the same machine to be on one
network", but data in the question only shows two interfaces (lo and eth0).
Two NIC's would imply that you'd have eth0 and eth1 since the loopback
interface isn't really a NIC.
 
Comment from concept9
Date: 03/08/2004 04:13PM PST
 Comment   


I agree with jlevie, and have an additional question.....where did you get
the names lcl_eth0 and lcl_eth1?

Try this, type 'ifconfig' and 'route' and post the output of each
 
Comment from mrandazzo
Date: 03/09/2004 05:18AM PST
 Your Comment  


The names that are listed in ifconfig (eth0,lo,lcl_eth0,lcl_eth1) are
configurable by editiing the /etc/modules.conf

If the names are confusing you, change the name of lcl_eth0 to eth1 and
change the name of lcl_eth1 to eth2

so I have THREE NICS (eth0, eth1, eth2) in the system...

eth0 is talking to my cable modem.

I want eth1 and eth2 to talk to each other (and only each other) (there is a
cable from eth1 to eth2).

Does this help?
 
Comment from jlevie
Date: 03/09/2004 06:13AM PST
 Comment   


I don't see how you are going to do that. If you place both NIC's on the
same network the kernel will use the "best path" for traffic to/from that
network, which will be the first interface configured. If you place each on
a different network there won't be a router in between and there'll be no
path to the second NIC. A futher complication is that the kernel will short
circuit packets that would never leave the machine because the target IP's
are on an interface attached to the machine, which is why you saw the pings
going to the loopback interface.

Why do you want to set this up? If we know the goal we may be able to
suggest an alternative.
 
Comment from mrandazzo
Date: 03/09/2004 07:01AM PST
 Your Comment  


Here is the goal....

My company sells a 2-port NIC (configured as eth1 and eth2).  The interface
is a custom optical connector. Usually, customers buy one card to test it
out.  Since the connector is custom, they can only connect CH_A (eth1) to
CH_B (eth2).  Because they want to see traffic across the wire, I need this
scenario....

... short circuit packets that would never leave the machine because the
target IP's are on an interface attached to the machine, which is why you
saw the pings going to the loopback interface.....

The above is my major problem......how can disable the short circuit so that
they dont go out the loopback, but rather follow the proper route?

Mike
 
 
 
"This message may contain company proprietary information. If you are not
the intended recipient, any disclosure, copying, distribution or reliance on
the contents of this message is prohibited. If you received this message in
error, please delete and notify me."

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
