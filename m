From: Ray Olszewski <ray@comarre.com>
Subject: Re: partitioning
Date: Sun, 25 Jan 2004 08:42:54 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040125083200.01fa3928@celine>
References: <200401252137.39975.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200401252137.39975.wheds8@ms66.hinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:37 PM 1/25/2004 +0800, S. Barret Dolph wrote:
>I am probably getting too picky about repartitioning my drive but I want 
>it to
>be set up for a long time. I never use all the space in my harddrive even
>though it is relatively small. (I only use it for work and don't play any
>games.)
>
>Questions......
>
>My old setup
>
>sda1    /               1g
>sda5            /swap   1024k  (512ram)
>sda6            /usr            6g
>sda7            /home   10g
>
>I will be using Sourcemage which puts sources in /var so I have been thinking
>about taking 3g out of home and making a /var of 3g.
>
>  I will probably take another 3 out of home and add it to usr/ but that is
>probably overkill. Neither use too much.
>
>I am confused about where /swap should go. I have a SCSI drive and from 
>what I
>read that should be on the outside. So should I put /swap at sda8? (Given
>that I have added /var.)
>
>I had a /home because it was convenient to upgrade with CD's when I only 
>had a
>56 modem. Now that I am using a source based installation is the /home
>unnecessary as I am the only user.
>
>Is having a /tmp partition necessary?

Questions of the sort you pose here are hard to answer because they do not 
really have "right" answers. The best partitioning strategy for a specific 
system depends on the anticipated uses for that system, the distro 
involved, specifics of its hardware, and probably yhe personal style of the 
person who will admin it.

My own preference, just as an example, is to minimize partitioning, to 
avoid later needs to repartition when my needs change. So for a 1-drive 
system, I typically do something like this --

         hda1 = small (50 MB or so) partition, mounted at /boot
         hda2 = midsize (256-1024 MB) partition, used as swap
         hda3 = rest of disk, mounted as / (root partitionj)

Sometimes I use a 4-partition setup, varying the above as

         hda3 = between 10 GB and 20 GB, mounted as /
                 (depends a lot on the size of the drive, of course)
         hda4 = rest of disk, mounted as /home

But even there I have systems that depart from those rules ... and, of 
course, multi-drive systems get more complex. But I never find it desirable 
to set up separate partitions for /usr, /var, and /tmp ... I've found that 
making them separate just introduces more opportunities for things to go wrong.

That's just me, though ... this is an area where reasonable people come to 
different comculsions about the best approach.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
