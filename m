From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux newbie: Help requested in decoding the nature of
  this Martian packet..
Date: Sat, 14 Jun 2003 08:03:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030614072454.039060a8@celine>
References: <5.1.1.6.0.20030614140245.00b50320@yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20030614140245.00b50320@yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:04 PM 6/14/2003 +0530, Sanjay Arora wrote:
>I am a new user to this list from Amritsar, India.
>
>I have a home network on internal IP 192.168.x.x, connected through GW 
>172.16.0.141 to a cable (Ethernet Cat 5 Cable) ISP having internal IP 
>network 172.16.x.x and giving Internet connectivity through GW 172.16.0.1, 
>which he claims is firewalled (though I doubt they are competent at it, as 
>they could not find mac address in a broadcast packet...IMHO they are 
>using a consultant, who they are unwilling to call again n again...maybe 
>due to his charges).
>
>My GW 172.16.0.141 is a multihomed linux box with Linux Firewall Project 
>firewall on it (installed it a few days ago and am still in the process of 
>understanding it). Firewall is generating huge logs about a Martian packet 
>being detected having IP 192.16.1.101 on eth1 which is 172.16.0.141 ie 
>external interface. It also lists Ethernet II header giving hardware 
>address of the broadcast packet.
>
>I am not competent enough to compile a sniffer yet on Linux but I plugged 
>a windows machine directly on to the ISPs cable and sniffed the Martian 
>packets...I am listing them here, please advise if this packet is having a 
>spoofed IP address (ie is a virus or hacker transmission) or if seems to 
>be a genuine DHCP broadcast. If DHCP broadcast...how do I find out if it 
>is coming from the ISP's Internet GW or from his internal network.
>
>Maybe I am wrong but I don't think its a genuine DHCP broadcast (from 
>someone like myself who has connected an inner 192.168.x.x network to the 
>cable ISP's wire) as I am getting no other packets except these broadcast 
>ones...I am sure a leakage would not be discriminating and leak only DHCP 
>broadcast. But then I am a linux newbie.
>
>I believe I can use the arp command to find out the MAC addresses of 
>machines on isp's network but i do not know the various issues involved 
>and the syntax.
>
>Please help. One decoded & several undecoded packets are given below.
>
>With my thanks in advance
[sample data deleted]


I'm not familiar with the sniffer you used (so the *format* of the decoded 
data is not familiar to me), and I am not up to decoding hex by hand this 
morning, but the decoded packet appears genuine. Barring unusual setups, 
DHCP broadcast packets do not cross routers, so it should be from the same 
ISP "LAN" as the one you are on. Here are two things to check:

1. How often are the Martians coming in?

2. Are they all coming from the same MAC address?

If the answer to (2) is YES, then this machine requests a DHCP lease from 
time to time. What then? Depends a bit on the answer to (1); I see two 
possibilities.

  One possibility: it never gets one. (Perhaps he is trying to connect 2 
hosts but is restricted to 1 IP address. You don't tell me enough about 
your ISP for me to guess about *how* your ISP might restrict address 
assignment; ISPs who deliver their services over Cat5 cable are not in my 
experience, so I could only guess wildly.) Since it does not get a lease, 
it lacks a usable routing table and can only send broadcast packets (which 
is why that is all you ever see).

Second possibility: it does get a lease, and its further transmissions use 
a 172.16.1.d address so are no longer Martians. So you don't see them until 
the next time it requests a lease from the Martian address. (Why does it 
switch back to 192.168.1.101? Maybe it's a laptop that moves between 2 
networks.)

The "arp" command does not do what you think. It checks your host's (in 
this case, I suppose your router's) arp table. It does not itself generate 
arp queries. To check MAC addresses on a LAN, one method is to broadcast 
ping the LAN (or run a program that quickly pings each address), then use 
"arp" to check what IP addresses have valid MAC addresses associated with 
them in the arp cache.

In any case, I would not worry about this problem. Your firewall is 
stopping these packets, just as it should. Even if it is an attack, it is 
one you are not vulnerable to, since your firewall will not itself be 
listening on port 67 on its external interface, and the RFC1918 firewall 
rule should be DENYing (not REJECTing) these Martians, leaving you properly 
stealthy.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
