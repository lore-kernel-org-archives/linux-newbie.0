From: Ray Olszewski <ray@comarre.com>
Subject: Re: Firewall / Web Monitor
Date: Wed, 30 Oct 2002 08:34:18 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021030082408.02119b60@celine>
References: <000001c2801b$e3a48ec0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c2801b$e3a48ec0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 08:54 AM 10/30/02 -0500, Paul Kraus wrote:
>I have a network of about 25 pcs and 4 servers. With moderate internet
>traffic. What kind of machine do you think I would need for a firewall
>only box? Ipchains or Iptables ( I have some experience with the latter
>and non with Ipchains). I would also like to be able to log where
>everyone is going. Such as what sites they are visiting, the time, and
>the pc that is making the request. Then if we see fit I would like to
>come up with a list of sites that they can visit while restricting all
>others. I would like to have this list be able to be split based on the
>different departments. One list for Accounts Payable one for inventory
>control, ect. Thanks for info. From what I have been reading squid can
>do this but squid says it's a caching server. I don't really think I
>need to cache pages though.

Choice of hardware depends on how fast your Internet connection is, and how 
busy it is. "moderate Internet traffic" is a bit too vague here. If your 
external connection is DS-1 speed or lower, then even a 486-40 will be fast 
enough to handle routing; in practice, though, I'd use the slowest Pentium 
machine I had in my "spares" pile, just so I could use pci-based NICs. If 
you do use a proxy server, that requires a bit more muscle, but not all 
that much (a moderate Pentium still will handle DS-1 speeds, but you'll 
want more memory and scratch disk space for the caching).

For tracking connections, you have two basic options:

1. Allow direct connections to the Internet (the next option will clarify 
what "direct" means) and use ipchains or iptables logging to keep track of 
who is going where.

2. Require use of a proxy server and use its logs to keep track of who is 
going where.

Whether you need to cache pages, a la Squid, depends on a lot of things. 
Basically it is a tradeoff between local, scratch storage and load on your 
Internet connection, and that requires cas-by-case analysis. How many 
cache-able pages your users access also matters.

I am unclear on what you mean by "have this list be able to be split". Once 
created, either an iptables or a Squid log can be analyzed based on 
anything that it includes. That means you can sort (or group) by source IP 
address, and if sensible address ranges are associated with the different 
departments, that should allow you to do what you want on that score.


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
