From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I see all my partitions?
Date: Tue, 17 Dec 2002 22:21:19 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021217221548.02112180@celine>
References: <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:23 PM 12/17/02 -0500, Chris wrote:
>Hi, I'm a new Red Hat user and want to mount
>my winxp partition.  How do I display all the
>partitions, Win/Dos/Linux, in one place so I can
>give mount the correct partition name?

To look at all the partitions on one physical disk, you use "fdisk" pointed 
to the physical device for the drive. or example, if your drive is the IDE 
primary master, use "fdisk /dev/hda". Once in fdisk, choose "p" to "print" 
(actually, to display onscreen) the list of partitions and their associated 
device names. Then "q" to quit without saving. You'll need to be root to 
run fdisk.

If you have several hard disks, you need to do each separately, following 
this pattern

         IDE primary master      /dev/hda
         IDE primary slave       /dev/hdb
         IDE secondary master    /dev/hdc
         IDE secondary slave     /dev/hdd


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
