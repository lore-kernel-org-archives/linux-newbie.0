From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: Commenting out out_of_memory() function in __alloc_pages()
Date: Mon, 10 Jul 2006 01:15:37 +1000
Message-ID: <44B11D99.5090303@yahoo.com.au>
References: <BKEKJNIHLJDCFGDBOHGMIEFJDCAA.abum@aftek.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEKJNIHLJDCFGDBOHGMIEFJDCAA.abum@aftek.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Abu M. Muttalib" <abum@aftek.com>
Cc: Alan Cox <alan@lxorguk.ukuu.org.uk>, Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

Abu M. Muttalib wrote:
>>Abu, I guess you have turned on CONFIG_EMBEDDED and disabled everything
>>you don't need, turned off full sized data structures, removed everything
>>else you don't need from the kernel config, turned off kernel debugging
>>(especially slab debugging).
> 
> 
> Do you mean that I have configured kernel with CONFIG_EMBEDDED option??

I am guessing you have, if you a concerned about memory usage. Have you?

-- 
SUSE Labs, Novell Inc.
Send instant messages to your online friends http://au.messenger.yahoo.com 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
