From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: How to add a new partition to an existing Red HAT 8
Date: Sun, 20 Feb 2005 10:56:08 -0500
Message-ID: <4218B318.3020803@cwazy.co.uk>
References: <5.1.0.14.1.20050220071846.01f48560@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-reply-to: <5.1.0.14.1.20050220071846.01f48560@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:

> But you only mention 3 partitions above, and I don't know if that is a 
> reporting error on your part or an indication of some other problem. So 
> the first thing you should do is check your partition table as I did 
> above (run fdisk and use its p command).
> 

If he ran with the RH defaults, then it made a 100MB /boot partition, a swap 
partition, and then the / partition.  That'll fill the partition table right up on 
a dual-boot system.

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
