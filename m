From: Craig McDonald <craig@wattgroup.net>
Subject: RE: Proxy
Date: Sat, 21 Sep 2002 10:10:24 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1B4EC5AAAA55D511971A00B0D0AA97200E709C@SOL.wattgroup.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Received: from 192.168.100.5
          by *watt*.*;
          SAT, 21 Sep 2002 10:10:31 -0700
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 'Ray Olszewski' <ray@comarre.com>, "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

Try this site. It has got some good examples.
http://www.linuxguruz.org/iptables/

Craig

-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com]
Sent: 21 September 2002 03:07
To: Le, Paul [Contractor]; linux-newbie@vger.kernel.org
Subject: RE: Proxy


At 08:38 PM 9/20/02 -0500, Le, Paul [Contractor] wrote:
>May I ask what is iptables, and where can I get a how to for it.
[old stuff deleted]

Oopf! A trickier question than it looks like, I'm sad to say.

iptables is the application used to configure some of the advanced routing 
functions (including firewalling, NAT, and port forwarding) in Linux 2.4.x 
kernels. If you have the application installed, "man iptables" will tell 
you the basic commands. But this listing is pretty barebones ... useful if 
you need to check a detail in your iptables ruleset, but not much help 
getting started.

To my surprise, there does not seem to be an "official" Ipchains HowTo at 
linuxdoc, but several routing HowTos have been updated recently enough to 
give at least a bit of an introduction. Find them via this URL

         http://www.tldp.org/HOWTO/HOWTO-INDEX/networking.html#NETROUTING

(www.tldp.org is the site formerly called linuxdoc, and it should always be 
the first place to check for HowTos or other Linux documentation).

There is an actual Iptables HowTo, which you can find many links for by 
searching on "linux iptables" at Google (the second place to check for 
HowTos and other Linux documentation). I don't know why it is not on the 
list at tldp (maybe times have changed and my "first" and "second" ratings 
need to be reversed?).

Another way to get a handle on Ipfilters is to look at an application that 
uses it. One example is Shorewall, a drop-in firewalling package. Find it 
the usual ways (some distros include it in their package-management
systems).

Finally, I came across this link:

         http://www.linuxnewbie.org/nhf/Security/IPtables_Basics.html

Personally, I didn't find the content all that helpful, but with so little 
for the beginner to choose from on this fundamentally difficult topice, I 
thought it worth mentioning anyway.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
----------------------------------------------------------------------------
---

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
