From: Ray Olszewski <ray@comarre.com>
Subject: RE: Proxy
Date: Fri, 20 Sep 2002 14:12:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020920140326.024b09b0@celine>
References: <3F06C9859CA7D31194ED0000D1ECC4AB14C48B12@pkcexv007.sprints
 pectrum.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F06C9859CA7D31194ED0000D1ECC4AB14C48B12@pkcexv007.sprints
 pectrum.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Le, Paul [Contractor]" <ple02@sprintspectrum.com>, linux-newbie@vger.kernel.org

At 03:41 PM 9/20/02 -0500, Le, Paul [Contractor] wrote:
>I am sorry kind of jump in the middle here. I am looking for a software so
>more than one computers in my LAN can share a same internet connection. Is
>Squid doing this???

No. squid can be *part* of the solution to this problem, but it is not the 
core part.

The details of how to do this with Linux depend a bit on what kind of 
Internet connection you are sharing. But the basic idea is that the Linux 
host functions as a router. It has two network connections -- one to the 
LAN, the other to the Internet. It runs a kernel configured to support 
routing, and uses either the ipchains (kernel 2.2.x) or iptables (2.4.x) 
facility to set up a firewall. Among other things, the firewall does NAT 
(Network Address Translation), a facility by which the kernel lets LAN 
hosts that use non-routable IP addresses "share" the one routable address 
the Linux host itself has on its external (Internet) interface.

Actually, Squid can substitute for the NAT part, as long as you only want 
to "share" access to the services that it can proxy (http, https, probably 
ftp). The Linux host still needs to connect to both the LAN and the 
Internet, and it needs a suitable routing table to access both networks.

I've only skimmed the surface here; look through routing and firewalling 
HowTos to get a more complete overview. Please feel free to ask additiona, 
more specific question here, once you've gotten this overview.

I may have made this sound hard, but it really is not. It's a very common 
arrangement, either using a general-purpose Linux host as the router or a 
specialized one running on old equipment (for more on this, look at 
leaf.sourceforge.net, among other places).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
