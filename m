From: Ray Olszewski <ray@comarre.com>
Subject: Re: Location Detection
Date: Tue, 18 Apr 2006 19:47:41 -0700
Message-ID: <4445A4CD.3060203@comarre.com>
References: <200604190151.k3J1pplp004219@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200604190151.k3J1pplp004219@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter wrote:
> Hi,
> 
> During the recent Winter Olympic I tried to open the videos for it offered by 
> a website station. It was not possible, instead a site opened telling me that 
> for whatever reasons I am not allowed access since I am not within the 
> European area.
> 
> Questions:
> 
> How do they know where I possibly am?

IP addresses are assigned in blocks to groups called Registries that in 
turn assign them to ISPs and others. This assignment process has a 
regional component, so the IP address you were trying to connect from 
might be associated with the Philippines.

The raw (and not very informative) list of address assignments is at

	http://www.iana.org/assignments/ipv4-address-space

Other pages at the IANA site may also be fo interest to you, so look 
around a bit.

This is just a guess, of course.

> 
> Can that be overridden and how?

If my guess is right, not easily. The only workaround I can immediately 
think of is to find a proxy server in Europe that will let you proxy 
through it ... either a public proxy server, if any such thung exists, 
or a friend who will let you proxy through his site. (One of the 
companies I work with has, occasionally, run this sort of off-site 
proxy, but only for product testing purposes, so that wouldn't help you. 
It is how I know that proxy servers can be used that way.)

> Thanks & regards

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
