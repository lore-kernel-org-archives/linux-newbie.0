From: Ray Olszewski <ray@comarre.com>
Subject: Re: Fwd: W$ 2K...
Date: Mon, 28 Jul 2003 06:58:48 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030728064145.01ee9e20@celine>
References: <200307280641.12692.James.Hatridge@epost.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307280641.12692.James.Hatridge@epost.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Newbie <linux-newbie@vger.kernel.org>

James --

A Linux list is not the best place to look for someone to "talk through" a 
Windows 2000 installation and configuration. OTOH, your problem *might* be 
interoperability with Linux, and that is a suitable topic for getting help 
here. Or, from the symptoms you describe, it might even be a problem on the 
Linux end.

In that spirit ... you say

>But when I ping from Opus to
>Penguin, Opus gets nothing, but Penguin give an error.

What is the error (the actual message, word for word) and where goes 
Penguin "give" it? Do you *know* that Opus responds to pings from other 
sources (for **example**, that "more 
/proc/sys/net/ipv4/icmp_echo_ignore_all" returns a "0")? If "yes", please 
mention *how* you know it.

Next, when you say ...

>When I try to use IE to get to Opus's web site
>(Opus.epost.de/~hatridge/bulletin)  I get a page not found error.

... what are the details of this setup? If I try to connect to this URL 
from here, I am unable to resolve opus.post.de, so I surmise this is a 
server on a NAT'd LAN. Can you connect to that page from *anywhere*? 
Anywhere other than from Opus itself?

What do the routing tables on both machines look like? (On the Win2K 
machine, open a DOS window and enter "route print".) How does the Win2K 
machine get its IP and nameserver addresses, and are they correct? Can the 
Win2K host ping its default gateway address (whatever that is, probably 
your router) and its nameserver address(es)?

Does the Linux host run any firewall? If so, might it be interfering with 
responses to the Win2K host?

Finally, what are the basics of the Linux system? What distro, version, and 
kernel?

At 06:41 AM 7/28/2003 +0200, James Hatridge wrote:


>----------  Forwarded Message  ----------
>
>Subject: W$ 2K...
>Date: Sun, 27 Jul 2003 15:47:27 +0200
>From: James Hatridge <James.Hatridge@epost.de>
>To: SUSE OT <suse-ot@suse.com>
>
>Hi all....
>
>For the first time since Windows 3.1 I have installed W$ on one of my
>  systems. Due to needing to see what my web site looks like under IE I broke
>  down and did it.  I got a copy of W$2K from a friend.
>
>I now have a system running 2K, but I can not seem to get it to connect to my
>other system. Here's the deal
>
>Opus == Linux
>
>Penguin == 2K
>
>I can ping from Penguin to Opus and it works. But when I ping from Opus to
>Penguin, Opus gets nothing, but Penguin give an error.
>
>When I try to use IE to get to Opus's web site
>(Opus.epost.de/~hatridge/bulletin)  I get a page not found error.
>
>I'm sure that it's just a config problem. Could one of you guys talk me thru
>setting up 2K for a home network. I don't need email, or file sharing etc,
>only IE



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
