From: Ray Olszewski <ray@comarre.com>
Subject: Re: Freesco, old kernel lines, security
Date: Mon, 02 Jun 2003 08:07:50 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030602080040.01f74a30@celine>
References: <Pine.LNX.4.53.0306020858070.6480@vector>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0306020858070.6480@vector>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 09:08 AM 6/2/2003 -0500, James Miller (office) wrote:
>I understand that in the world of Linux network security, generally older
>= worser (more insecure).  So, I see that Freesco, a small Linux
>gateway/router distro that seems to be actively maintained, is using a
>kernel from the 2.0.x line - 2.0.38 (I understand that the most
>recent 2.0.x kernel is 2.0.39).  Is Freesco considered an insecure
>gateway/router distro because it uses this older kernel line, or can it be
>expected to provide adequate network security?  What would be the risks
>involved in using such a distro?  Would the security savants on this list
>recommend against using it?


I have not looked at Freesco in a long time (years, really). Were I to 
consider using it, I would worry not about the old kernel but about old, 
insecure apps. Since I don't know what apps it runs, I cannot be specific 
here. But over the past 2 years, we've seen security updates to BIND 
(named), ssh, ssl-libraries, I believe even libc6 (glibc), and a lot of 
others I can't name off the top of my head.

So I would look to see if Freesco is doing regular security updates to 
applications and libraries that provide whatever services it makes available.

The issue with 2.0.x kernels (the issue I know, anyway) is that they do not 
support the fancier routing capabilities of 2.2.x and 2.4.x kernels ... for 
example, their NAT'ing code is more primitive, they don't provide 
connection tracking, they are less flexible in handling 3-NIC (e.g., DMZ) 
setups, and they log less intelligently.  Whether these limitations matter 
depends on the particulars of your routing needs.

Here, I run a NAT'ing router using the 2.4.x kernel and built on 
Debian-Woody. Were I to use a small-Linux rourer distro, I'd probably use 
LEAF/Bering or LEAF-Dachstein (depending on the details of my requirements 
... the two variants have different frop-in firewall packages available).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
