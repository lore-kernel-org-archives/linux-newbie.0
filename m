From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Subject: RE: Commenting out out_of_memory() function in __alloc_pages()
Date: Sun, 09 Jul 2006 13:09:57 +0100
Message-ID: <1152446997.27368.52.camel@localhost.localdomain>
References: <BKEKJNIHLJDCFGDBOHGMAEFDDCAA.abum@aftek.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEKJNIHLJDCFGDBOHGMAEFDDCAA.abum@aftek.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Abu M. Muttalib" <abum@aftek.com>
Cc: Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

Ar Sul, 2006-07-09 am 17:18 +0530, ysgrifennodd Abu M. Muttalib:
> but I am running the application on an embedded device and have no swap..
> what do I need to do in this case??

Use less memory ?

You can play with /proc/sys/vm/overcommit_ratio. That is set at 50%
which is usually a good safe value with swap. If you know the kernel and
kernel memory will be 20% of memory worst case you can set it to 80 and
so on.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
