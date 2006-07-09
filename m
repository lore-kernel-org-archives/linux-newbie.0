From: "Abu M. Muttalib" <abum@aftek.com>
Subject: RE: Commenting out out_of_memory() function in __alloc_pages()
Date: Sun, 9 Jul 2006 17:18:06 +0530
Message-ID: <BKEKJNIHLJDCFGDBOHGMAEFDDCAA.abum@aftek.com>
References: <1152446107.27368.45.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1152446107.27368.45.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: Robert Hancock <hancockr@shaw.ca>, chase.venters@clientec.com, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

>It will refuse to load the program if that would use enough memory that
>the system cannot be sure it will not run out of memory having done so.
>You probably need a lot more swap.

thanks for ur reply..

but I am running the application on an embedded device and have no swap..

what do I need to do in this case??

Regards,
Abu.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
