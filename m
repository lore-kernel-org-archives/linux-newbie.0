From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: promiscus mode
Date: Thu, 27 Jan 2005 05:42:32 -0500
Message-ID: <41F8C598.60505@cwazy.co.uk>
References: <5.1.0.14.1.20050126231618.02ac3940@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050126231618.02ac3940@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: muruganandam@softhome.net
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> At 12:30 PM 1/25/2005 +0530, Muruganandam wrote:
> 
>> Hi all,
>>
>>   How to enable the Promiscus mode in the kernel,inorder to capture the
>> packets.Advance Thanks
> 
> 
> It would be easier to answer this question if I better understood the 
> level you are asking it at.
> 
> The beginner-level answer to it is to use an application and associated 
> library (e.g, tcpdump or ethereal, and libpcap) that supports setting 
> promiscuous mode.
> 
> For the details of how to set it in a NIC driver, I'd suggest referring 
> to the source for libpcap; my quick scan of it leads me to suggest 
> checking the pcap_open_live() function call.
> 
> Of course, you need root access to do any of this.
> 
> 

And it may not work if you have some obscure hardware - all the common Ethernet 
drivers and chipsets support promiscuous mode, but some of the older boards and 
embedded chips may suprise you.

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
