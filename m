From: Ray Olszewski <ray@comarre.com>
Subject: Re: partitons and proper order
Date: Sun, 31 Oct 2004 21:18:59 -0800
Message-ID: <5.1.0.14.1.20041031211615.01f2bff8@celine>
References: <5.1.0.14.1.20041031143246.01f2be00@celine>
 <1099252931.2838.4.camel@localhost>
 <41853B6B.5020903@kevino.org>
 <1099252931.2838.4.camel@localhost>
 <5.1.0.14.1.20041031143246.01f2be00@celine> <4185A33E.4090202@kevino.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4185A33E.4090202@kevino.org>
References: <5.1.0.14.1.20041031143246.01f2be00@celine>
 <1099252931.2838.4.camel@localhost>
 <41853B6B.5020903@kevino.org>
 <1099252931.2838.4.camel@localhost>
 <5.1.0.14.1.20041031143246.01f2be00@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:45 PM 10/31/2004 -0700, mike wrote:
>Ray Olszewski wrote:
> > At 03:14 PM 10/31/2004 -0700, mike wrote:
> >
> >> [...]
> >> I do use lilo. I have also been running a dual boot box with M$ and
> >> lilo has been writing to the master boot record. But this time it's
> >> all going to be Linux. I have a 30 gig harddrive so I would assume I
> >> would be safe if I kept the /boot partition within the first 500
> >> megabytes of the drive.
> >
> >
> > That's a good bet, but the mappings on modern hard drives are so hard to
> > follow, and so idiosyncratic, that it's not a sure thing. It''s hard to
> > figure out where the BIOS thinks track 1024 ends ... and aside from
> > access to the kernel,  know of no special benefit any partition gets
> > from being at the beginning of the drive.
> >
> > My practice ... which has worked 100% reliably for me with drives up to
> > 120 GB or so (I think I've even made it work with a 180 GB drive, and
> > drives over 134 GB or so have real BIOS problems)... is to make
> > partitions in this order:
> >
> > hda1 = /boot
> > hda2 = swap
> > hda3 = /  (root)
> > hda4 = /home
> >
> > I'm not partial to using separate /var, /tmp, and /usr partitions ...
> > but if I were, I'd put them and /home in the extended partitions at hda5
> > and up.
> >
> >
>
>Hi Ray,
>
>The reason I made /var a seperate partion is when I first started I
>had a small drive and read somewhere that /var/log could grow so big
>from logs (from miss a missconfigured system, which being a newbie's
>newbie at the time could likely happen to me :-) that it could
>render my system unuseable. I think I just made the others /usr,/tmp
>seperate because I made /var seperate.Which is probably not needed
>anymore now that I am more experienced (in some things anyways).

As far as I can tell, experienced, knowledgeable people still do not share 
a consensus on this issue. In part it depends, I suppose, on the specific 
uses that a system will see. In part, perhaps, it also depends on how the 
individual weighs the relative risks of each approach. That's why I 
characterized my own practice as no more than personal perference and 
habit, not a prescription for all to follow.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
