From: Ray Olszewski <ray@comarre.com>
Subject: Re: ADSL connection via RHL 90
Date: Tue, 15 Feb 2005 08:50:18 -0800
Message-ID: <5.1.0.14.1.20050215081628.01fcb8d0@celine>
References: <000c01c51336$715254f0$6510ea0a@acbi.local>
Mime-Version: 1.0
In-Reply-To: <000c01c51336$715254f0$6510ea0a@acbi.local>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux newbie list <linux-newbie@vger.kernel.org>

Comments interspersed.

At 03:14 PM 2/15/2005 +0700, GA Dept PT ACBI wrote:

>I just installed RHL90, as workstation, and connected to our internal LAN.
>Now, I tried to connect to the net via our ADSL. But failed, via Mozilla
>browser, sendmail, or any other. The ADSL's IP number as default gateway was
>already put into the routing table.

I don't quite understand this last sentence. The gateway number should be 
the LAN address of your router ... probably 10.234.16.99, based on what you 
report below ... not (for example) the public address by which that router 
(probably) connects to the Internet via ADSL (or, even worse, the router's 
gateway address).

Hosts (including routers) have IP addresses; ADSL circuits do not.

>I can ping to the external IP number of my ISP ( i.e. 202.134.0.155 ), but
>not to any external IP number ( e.g. 18.7.22.69 ). When I ping-ed to
>external FQDN, it always said something like "...unknown host...".

Preliminary comment: When asking for technical help, never tell us what the 
response is "something like". Take the time to write it down and tell us 
what it actually is, and the exact command it is response to.

Now ... you say first that you cannot ping to "any external IP number", but 
then refer to "external FQDN". Have you tested pinging an address ("( e.g. 
18.7.22.69 )") or not? If not, please do ... in that case, James' 
suggestion that you have a DNS problem is probably on target. But if you 
cannot ping actual addresses, you probably have a routing problem of some 
sort, not a DNS problem.

Finally, what do you mean by "the external IP number of my ISP ( i.e. 
202.134.0.155 )"? Is that the external IP address of the router your 
systems sees as "10.234.16.99", the adress of that system's gateway (from 
its routing table), or something else?

>Have I done something wrong during the installation? Where should I check
>first?
>Could somebody please help me?
>
>My data is as follows :
>
>Result of ifconfig :
>eth0      Link encap:Ethernet  HWaddr 00:0C:6E:6B:4E:C2
>           inet addr:10.234.16.101  Bcast:10.234.16.255  Mask:255.255.255.0
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:4818 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:502 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:100
>           RX bytes:583229 (569.5 Kb)  TX bytes:42296 (41.3 Kb)
>           Interrupt:12 Base address:0xd000
>lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           UP LOOPBACK RUNNING  MTU:16436  Metric:1
>           RX packets:62168 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:62168 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:4244648 (4.0 Mb)  TX bytes:4244648 (4.0 Mb)
>
>( note : 10.234.16.101 is my workstation's IP number. )

This looks fine.

>Result of route -v as follows :
>
>Kernel IP routing table
>Destination     Gateway         Genmask         Flags Metric Ref    Use
>Iface
>10.234.16.0     *               255.255.255.0   U     0      0        0 eth0
>169.254.0.0     *               255.255.0.0     U     0      0        0 eth0
>127.0.0.0       *               255.0.0.0       U     0      0        0 lo
>default         10.234.16.99    0.0.0.0         UG    0      0        0 eth0

Is "10.234.16.99" the right address for your gateway (default route) or 
not? Assuming it is, this part looks OK too.

>         route -C
>
>Kernel IP routing cache
>Source          Destination     Gateway         Flags Metric Ref    Use
>Iface
>fxrhl90         acbiserver.acbi acbiserver.acbi       0      0       17 eth0
>fxrhl90         10.0.0.6        10.234.16.99          0      0        1 eth0
>10.234.16.117   10.234.16.255   10.234.16.255   ibl   0      0        5 lo
>fxrhl90         255.255.255.255 255.255.255.255 bl    0      0        9 eth0
>10.234.16.100   10.234.16.255   10.234.16.255   ibl   0      0        2 lo
>fxrhl90         10.234.16.104   10.234.16.104         0      0        2 eth0
>10.234.16.135   10.234.16.255   10.234.16.255   ibl   0      0       14 lo
>10.234.16.104   fxrhl90         fxrhl90         il    0      0       17 lo
>10.234.16.105   10.234.16.255   10.234.16.255   ibl   0      0        1 lo
>10.234.16.112   10.234.16.255   10.234.16.255   ibl   0      0        1 lo
>10.234.16.104   10.234.16.255   10.234.16.255   ibl   0      0        0 lo
>acbiserver.acbi fxrhl90         fxrhl90         il    0      0       25 lo
>fxrhl90         fxrhl90         fxrhl90         l     0      0       98 lo
>fxrhl90         10.234.16.104   10.234.16.104         0      0        2 eth0
>fxrhl90         10.234.16.255   10.234.16.255   bl    0      0        2 eth0
>fxrhl90         fxrhl90         fxrhl90         l     0      0       35 lo
>fxrhl90         10.0.0.6        10.234.16.99          0      0        0 eth0
>10.234.16.99    fxrhl90         fxrhl90         il    0      0        0 lo
>acbiserver.acbi 10.234.16.255   10.234.16.255   ibl   0      0        0 lo
>fxrhl90         acbiserver.acbi acbiserver.acbi       0      0       27 eth0
>
>( note : fxrhl90 is the name of my workstation )

This looks OK too.

>         netstat -r :
>
>Kernel IP routing table
>Destination     Gateway         Genmask         Flags   MSS Window  irtt
>Iface
>10.234.16.0     *               255.255.255.0   U         0 0          0
>eth0
>169.254.0.0     *               255.255.0.0     U         0 0          0
>eth0
>127.0.0.0       *               255.0.0.0       U         0 0          0 lo
>default         10.234.16.99    0.0.0.0         UG        0 0          0
>eth0
>
>( note : I didn't input this 169.254.0.0 number; where does it come from ? )

Probably something RH does by default. There's an RFC standard for 
self-assignment of IP addresses (by DHCP clients that do not get a 
response) that reserves this network. Systems are sopposed to ... or at 
least allowed to ... pick a random address in this range for themselves. 
It's intended to handle hubless connections between 2 isolated hosts, such 
as a field connection between 2 laptops or a laptop connected to a 
workstation. I never actually see Linux systems uses this option, but all 
Windows systems do.


>Data from /etc/sysconfig/networking/devices/eth0.route as follows :
>
>GATEWAY1=10.234.16.99
>NETMASK1=255.255.0.0
>ADDRESS1=202.134.2.5
>GATEWAY0=10.234.16.99
>NETMASK0=255.255.0.0
>ADDRESS0=202.134.0.155

What do the addresses in "ADDRESS1" and "ADDRESS0" refer to?

>Data from /etc/sysconfig/networking/devices/ifcfg-eth0 :
>
>DEVICE=eth0
>BOOTPROTO=none
>BROADCAST=10.234.16.255
>IPADDR=10.234.16.101
>NETMASK=255.255.255.0
>NETWORK=10.234.16.0
>ONBOOT=yes
>HWADDR=00:0c:6e:6b:4e:c2
>USERCTL=no
>PEERDNS=no
>GATEWAY=10.234.16.99
>TYPE=Ethernet

I don't offhand know where RH places config values for DNS servers. Since 
you are doing a manual config (not using DHCP), you need to provide them 
manually. The standard place is in /etc/resolv.conf ... I  don't know if RH 
does this directly or uses a config file to create this one during 
boot/init. (In addition, I don't know what "PEERDNS=no" means in the above 
file ... perhaps someone who is more experienced than I with the RH config 
procedure can jump in here.)


>Yours,
>
>
>Frans T.
>
>P.S.
>Sorry for the use of bandwidth

Nothing to be sorry for. Technical questions require proper descriptions 
and, except for the concern in my initial comment, your is close to a model 
of how prople should pose them.

>
>
>----------------------------------------------------------------------------
>
>This information is confidential and legally privileged. If you are not the
>intended recipient, (i) please do not read or disclose to others,
>(ii) please notify the sender by reply mail, and (iii) please delete this
>communication from your system. Any review, retransmission, dissemination
>or other use of, or taking of any action in reliance upon, this information
>by persons or entities other than the intended recipient is prohibited.
>Thank you for your cooperation.
>----------------------------------------------------------------------------

No, it's not any of this, not when you post to a public mailing list. As a 
matter of form (my boilerplate can lick your boilerplate), I reject the 
notion that I am obligated to any specific actions by the posting of such 
boilerplate nonsense at the end of messages sent to public mailing lists.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
