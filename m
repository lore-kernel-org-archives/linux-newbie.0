From: "bj" <bhamal@wlink.com.np>
Subject: RE: How to add a new partition to an existing Red HAT 8
Date: Sun, 20 Feb 2005 21:40:03 +0545
Message-ID: <000901c5176a$222b9160$0db3fea9@kath.state.gov>
References: <5.1.0.14.1.20050220082853.02068718@celine>
Reply-To: <bhamal@wlink.com.np>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050220082853.02068718@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi !

I think I did hit the 4 partition limit .

The result of my fdisk -l /dev/hda is as ffs:-


Disk /dev/hda: 255 heads, 63 sectors, 7297 cylinders
Units = cylinders of 16065 * 512 bytes

   Device Boot    Start       End    Blocks   Id  System
/dev/hda1   *         1       574   4610623+   7  HPFS/NTFS
/dev/hda2           575      1097   4200997+  83  Linux
/dev/hda3          1098      1228   1052257+  82  Linux swap
/dev/hda4          1229      1835   4875727+   7  HPFS/NTFS


Thank you all for your help .

bj



-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org]On Behalf Of Ray Olszewski
Sent: Sunday, February 20, 2005 10:18 PM
To: linux-newbie@vger.kernel.org
Subject: Re: How to add a new partition to an existing Red HAT 8


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

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
