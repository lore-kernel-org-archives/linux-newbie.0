From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: partitioning
Date: Tue, 27 Jan 2004 14:16:26 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040127191626.GA603@lnx2.w8mch.ampr.org>
References: <200401252137.39975.wheds8@ms66.hinet.net> <Pine.LNX.4.58.0401260017210.9502@ppg_penguin> <20040126150458.GA559@lnx2.w8mch.ampr.org> <Pine.LNX.4.58.0401261707570.12559@ppg_penguin>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.58.0401261707570.12559@ppg_penguin>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

OK on the comments received by all.. I'll have to give this more
thought as to whether or not it's for me... Appreciate!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam

On 01-26, Ken Moffat wrote:
> > >
> >
> > 	Care to comment on the reasons for putting /usr in it's
> > separate partition??
> >
> 
> Not particularly, but I'll do my best ;)
> 
> > 	For the many personal and home office work stations wouldn't
> > that be overkill and not within the KISS philosophy??
> >
> 
> Yes to overkill.  If it's a simple way of making it harder to damage
> things then perhaps it's not outwith the spirit of KISS.
> 
> > 	Just curious. Cheers. <grin>

> 
> As far as I understand, the main reason to separate /usr is to do with
> permissions - if it's separate, you can mount it r/o.  However, you can
> also mount '/' r/o with (quite a lot of planning and) messing about.
> I'm sure I've read about people mounting an nfs export at /usr, but that
> does assume that all clients are on a similar architecture.  My security
> knowledge isn't great. I'm sure I've missed out other advantages.
> 
> Ken
> -- 
> This is a job for Riviera Kid!
> -
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
