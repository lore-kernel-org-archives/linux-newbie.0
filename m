From: "Abu M. Muttalib" <abum@aftek.com>
Subject: RE: Commenting out out_of_memory() function in __alloc_pages()
Date: Sun, 9 Jul 2006 20:04:52 +0530
Message-ID: <BKEKJNIHLJDCFGDBOHGMIEFJDCAA.abum@aftek.com>
References: <44B0F0AA.20708@yahoo.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <44B0F0AA.20708@yahoo.com.au>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nick Piggin <nickpiggin@yahoo.com.au>, Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

>Abu, I guess you have turned on CONFIG_EMBEDDED and disabled everything
>you don't need, turned off full sized data structures, removed everything
>else you don't need from the kernel config, turned off kernel debugging
>(especially slab debugging).

Do you mean that I have configured kernel with CONFIG_EMBEDDED option??

>If you still have problems, what does /proc/slabinfo tell you when running
>your application under both 2.4 and 2.6?

Will find out the differences..

Regards,
Abu.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
