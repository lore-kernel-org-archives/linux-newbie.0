From: Ray Olszewski <ray@comarre.com>
Subject: RE: Proxy
Date: Fri, 20 Sep 2002 19:06:48 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020920184355.024b06a0@celine>
References: <3F06C9859CA7D31194ED0000D1ECC4AB14C48B1B@pkcexv007.sprints
 pectrum.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F06C9859CA7D31194ED0000D1ECC4AB14C48B1B@pkcexv007.sprints
 pectrum.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Le, Paul [Contractor]" <ple02@sprintspectrum.com>, linux-newbie@vger.kernel.org

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
the usual ways (some distros include it in their package-management systems).

Finally, I came across this link:

         http://www.linuxnewbie.org/nhf/Security/IPtables_Basics.html

Personally, I didn't find the content all that helpful, but with so little 
for the beginner to choose from on this fundamentally difficult topice, I 
thought it worth mentioning anyway.


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
