From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: adjusting partitions without a reinstall
Date: Sun, 18 Apr 2004 18:27:29 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40832B01.6010304@bcgreen.com>
References: <012701c42314$55a855f0$530a0a0a@rutgersinsurance.com> <20040415133513.A8606@cougar.aero-vision.com> <01eb01c4231a$166bec70$530a0a0a@rutgersinsurance.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <01eb01c4231a$166bec70$530a0a0a@rutgersinsurance.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Adam Lang <aalang@rutgersinsurance.com>, linux-newbie <linux-newbie@vger.kernel.org>

FOr changing partitions, parted would be the way to go.

On the other hand, since you're running RAID 1, you should be able to
swap one drive for a larger one, rebuild the mirror, then swap the second
drive and rebuild again.
After swapping out the boot drive, you may have to re-install grub/lilo/whatever.

If you can hot-swap your drives, this should be seamless for the users.
If you have to poweroff between boots, then you'll run into a problem with
grub not being installed on your primary drive after boot.

This would require that you boot with an emergency disk and re-installing
grub. (you'll need a version of grub.conf that says to find the boot partition
on the secondary drive).  Once the system is up, then you can rebuild the
mirror again. (or you can do it from the emergency boot system)

Adam Lang wrote:
> Hmm, good idea, but unfortunately that won't work for me either.  The server
> has two hot swap RAID 1 drives.  To add anything else, it will require
> external storage.
> 
> Basically I am just looking for a temporary fix until later down the road
> when I go with more storage.  The couple gigs I would be moving into the
> root partition will suffice for a while.


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
