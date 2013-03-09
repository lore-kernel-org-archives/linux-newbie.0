From: aktlin115 <aktlin115@gmail.com>
Subject: Re: memory zone and slab
Date: Sat, 9 Mar 2013 15:48:15 +0000
Message-ID: <CAGLPcqD4srqMGbru6e+ki8BycM6B39Nw+i_Dgi=sf27NMdqSJA@mail.gmail.com>
References: <20130307143514.GD2467@debian.localdomain>
	<2DDB038789B01B4B80B0D3F1FF7CBDC2064CE46A@lhreml509-mbb.china.huawei.com>
	<20130309020413.GA2515@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:x-received:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type;
        bh=EemEqZ/MYpxM70Ae/qFiET9zdjwYvMxcwAt1Jp4W5Yg=;
        b=JD0NJTjbBRrhe6LZI222fnGOlD8dGMYY3EKANEesxf9ojYUiALl/KYEjh8lStxngH+
         HeV/meNx5XDn0LkPXfp0CI5xZSUN3I/tXXvRmN5T0+l1aF649N73kBsBh8jBX/UxrHU9
         SH006YXCYxN421PnyeojuMNmAiAFpUTN2twgXCQu0uVHUwTYKWBe0zfpQp9tdJ4EInD4
         07/AZnNXRJ+bnEYzEGd9TtNOiqIjiu5Hqe28NW4WuCCKWJiseZsvwdEf61VlhdyU2KQJ
         jSdtNcG2cN4LHgKz9/narPR2WZ8IBNH5OUzu8z32WXdRbuvch2qWuGse/fhJrE1Vn/Lt
         Sv3Q==
In-Reply-To: <20130309020413.GA2515@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ishare <june.tune.sea@gmail.com>
Cc: Mario Smarduch <Mario.Smarduch@huawei.com>, linux-newbie@vger.kernel.org

Hi,

I'm not sure I understand your question.

The slab allocator groups objects into "caches".
Each cache contains objects of the _same_ type.
The area of memory that contains the cache is divided into "slabs"
and each slab consists of one or more contiguous _pages_.
If a page belongs to a slab it has the "PG_slab" page->flags bit set
(see include/linux/page-flags.h).

Pages tend to belong to a particular zone.

I hope this helps.

Kind regards,
Aaron

On Sat, Mar 9, 2013 at 2:04 AM, ishare <june.tune.sea@gmail.com> wrote:
> On Fri, Mar 08, 2013 at 11:44:37AM +0000, Mario Smarduch wrote:
>>
>> The zonelists are initialized in 'build_all_zonelists()'
>> called by 'start_kernel()'. But prior to that point
>> there is allot of other code that determines the
>> various zones and holes a key function is free_area_init_node().
>> But that function will also reference prior initialization
>> in 'setup_arch()' which may take you all the way back
>> to bootloader
>> Nodes have zones, and zones define what the memory is
>> appropriate for, DMA or lowmem, Normal memory or High memory
>> for 32 bit. For 64 bit there are fewer zones just primarily
>> 32 bit DMA and normal 64 bit. Zones are further divided
>> into free areas of 2^n consecutive pages.
>>
>> Slabs are typically pages carved up into smaller units of
>> allocations.
>
>   Does this mean slab is based on zone ?
>   slab is just a optimized algorithm for normal allocator?
>
>   thanks!
>
>
>
>
>
>> There are several kernel books but outdated, but nevertheless good
>> starting points, just search for 'Kernel Internals'
>>
>> BR,
>>  Mario.
>>
>>
>> -----Original Message-----
>> From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of ishare
>> Sent: Thursday, March 07, 2013 3:35 PM
>> To: linux-newbie@vger.kernel.org
>> Subject: memory zone and slab
>>
>>
>>    when does the memory zonelist initialized in kernel ?
>>
>>    what is the difference between zonelists and slab for memory manage .
>>
>>    are there some man docs or sites  helpful to understand this ?
>>
>>    thanks!
>>
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
