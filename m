From: Ray Olszewski <ray@comarre.com>
Subject: Re: Distros
Date: Wed, 18 Sep 2002 19:10:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020918190332.0248d380@celine>
References: <20020919014948.42459.qmail@web11404.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020919014948.42459.qmail@web11404.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:49 PM 9/18/02 -0700, james niland wrote:
>I find that many of the bigger distros are not that
>different really. But if you want a decent small one
>ofr newbies which is also easy to setup there are not
>so many. I went through half a dozen of them until I
>found PEANUT linux. By far the best for it's size (The
>small distro is about 220MB iso download) and comes
>with kde3,koffice,mmxx,etcetcetc preconfigured. VERY
>nice...I was about to give up on Linux until I found
>this distro.

I haven't looked at Peanut in a long time, so I won't try to comment on it 
specifically. I do want to suggest one concern with using distributions 
other then the top 5 or so: currency of security updates. Any system that 
is connected to the Internet (even intermittantly, by dialup) needs the 
apps that connect to the Internet to be updated regularly with security 
fixes. The big-name distros -- Red Hat, Mandrake, Debian, and a few others 
-- do this reliably. Others are less diligent.

The good immediate test of security currency is whether the distro uses a 
suffiently recent version of the SSL libraries to plug the MAJOR security 
hole that has been in the news this week. (It mainly affects apache-ssl, 
but ssh also uses the SSL libraries.) If not, is it using a sufficiently 
current version of sshd to plug the hole found in that a couple of months ago?

I could go on, but you get the idea; look at any big-5-distro security list 
to see what the needed updates have been for the last year or so (Debian 
announces maybe 6 per month, though many affect only small, specialized 
packages). Then judge your distro of choice by how many of them it has 
implemented.


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
