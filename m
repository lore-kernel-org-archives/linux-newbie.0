From: Ray Olszewski <ray@comarre.com>
Subject: Re: would this work as a thin client?
Date: Wed, 18 Dec 2002 15:25:17 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021218151622.02104860@celine>
References: <3E00C4CA@mailandnews.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E00C4CA@mailandnews.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 10:32 AM 12/18/02 -0500, james miller wrote:
>Hello all. I'm pretty new to Linux and to the LTSP project, but I ran across
>something on the web for really cheap ($12.95!) and wondered if it could work
>as a thin client. Seems like, if it would, a bit of fiddling would be
>involved. Sorry if this is a stupid question. Anyway, here's the link:
>http://www.softwareandstuff.com/h_misc_webpal.html . Description follows:
[deleted]

I took a look at the URL, and I followed some of the links there, which 
included info on converting the box to Linux. I'd say it is doable, but far 
more than a "bit" of fiddling is needed. The instructions for how to switch 
it to Linux seem pretty clear, but highlight three weak spots --

         1. The system uses an ARM CPU, not an i86 one, so you need to cope 
with the added complixities of using an non-i86 distro. This isn't fatal, 
but it does involve learning new tricks of the trade.

         2. The system has only one expansion slot, an isa slot, and that 
is limited to NE2K NICs running on IRQ3 (if you use it for a NIC, that is). 
NE2K means 10 Mbps, not 100 Mbps. Usable for a thin client, but just one 
more thing to have to fiddle with.

         3. This is more s judgment call on my part, but I expect you would 
see poor performance with X on this system, making it a weak candidate for 
common thin client uses (at least the ones that interest me).

Good luck if you decide to give this a try, and please let us know how it 
goes if you do.


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
