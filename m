From: ratheesh kannoth <ratheesh.ksz@gmail.com>
Subject: ia64 linux question
Date: Wed, 14 Nov 2012 15:41:14 +0530
Message-ID: <CAGZFCEFJrGD8aUu8kBHD8C0WGEv0NnD1=RAs=ve-DwisWA50oA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=p1lnweNIV7HBrKmwOuldNoAcnV6KTabdTemaKQiG/ek=;
        b=Xm/cL0oR4SWxRRSLMXLLUy2gRS4JYUbUUsK2iLzhoTL5ZdQ54BxmHosYmsrqlgm34E
         np5IZbjDrylcJK6uYMgJTAj44uF8BzaeqZi2kqjk6QSQjxbNzHDf187ZBUr4aMQDflAi
         ZgtdHiQbN1BG0M9nlJLNivwjf31xLEjqiBkw2A6Px+LFl9tHsWYt4qH6tq8jzdyrGB2Q
         3qWKmygpAboKxCgL2ZgeToZz/9n0g7YTqH+WGgNJ8HEiR2vM4rF2m9/C89ijarqokMIz
         +pMQ3wkL6Gt2zN3qzd1H+V/T05EcplnBmUIlIOZtWmFuzOYt9qWD5Toz9dFDie5M02p9
         yYRQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>, e1000-devel@lists.sourceforge.net

Hi,

I am running  2.6.29.1 on ia-64 hardware.


when i run  below code in a module

void *ptr =  kmalloc( 10 ,GFP_KERNEL )

i got a valid ptr ( ptr != NULL ) ..but i saw that

ptr == vitr_to_phy(ptr ) == virt_to_bus(ptr )

1. why   the physical and vitrual address  are same ?
2. is this sthing that we can change in kernel config during kernel
compilation ?

-Ratheesh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
