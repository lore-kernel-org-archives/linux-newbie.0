From: Sanjay Arora <skpobox@yahoo.com>
Subject: Re: Linux newbie: Help requested in decoding the nature of  this Martian packet..
Date: Sun, 15 Jun 2003 00:30:19 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030615073019.43987.qmail@web21003.mail.yahoo.com>
References: <5.1.0.14.1.20030614072454.039060a8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030614072454.039060a8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


> 
> I'm not familiar with the sniffer you used (so the
> *format* of the decoded 
> data is not familiar to me),
I used ethreal.

> and I am not up to
> decoding hex by hand this 
> morning, but the decoded packet appears genuine.
> Barring unusual setups, 
> DHCP broadcast packets do not cross routers, so it
> should be from the same 
> ISP "LAN" as the one you are on. Here are two things
> to check:
> 
> 1. How often are the Martians coming in?
>
Very often...say more than five times second because
my firewall is stopping logging so that it may not
choke the logs.
 
> 2. Are they all coming from the same MAC address?
> 
Yes they are coming from the same MAC address.

> If the answer to (2) is YES, then this machine
> requests a DHCP lease from 
> time to time. What then? Depends a bit on the answer
> to (1); I see two 
> possibilities.
> 
>   One possibility: it never gets one. (Perhaps he is
> trying to connect 2 
> hosts but is restricted to 1 IP address. You don't
> tell me enough about 
> your ISP for me to guess about *how* your ISP might
> restrict address 
> assignment; ISPs who deliver their services over
> Cat5 cable are not in my 
> experience, so I could only guess wildly.) Since it
> does not get a lease, 
> it lacks a usable routing table and can only send
> broadcast packets (which 
> is why that is all you ever see).
> 
My ISP restricts the addressing to 172.16.0.0 netmasks
255.255.255.0/252/240 and gives out a static IP
address to each user. In fact his man comes in & sets
it himself first time.

GW is 172.16.0.1 and he gets his subscribers to put in
two cards in their machine if they have an internal
network and use ip forwarding/masquerading  to reach
his net.

Even in this case, if the internal network uses DHCP,
I think that the packet coming on to the ISP's cable
should be masqueraded (should be 172.16.x.x & not
192.168.x.x), even if it is a broadcast. Am I correct?

> Second possibility: it does get a lease, and its
> further transmissions use 
> a 172.16.1.d address so are no longer Martians. So
> you don't see them until 
> the next time it requests a lease from the Martian
> address. (Why does it 
> switch back to 192.168.1.101? Maybe it's a laptop
> that moves between 2 
> networks.)
I'll check with the isp about the possibility of any
client using dhcp for allocating internal ip & about
laptop use. 
> 
> The "arp" command does not do what you think. It
> checks your host's (in 
> this case, I suppose your router's) arp table. It
> does not itself generate 
> arp queries. To check MAC addresses on a LAN, one
> method is to broadcast 
> ping the LAN (or run a program that quickly pings
> each address), then use 
> "arp" to check what IP addresses have valid MAC
> addresses associated with 
> them in the arp cache.
> 
also, i'll use ettercap in arp storm mode & check arp
cache (thanks for the tip). I think windows does not
respond to broadcast pings.

> In any case, I would not worry about this problem.
> Your firewall is 
> stopping these packets, just as it should. Even if
> it is an attack, it is 
> one you are not vulnerable to, since your firewall
> will not itself be 
> listening on port 67 on its external interface, and
> the RFC1918 firewall 
> rule should be DENYing (not REJECTing) these
> Martians, leaving you properly 
> stealthy.
> 
No, the problem is ever growing logs. and thanks for
this tip too...i'll check how exactly packets are
being denied.

IAC, thank you very much for your help. ;-))

With best regards.
Sanjay.

> 
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
http://www.linux-learn.org/faqs


__________________________________
Do you Yahoo!?
SBC Yahoo! DSL - Now only $29.95 per month!
http://sbc.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
