From: "Eng Se-Hsieng" <g0202512@nus.edu.sg>
Subject: 'Irq_vectors.h: No such file or directory' in 2.5.59
Date: Wed, 26 Feb 2003 23:23:14 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <720FB032F37C0D45A11085D881B03368A2B30F@MBXSRV24.stu.nus.edu.sg>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,

While compiling the Nokia D211 driver on my computer, I received the
following error message.

/usr/src/linux-2.5.59/include/asm/irq.h:16:75: irq_vectors.h: No such
file or directory

Line 15-16 of the above file is as follows:
/* include comes from machine specific directory */
#include "irq_vectors.h"

I've read some mails about how the file irq_vectors.h is actually found
in usr/src/linux-2.5.59/arch/i386/mach-generic but the only mach*
directories I have are 

mach-default, mach-visws and mach-voyager. 

Did I forget to download something or compile something in my kernel?

Grateful if someone could help with where and how to find the
irq_vectors file in the 2.5.59 kernel sources.

Thank you.

Regards,
Se-Hsieng


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
