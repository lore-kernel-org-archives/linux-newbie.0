From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: partitons and proper order
Date: Mon, 1 Nov 2004 20:33:12 +0100
Message-ID: <200411012033.12853.pa3gcu@zeelandnet.nl>
References: <20041101070754.CE0D9255BA@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041101070754.CE0D9255BA@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Monday 01 November 2004 08:07, Peter wrote:
> mike@kevino.org said:
> >  /boot partition within the first 500 megabytes of the drive.
>
> 20 MB would be more than enough. I have 3 kernels on my /boot and use a
> little less than 10 MB

For what its worth.

AFAIK the reason why we ever needed a /boot partition was a way around lilo's 
former limit of booting from a partition ( or i had better say) a kernel 
image which was placed beyond the 1023 cylinder limit of old style BIOS's.
lilo does not have that limit anymore nor do most (i think i could say "all" 
bios's) now a days. So what i am saying is the following.

Today we don't need a separate /boot partition, one may have there own reasons 
for doing so, but linuxwise, there is no reason to have one thesedays because 
the old <1023 cyl, limit is gone for ever.


> Regards

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
