From: Ray Olszewski <ray@comarre.com>
Subject: Re: connecting two nics....
Date: Tue, 09 Mar 2004 14:13:53 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040309134701.01febea0@celine>
References: <89760D3F308BD41183B000508BAFAC4104B16FE0@DDCNYNTD>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <89760D3F308BD41183B000508BAFAC4104B16FE0@DDCNYNTD>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:38 PM 3/9/2004 -0500, RANDAZZO@ddc-web.com wrote:

>Any help on this.........
>
>Mike
>
>Question Title: How do I connect two NICs in the same machine to be on one
>network
>Author: mrandazzo
>Points: 125
>Date: 03/08/2004 09:54AM PST

The question title is misleading. The answer to it is easy; you just do it. 
The details depend on what you mean by "network". You can connect both to 
the same switch, no matter their IP addresses. You can give them different 
addresses on the same IP network. These are the two likely meanings of 
"network" in this setting.

Note, by the way, that in your example below, you do not put the 2 NICs on 
the same IP network. Instead, they are on separate (adjacent) /24 networks 
-- 100.100.1.0/24 and 100.100.2.0/24 respectively. Unless you also 
specified a route between these two networks, the 2 NICs will never be able 
to communicate with each other, not even if you solve the interface problem.

That said ... what you actually want to do is to be able to force an 
application to use a particular interface when seeking a route to a 
destination. For example, when pinging 100.100.1.1, you want to force ping 
to use lcl_eth_1 (100.100.2.1)  when sending packets out.

Depending on the specific version of ping you have, you *may* be able to do 
this with the command

         ping -I 100.100.2.1 100.100.1.1

(My man page for ping does not list the -I switch, but "ping -h" returns it 
as an option, and it works here ... though I can't test the specific use 
you are trying for.) If you have a version of ping too old to support this 
option, you might consider one of several ping replacements, such as 
ping-netcat, sing, or arping, to see if any of them have an Interface option.

Of course, to make this work, you do want the 2 NICs on the same IP 
network. Try using addresses

         192.168.100.1/24
         192.168.100.2/24

or something similar. Otherwise, you should get a "no route to host" response.

Final comment: your message ends with some boilerplate that begins: "This 
message may contain company proprietary information." It better not. I 
assume that any information provided on this list is public information; if 
your company feels different about e-mail sent to public, archived mailing 
lists, it needs to talk over its e-mail practices with its lawyers. I 
intend to disregard that closing blather. (Yes, I know it's just something 
the company adds to your messages, not you personally. I don't care. It's 
still inappropriate for a posting to a public forum. Lawyers add these 
things because they believe they are enforcable in some ways, so they do 
matter and should not be ignored.)

If you do post a  followup, please include relevent technical details, such as
         unedited output of "ifconfig -a"
         unedited output of "netstat -nr"
         *how* you "observe that these pings are STILL!!! going to the lo 
interface" (rather than directly to the matching lcl_eth_* interface).

(You provide fragmentary interface and routing table below, but the routing 
table especially has meaning only as a whole.)


>Here is my ifconfig output.......remember I want to get lcl_eth_0 to talk to
>lcl_eth_1.
>
>lcl_eth_0
>inet addr: 100.100.1.1 Mask: 255.255.255.0
>lcl_eth_1
>inet addr: 100.100.2.1 Mask: 255.255.255.0
>eth0
>inet addr: 172.16.18.186 Mask: 255.255.248.0
>lo
>inet addr: 127.0.0.1 Mask: 255.0.0.0
>
>First, I remove the following route entries that were automatically put in
>by ifconfig.
>dest             genmask           iface
>100.100.2.0  255.255.255.0   lcl_eth_1
>100.100.1.0  255.255.255.0   lcl_eth_0
>
>After that I ping one of them.....
>ping 100.100.2.1
>I observe that these pings are going to the lo interface....
>
>I add the following routes.....
>dest             genmask           iface
>100.100.2.1  255.255.255.255   lcl_eth_0
>100.100.1.1  255.255.255.255   lcl_eth_1
>
>I ping one of them again....
>ping 100.100.2.1
>I observe that these pings are STILL!!! going to the lo interface....
>
>I uninstall the lo interface...
>ifconfig lo down...
>
>I ping one of them again....
>ping 100.100.2.1
>I observe that these ping just stalls....
>
>Why isnt a ping to 100.100.2.1 going out the lcl_eth_0 interface?
>
>Regards,
>Mike
>
>  Comment from jlevie
>Date: 03/08/2004 03:45PM PST
>  Comment
>
>
>I'm a bit confused as to what you are trying to accomplish. The question
>title is asking "How do I connect two NICs in the same machine to be on one
>network", but data in the question only shows two interfaces (lo and eth0).
>Two NIC's would imply that you'd have eth0 and eth1 since the loopback
>interface isn't really a NIC.
>
>Comment from concept9
>Date: 03/08/2004 04:13PM PST
>  Comment
>
>
>I agree with jlevie, and have an additional question.....where did you get
>the names lcl_eth0 and lcl_eth1?
>
>Try this, type 'ifconfig' and 'route' and post the output of each
>
>Comment from mrandazzo
>Date: 03/09/2004 05:18AM PST
>  Your Comment
>
>
>The names that are listed in ifconfig (eth0,lo,lcl_eth0,lcl_eth1) are
>configurable by editiing the /etc/modules.conf
>
>If the names are confusing you, change the name of lcl_eth0 to eth1 and
>change the name of lcl_eth1 to eth2
>
>so I have THREE NICS (eth0, eth1, eth2) in the system...
>
>eth0 is talking to my cable modem.
>
>I want eth1 and eth2 to talk to each other (and only each other) (there is a
>cable from eth1 to eth2).
>
>Does this help?
>
>Comment from jlevie
>Date: 03/09/2004 06:13AM PST
>  Comment
>
>
>I don't see how you are going to do that. If you place both NIC's on the
>same network the kernel will use the "best path" for traffic to/from that
>network, which will be the first interface configured. If you place each on
>a different network there won't be a router in between and there'll be no
>path to the second NIC. A futher complication is that the kernel will short
>circuit packets that would never leave the machine because the target IP's
>are on an interface attached to the machine, which is why you saw the pings
>going to the loopback interface.
>
>Why do you want to set this up? If we know the goal we may be able to
>suggest an alternative.
>
>Comment from mrandazzo
>Date: 03/09/2004 07:01AM PST
>  Your Comment
>
>
>Here is the goal....
>
>My company sells a 2-port NIC (configured as eth1 and eth2).  The interface
>is a custom optical connector. Usually, customers buy one card to test it
>out.  Since the connector is custom, they can only connect CH_A (eth1) to
>CH_B (eth2).  Because they want to see traffic across the wire, I need this
>scenario....
>
>... short circuit packets that would never leave the machine because the
>target IP's are on an interface attached to the machine, which is why you
>saw the pings going to the loopback interface.....
>
>The above is my major problem......how can disable the short circuit so that
>they dont go out the loopback, but rather follow the proper route?
>
>Mike
>
>
>
>"This message may contain company proprietary information. If you are not
>the intended recipient, any disclosure, copying, distribution or reliance on
>the contents of this message is prohibited. If you received this message in
>error, please delete and notify me."



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
