From: Ray Olszewski <ray@comarre.com>
Subject: Re: local networking hostname
Date: Mon, 22 Jul 2002 14:14:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020722140949.021ce4e0@celine>
References: <5.1.0.14.1.20020722081403.02197720@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <B961C21C.1EB2%jimurl@montanaice.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Jim Earl <jimurl@montanaice.com>, linux-newbie@vger.kernel.org

At 02:07 PM 7/22/02 -0600, Jim Earl wrote:
[...]
>The Non-Linux is a Mac OS 9.  What you both are saying makes sense- not a
>Linux issue, but rather a Mac equivalent of '/etc/hosts'.  I have been
>screwing around with with the TCP/IP Control Panel, including "Selecting a
>Host File", following apples instructiosn on that.  Still no luck;
>
>I have, however, noticed that routed is not a running process.  Should it be
>in this case?

I don't think you've said if the Linux host is acting as a router for the 
Mac host, or if this is just a private LAN. But in either case,  the Linux 
host does not need to run routed ... the kernel's own routing table, 
managed with "route" or "ip" (depends on the distro and kernel version), 
can handle both LAN access and the simple sorts of routing that home and 
small-business routers do.

Routed can be useful in more complicated routing setups, but it's been so 
long since I used it that I can't offhand tell you much about its use.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
