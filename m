From: "Chadha, Devesh" <devesh.chadha@lehman.com>
Subject: RE: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 21:31:49 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5F84A09ECDD5D411973000508BE32470266024F6@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

Here are all the answers:

Chuck's questions:
My IP address is a public IP.
I think I am not NATing correctly and hence this problem.
ping -c 4 192.168.1.1 gives:
64 bytes from 192.168.1.1 icmp_seq=1 ttl=64 time=0.237 ms
64 bytes from 192.168.1.1 icmp_seq=2 ttl=64 time=0.152 ms
64 bytes from 192.168.1.1 icmp_seq=3 ttl=64 time=0.150 ms
64 bytes from 192.168.1.1 icmp_seq=4 ttl=64 time=0.152 ms

--- 192.168.1.1 ping statistics ---
4 packets transmitted, 4 received, 0% loss, time 3000ms

ping -c 4 xxx.xxx.xxx.xxx gives:
64 bytes from xxx.xxx.xxx.xxx icmp_seq=1 ttl=64 time=0.237 ms
64 bytes from xxx.xxx.xxx.xxx icmp_seq=2 ttl=64 time=0.146 ms
64 bytes from xxx.xxx.xxx.xxx icmp_seq=3 ttl=64 time=0.151 ms
64 bytes from xxx.xxx.xxx.xxx icmp_seq=4 ttl=64 time=0.149 ms

--- xxx.xxx.xxx.xxx ping statistics ---
4 packets transmitted, 4 received, 0% loss, time 2998ms

Rays questions:
1. Correction, both are not on same subnet. Sorry for the wrong info. I
guess I am not NATing right
2. given that information. see below
3. ip forwarding is on. I dont know if I have NATing set up correct. I
looked up the internet and ran some scripts.
Here is my iptables -nvl output:

Chain INPUT (policy ACCEPT 46 packets, 4390 bytes)
 pkts bytes target        prot  opt   in         out        source
destination

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target        prot  opt   in         out        source
destination
    0     0 ACCEPT         all  --    eth1        *         0.0.0.0/0
0.0.0.0/0

Chain OUTPUT (policy ACCEPT 66 packets, 6036 bytes)
 pkts bytes target        prot  opt   in         out        source
destination

4.Pinging 192.168.1.1 from eth0 gave destnation host unreachable and pinging
xxx.xxx.xxx.xxx from eth1 gave the same.

5. I can connect to internet using eth0 since I can browse the internet. I
can also ping the gateway from eth0

Hope this helps. I know that xxx.xxx.... is annoying, but I cant help it.

Thanks for taking interest...

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Ray Olszewski
Sent: Wednesday, January 21, 2004 8:35 PM
To: linux-newbie@vger.kernel.org
Subject: RE: 2 NIC cards not talking


At 07:32 PM 1/21/2004 -0500, Chadha, Devesh wrote:
>Well my reason for not giving is that it is a public IP and does not have
>any firewalls in place. This exposes my server much more to unauthorized
>"visit"
>
>Anyway...lets get down to getting this done.
>
>I am on RH Linux 8
>uname -a is Linux 2.4.18
>netstat -nr gives
>192.168.1.0                     0.0.0.0         255.255.255.0           U
>eth1
>xxx.xxx.xxx.0           0.0.0.0         255.255.255.0           U
eth0
>127.0.0.1                       0.0.0.0         255.0.0.0
>U       lo
>0.0.0.0                 xxx.xxx.xxx.1   0.0.0.0                 UG
eth0
>
>ifconfig gives me that eth0, eth1 and lo are correctly configured.
>
>ip_forward gives a "1"
>
>What do the gurus say???

Not being a guru -- I'm just a guy who knows something about routing and 
firewalling -- I need the answers to ALL of the questions I asked, not just 
the less than 2 of them that the information above answers.

That includes the two questions I ask below about your public IP address.

It includes examples of the tests you did and how they failed; see my prior 
message for the details.

And just to be clear -- can this host *itself* not connect to other hosts 
on the Internet, or is the problem ONLY with LAN hosts attempting to use it 
as a NAT'ing router?

The kernel capability that firewalls -- iptables in the case of 2.4.x 
kernels - is the same capability that NATs. It certainly seems that you 
need to NAT this connection (or if not, your setup with your ISP is 
suficiently unusual that you won't get meaningful help without describing 
it). So if you do "not have any firewalls in place", how *is* the system 
NAT'ing LAN hosts?

In addition to everything I asked for before, we probably need to see the 
output of

         iptables -nvL


>-----Original Message-----
>From: Ray Olszewski [mailto:ray@comarre.com]
>Sent: Wednesday, January 21, 2004 7:02 PM
>To: linux-newbie@vger.kernel.org
>Subject: RE: 2 NIC cards not talking
>
>
>At 04:52 PM 1/21/2004 -0500, Chadha, Devesh wrote:
> >[...]
> >Ray:
> >I have static IP and therefore I cannot give the actual IP address.
>
>I don't understand why, unless for some reason you think that your IP
>address is a secret. Once you start using the address for any purpose, it
>will be known to everyone you deal with, after all.
>
>Even if you are that secretive, we do need to know a couple of things about
>the address. One, is it a public IP address? Two, is it on a different
>network (probably what you call a "subnet") from the internal, LAN
>interface? If we don't know at least that much information reliably, then
>we won't be able to eliminate, or spot, some possible sources of your
>problem.
[garbage deleted]


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs


------------------------------------------------------------------------------
This message is intended only for the personal and confidential use of the
designated recipient(s) named above.  If you are not the intended recipient of
this message you are hereby notified that any review, dissemination,
distribution or copying of this message is strictly prohibited.  This
communication is for information purposes only and should not be regarded as
an offer to sell or as a solicitation of an offer to buy any financial
product, an official confirmation of any transaction, or as an official
statement of Lehman Brothers.  Email transmission cannot be guaranteed to be
secure or error-free.  Therefore, we do not represent that this information is
complete or accurate and it should not be relied upon as such.  All
information is subject to change without notice.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
