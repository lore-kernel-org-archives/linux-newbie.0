From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: partitioning
Date: Mon, 26 Jan 2004 17:16:53 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401261707570.12559@ppg_penguin>
References: <200401252137.39975.wheds8@ms66.hinet.net>
 <Pine.LNX.4.58.0401260017210.9502@ppg_penguin> <20040126150458.GA559@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040126150458.GA559@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 26 Jan 2004, Hal MacArgle wrote:

> On 01-26, Ken Moffat wrote:
> >
> >  If you're going to separate /usr, and the reasons for doing so probably
> > don't apply to many people here, even 3GB should be too much.  Depends,
> > of course, on exactly what you put there, but assuming you don't install
> > a _lot_ of things you aren't going to use then 3GB is more than enough
> > for a _full_ system (except /home).
> >
>
> 	Care to comment on the reasons for putting /usr in it's
> separate partition??
>

Not particularly, but I'll do my best ;)

> 	For the many personal and home office work stations wouldn't
> that be overkill and not within the KISS philosophy??
>

Yes to overkill.  If it's a simple way of making it harder to damage
things then perhaps it's not outwith the spirit of KISS.

> 	Just curious. Cheers. <grin>
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
> 		Utrum Per Hebdomadem Perveniam
> .

As far as I understand, the main reason to separate /usr is to do with
permissions - if it's separate, you can mount it r/o.  However, you can
also mount '/' r/o with (quite a lot of planning and) messing about.
I'm sure I've read about people mounting an nfs export at /usr, but that
does assume that all clients are on a similar architecture.  My security
knowledge isn't great. I'm sure I've missed out other advantages.

Ken
-- 
This is a job for Riviera Kid!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
