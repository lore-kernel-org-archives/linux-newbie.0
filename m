From: Franklin Chua <fchua@ntsp.nec.co.jp>
Subject: Re: 2.4.22-bk14-libata1.patch.bz2 ?
Date: Thu, 18 Aug 2005 14:32:26 +0800
Message-ID: <43042B7A.3040400@hq.ntsp.nec.co.jp>
References: <4302DB56.1020704@hq.ntsp.nec.co.jp> <200508180822.15381.pa3gcu@zeelandnet.nl>
Reply-To: fchua@ntsp.nec.co.jp
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200508180822.15381.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Thanks for the response.

I'm forced to used 2.4.22 because this is the latest kernel version that
openss7 supports for their sctp implementation.

I already tried 2.4.31 but I'm having problems with threaded programs.
They kept on crashing on a newly compiled 2.4.x kernel.

Anyways, I'm already using 2.6.12.5 kernel so I don't have to worry
about sctp, sata, and thread problems anymore. =)


Richard Adams wrote:

>On Wednesday 17 August 2005 08:38, Franklin Chua wrote:
>  
>
>>Hello All,
>>
>>    Anybody who knows what bk## stands for and what does it mean in this
>>kernel patch?
>>Thanks.
>>
>>    2.4.22-bk14-libata1.patch.bz2
>>    
>>
>
>I belive the BK is an alias for jgarzik, the person who wrote the code for VIA 
>SATA support.
>The number 14 would be the patch serial number, ie, the 14th patch he wrote 
>for libata support.
>
>All his patches can be found at;
>kernel.org/pub/linux/kernel/people/jgarzik/
>
>On another note if you intend to use the above patch one can only advise you 
>to update your kernel to 2.4.31, its the latest kernel with support for SATA 
>VIA, which the patch above concerns, in other words all jgarzik's work is 
>included in that kernel so no need to patch anything.
>
>  
>
>>Regards
>>
>>    
>>
>
>--
>Regards Richard.
>
>
>
>  
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
