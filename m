From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: Commenting out out_of_memory() function in __alloc_pages()
Date: Sun, 09 Jul 2006 22:03:54 +1000
Message-ID: <44B0F0AA.20708@yahoo.com.au>
References: <BKEKJNIHLJDCFGDBOHGMAEFDDCAA.abum@aftek.com> <1152446997.27368.52.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1152446997.27368.52.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: "Abu M. Muttalib" <abum@aftek.com>, Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

Alan Cox wrote:
> Ar Sul, 2006-07-09 am 17:18 +0530, ysgrifennodd Abu M. Muttalib:
> 
>>but I am running the application on an embedded device and have no swap..
>>what do I need to do in this case??
> 
> 
> Use less memory ?

Abu, I guess you have turned on CONFIG_EMBEDDED and disabled everything
you don't need, turned off full sized data structures, removed everything
else you don't need from the kernel config, turned off kernel debugging
(especially slab debugging).

If you still have problems, what does /proc/slabinfo tell you when running
your application under both 2.4 and 2.6?

-- 
SUSE Labs, Novell Inc.
Send instant messages to your online friends http://au.messenger.yahoo.com 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
