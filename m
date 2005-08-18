From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: 2.4.22-bk14-libata1.patch.bz2 ?
Date: Thu, 18 Aug 2005 08:22:15 +0200
Message-ID: <200508180822.15381.pa3gcu@zeelandnet.nl>
References: <4302DB56.1020704@hq.ntsp.nec.co.jp>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4302DB56.1020704@hq.ntsp.nec.co.jp>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: fchua@ntsp.nec.co.jp
Cc: linux-newbie@vger.kernel.org

On Wednesday 17 August 2005 08:38, Franklin Chua wrote:
> Hello All,
>
>     Anybody who knows what bk## stands for and what does it mean in this
> kernel patch?
> Thanks.
>
>     2.4.22-bk14-libata1.patch.bz2

I belive the BK is an alias for jgarzik, the person who wrote the code for VIA 
SATA support.
The number 14 would be the patch serial number, ie, the 14th patch he wrote 
for libata support.

All his patches can be found at;
kernel.org/pub/linux/kernel/people/jgarzik/

On another note if you intend to use the above patch one can only advise you 
to update your kernel to 2.4.31, its the latest kernel with support for SATA 
VIA, which the patch above concerns, in other words all jgarzik's work is 
included in that kernel so no need to patch anything.

> Regards
>

--
Regards Richard.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
