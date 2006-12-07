From: Neal Morrison <webmaster@nams.de>
Subject: Kernel read/write Blocksize
Date: Thu, 7 Dec 2006 11:23:20 +0100
Message-ID: <20061207112320.38bfc62a@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello everybody,

some of my colleagues told me that the internel Buffsize ist 4k.
Yesterday I saw in the Kernelconfigurations that the default value for
the stacksize is 8k and you can set it to 4k.

Kernel hacking -> Use 4Kb for kernel stacks instead of 8Kb   



So my question is: Is the stacksize simular to the read/write size? 
                   And what ist the best read/write size when I build my
                   own networkingprogramms?

-- 
Regards Neal
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
