From: Peter <heisspf@skyinet.net>
Subject: Re: No Locate for User
Date: Tue, 26 Apr 2005 15:29:02 +0800
Message-ID: <200504260729.j3Q7T28e001337@skyinet.net>
References: <426DD4D1.3000505@nwonknu.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 25 Apr 2005 22:42:41 MST."
             <426DD4D1.3000505@nwonknu.org> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks Greg but nothing doing.

ll /usr/bin/slocate
-rwxr-sr-x  1 root slocate 26652 2004-05-30 11:52 /usr/bin/slocate

@~:$ locate fips
warning: locate: could not open database: /var/lib/slocate/slocate.db: 
Permission denied

noop@nwonknu.org said:
> 'chroot /mnt/rh9root locate fips' ought to work fine. 

Yes as su and that is exactly what I want to avoid to go su for locate since I 
use this command relatively frequently.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
