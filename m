From: Ray Olszewski <ray@comarre.com>
Subject: Re: DNS DHCP
Date: Wed, 24 Dec 2003 19:07:16 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031224184253.01f7fdd8@celine>
References: <1072304468.9715.11.camel@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1072304468.9715.11.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:21 PM 12/24/2003 -0500, John T. Williams wrote:
>I have been trying to get a dns running in my father's intranet.  The
>situation is that he gets dsl severs witch is split by a belkin wireless
>router.  Using bind9, I have successfully configured one of the
>computers in the intra net as a dns server, and have manually created
>zone files which allow for the successful resolving of computer names in
>the intranet.  All of this is happy and good, however I fear greatly
>getting a call from my father asking me to fix it, every time the ip
>address changes on one of the computers.  The problem I'm having is
>figuring out how to update the zone files and reload the dns server when
>a change occurs to the dhcp table.  I was wondering if anyone had any
>suggestions, or am I doomed to fix this by hand forever more?  I realize
>that I'm am probably not providing enough information, but was unsure
>what else to include.


Yeah, this is a tough problem, even assuming the DHCP server and the DNS 
server are the same host. In general terms, your options are:

1. Force the DHCP server always to give a machine the same IP address. The 
sure way to do this is with MAC-address entries in the dhcpd config table 
(in, probably, /etc/dhcpd.conf). In practice, if you change your standard 
lease time from the as-shipped default (around 10 minutes, as I recall) to 
something long (so a lease only renews every day or so, or even once a 
month), you'll find that machines rarely change their address. (I use this 
with my Windows hosts, and they keep the same leases for a year or more.)

2. Have the DHCP server assign hostnames, so that when a particular host's 
lease address changes, so does its hostname. Then the names and addresses 
in the zone data stay in sync automatically. Users may find this a 
nuisance, though.

3.  Run a periodic cron job that checks the state of leases (as recorded 
in, probably,  /var/lib/dhcp/dhcpd.leases) and automatically updates the 
zones file using this info. Should be easy to do in, say, Perl. You don't 
need to restart BIND (named);  you can send it a SIGHUP. (If you do prefer 
to restart it, most distros have an init script that handles that task.)

4. Abandon DHCP and give the hosts static addresses. (This is what I mostly 
do, BTW; only Windows hosts, and temporary conenctions like laptops, get 
DHCP leases.)

I've assumed here that the DHCP server you are running is a Linux system. 
The "probablies" above mean that these are the file locations on Debian 
systems; I don't know how much they vary across distros.

As to what else to tell us ... my comments above pretty much indicate that 
implicitly. It would also help to know the scale of the problem -- how many 
PCs (or other devices that get leases) on the LAN, how often do they change 
address (and why). Also what Linux version you are using.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
