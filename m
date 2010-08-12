From: Rick Brown <rick.brown.3@gmail.com>
Subject: Understanding the need for high memory
Date: Thu, 12 Aug 2010 22:37:17 +0530
Message-ID: <AANLkTimSaWmyvFrqbbuksHHTnJqHOKQX6fHR5XvaNkGm@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:content-type;
        bh=FFt5aVJ+JA7nt09KXXpf7WRF6l1w1rolbxgrDPHgzMQ=;
        b=DjfASd8pk3zTQS+rMMFL1K6cCpCCixuoFKEWdwCR4bmgmzkSSaU+nl/6Dds4ADRz/i
         CsKJKwbQz9ji+tTM5ikXEVkL8vE+jVgTR3vhpPlSyrxJ1YYSV9C29NjZqViCDbHHJv2I
         cFK0zqmg7NcSQrL4HmiM8GjHgXmX8XTZv9pYQ=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

I was trying to understand the need for HIGH MEMORY ZONE, and I found this:

http://kerneltrap.org/node/2450

From the above, what I understood is that the need for high memory
zone arised out of lack of virtual addresses for the kernel. Since, in
a 3G/1G split, the kernel has only 1 GB of virtual addresses that it
can access, and thus it cannot directly access any physical memory >
1G before mapping into into NORMAL ZONE. Is my understanding correct?

First question, does that mean if the choose the 2G/2G kernel split,
the Zone NORMAL will become upto 2GB and higher memory will also start
from 2GB?

Second question, in certain texts (Linux kernel development by Robert
Love), it is mentioned that x86 cannot directly address physical
memory above 1GB and that was the reason for high memory. Can some one
throw more light on that?

Thanks,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
