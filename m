From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Journaling File Systems...
Date: 24 Oct 2002 15:00:47 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035468047.15381.81.camel@zebra.vil.ite.mee.com>
References: <1035456374.31016.84.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035456374.31016.84.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Ext 3 has some slowness, I guess, but I use it without any real
headaches for my workstation and a couple of servers (not particularly
I/O intensive servers, mind you).

Want to have a play with ReiserFS because of the speed. Don't know about
the others. 

From what I've read, ReiserFS might be worth going for, depending on
what you are doing on your workstation.

P.

On Thu, 2002-10-24 at 11:46, Bryan Simmons wrote:
> When I first installed Linux in 1998, I don't remember there being any
> other file system to use other than Ext2.  After 2000, I went a few
> years without Linux.  This time around, when installing Linux, I noticed
> I could use anything from Ext3 to ReiserFS to JFS etc... I steered clear
> of these and chose Ext2 because it was all that I knew.  Now, after
> reading an article on journaling file-systems in Linux Magazine, I am
> convinced I need to use this technology on my next system (which should
> arrive Friday).
> 
> Here's my question:  what would you guys suggest as a good file system
> for a client?  I use my system for programming, multimedia (home movies,
> mp3s, pics, etc...).  So far, it seems good to go with Reiser.  JFS and
> XFS seem like overkill for a client and Ext3 is not efficient enough.
> 
> What are your opinions?
> -- 
> Regards,
> 
> Bryan Simmons 
> =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
> 
>  On Integrity:
> 
>  "I'm going to be as good as they let me and
>   as mean as they make me, and they all know
>   that.  I don't ever lie. If I tell you a
>   rooster can fly, get the harness."
> 
>    --Burl Cain, Louisiana State Pen Warden
> =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
