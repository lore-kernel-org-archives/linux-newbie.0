From: "Ralica Kirilova" <larry@podovinastilki.com>
Subject: Re: Slackware, RAID1 problem SOLVED
Date: Fri, 16 Apr 2004 18:00:04 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000701c423c3$8041d750$0500a8c0@sea>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, all
Problem solved :))))))))
> 6. lilo -r /mnt, lilo, lilo -q, etc. Here is the problem. 
rdev /mnt/boot/vmlinuz /dev/md0
lilo -C /mnt/etc/lilo.conf
That's it :)))



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
