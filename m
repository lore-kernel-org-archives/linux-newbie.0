From: Brian Jackson <brian@mdrx.com>
Subject: Re: synchronising two machines
Date: Tue, 15 Apr 2003 15:39:04 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304151539.04668.brian@mdrx.com>
References: <5.1.0.14.1.20030411081015.01ea54a8@celine> <1050322056.1799.159.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1050322056.1799.159.camel@zebra.vil.ite.mee.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 14 April 2003 07:07 am, Paul Furness wrote:
> Thanks Ray, and everyone else who've made suggestions.
>
> To answer your questions in summary, Ray: They need to be sync'd daily;
> Yes, it really _is_ one way; They are new, fast machines with a GB LAN
> between them. If syncing over night, they can give 100% of their
> attention to the sync.

You could try one of the nbd's(enbd,nbd,etc), but I don't know if any of those 
support "/" being on them. And you said you didn't want any type of 
clustering, or I would suggest SSI(it would take care of load balancing and 
failover). That is kind of a tough call. I think most people either use 
homebrew scripts, or some form of shared storage. You could mount /usr via 
NFS and that would take care of most everything being in sync, but then the 
NFS server would become the weak link. (if it went down, so would both X 
servers, so no backup if one died). 

--Brian Jackson

<snip>

-- 
OpenGFS -- http://opengfs.sourceforge.net
Home -- http://www.brianandsara.net/brian
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
