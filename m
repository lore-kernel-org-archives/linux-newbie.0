From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to add a new partition to an existing Red HAT 8
Date: Sun, 20 Feb 2005 08:33:06 -0800
Message-ID: <5.1.0.14.1.20050220082853.02068718@celine>
References: <5.1.0.14.1.20050220071846.01f48560@celine>
 <5.1.0.14.1.20050220071846.01f48560@celine> <4218B318.3020803@cwazy.co.uk>
Mime-Version: 1.0
In-Reply-To: <4218B318.3020803@cwazy.co.uk>
References: <5.1.0.14.1.20050220071846.01f48560@celine>
 <5.1.0.14.1.20050220071846.01f48560@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:56 AM 2/20/2005 -0500, Jim Nelson wrote:
>Ray Olszewski wrote:
>
>>But you only mention 3 partitions above, and I don't know if that is a 
>>reporting error on your part or an indication of some other problem. So 
>>the first thing you should do is check your partition table as I did 
>>above (run fdisk and use its p command).
>
>If he ran with the RH defaults, then it made a 100MB /boot partition, a 
>swap partition, and then the / partition.  That'll fill the partition 
>table right up on a dual-boot system.
>
>Jim

That certainly makes sense ... but in his message he did include a list of 
partitions, and it only had 3 entries (only one linux partition, so no 
/boot partition, presumably).

If he just missed the fourth one ... he didn't say *how* he checked the 
partition list ... the procedure I described will find it for him, and he 
may have something of a mess on his hands (depending on the geometry of the 
drive as the BIOS sees it).

If he did not miss it, and he really has only 3 partitions, then he has a 
different problem and needs different help.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
