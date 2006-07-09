From: "Abu M. Muttalib" <abum@aftek.com>
Subject: RE: Commenting out out_of_memory() function in __alloc_pages()
Date: Sun, 9 Jul 2006 17:33:22 +0530
Message-ID: <BKEKJNIHLJDCFGDBOHGMOEFDDCAA.abum@aftek.com>
References: <1152446997.27368.52.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1152446997.27368.52.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

>Use less memory ?
>
>You can play with /proc/sys/vm/overcommit_ratio. That is set at 50%
>which is usually a good safe value with swap. If you know the kernel and
>kernel memory will be 20% of memory worst case you can set it to 80 and
>so on.

Thanks again.

Can you please elaborate again on the last line!.

Regards,
Abu.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
