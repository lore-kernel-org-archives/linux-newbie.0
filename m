From: Ray Olszewski <ray@comarre.com>
Subject: Re: promiscus mode
Date: Wed, 26 Jan 2005 23:22:23 -0800
Message-ID: <5.1.0.14.1.20050126231618.02ac3940@celine>
References: <ct4ppu$upv$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <ct4ppu$upv$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-71C24702"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:30 PM 1/25/2005 +0530, Muruganandam wrote:

>Hi all,
>
>   How to enable the Promiscus mode in the kernel,inorder to capture the
>packets.Advance Thanks

It would be easier to answer this question if I better understood the level 
you are asking it at.

The beginner-level answer to it is to use an application and associated 
library (e.g, tcpdump or ethereal, and libpcap) that supports setting 
promiscuous mode.

For the details of how to set it in a NIC driver, I'd suggest referring to 
the source for libpcap; my quick scan of it leads me to suggest checking 
the pcap_open_live() function call.

Of course, you need root access to do any of this.




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.300 / Virus Database: 265.7.4 - Release Date: 1/25/2005


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
