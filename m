From: Ray Olszewski <ray@comarre.com>
Subject: Re: Security Updates
Date: Wed, 09 Oct 2002 09:00:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021009085121.025d3810@celine>
References: <00a801c26f8f$5d88fb60$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00a801c26f8f$5d88fb60$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 08:28 AM 10/9/02 -0400, Paul Kraus wrote:
>What mailing list or web page do I want to check regularly for security
>updates and kernel updates? Is there a way I can be notified without
>having to check?

The best known generic security list is bugtraq. I don't have the URL or 
mailing-list FQN at hand, but I imagine Google will find them for you.

Once you get past the generic level, this is a distro-specific question ... 
getting prompt security updates is, to my mind, one of the top selling 
points of any distro. Most of the major distros have security lists, and 
related online package directories, for this purpose. (That's why I don't 
recall how to access bugtraq, for example; I found that the debian-security 
list covers my own needs very reliably.) I seem to recall that you use Red 
Hat, and I've seen references to a Red Hat security list ... you probably 
want to check the RH Web site.

Kernels are trickier, since (usually) new kernels are released for reasons 
other than to fix security problems, so don't get reported on the security 
lists. Still, the major packages are all very good about making newer 
stable (that is, 2.4.x right now) kernels available promptly, so I'd 
recommend keeping track of this via your basic on-line package-management 
system (whatever RH's analog to Debian's apt-* system is).


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
