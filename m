From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: A way to transfer drives?
Date: 01 Nov 2002 17:04:39 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036170279.4295.6.camel@zebra.vil.ite.mee.com>
References: <200210310853.08719.1stflight@ameritech.net> 
	<3DC1618D.4060704@xts.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DC1618D.4060704@xts.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dragos LUNGU <rlug-list@xts.ro>
Cc: linux newbie <linux-newbie@vger.kernel.org>

This does, however, have the disadvantage that your existing partitions
are copied but not resized. Eventually, you end up with lots of little
partitions (after a couple of hard disk upgrades...)

P.


On Thu, 2002-10-31 at 16:59, Dragos LUNGU wrote:
> 
> 
> 1stFlight wrote:
> >  I'm looking for a way to upgrade my HD and maintain file/directory structure. 
> > I've got a 20GB  with partitions for / /home /usr how can I copy/clone this 
> > drive over to it's 60B replacement? Thanks!
> Hi
> 
> just finished this  operation last night .
> setup :
> 
> boot from /dev/hda
> 
> /dev/hdb - 40GB (old disk)
> /dev/hdc - 60GB (new disk )
> 
> # dd if=/dev/hdb of=/dev/hdc bs=2M
> 
> it did a perfect,bit by bit, clone . then, i used cfdisk to set up an 
> additional 20Gb partition for the extra space.
> 
> works like a charm .
> 
> i always set bs (block size) close to the size of the HDD buffer (2048 
> in my case)
> 
> hope it helps.
> 
> dragos
> 
> 
> -- 
> 
> | Dragos LUNGU
> |
> | http://www.xts.ro
> | dragos@xts.ro
> | mobile (+40)745 379 734
> | office (+40)251 190 561
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

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
