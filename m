From: Ray Olszewski <ray@comarre.com>
Subject: RE: 2 NIC cards not talking
Date: Wed, 21 Jan 2004 17:35:28 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040121172448.01fd0aa0@celine>
References: <5F84A09ECDD5D411973000508BE32470266024F5@exnyc07.lehman.co
 m>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5F84A09ECDD5D411973000508BE32470266024F5@exnyc07.lehman.co
 m>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

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
>xxx.xxx.xxx.0           0.0.0.0         255.255.255.0           U       eth0
>127.0.0.1                       0.0.0.0         255.0.0.0
>U       lo
>0.0.0.0                 xxx.xxx.xxx.1   0.0.0.0                 UG      eth0
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
