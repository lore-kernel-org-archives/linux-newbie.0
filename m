From: "Eng Se-Hsieng" <g0202512@nus.edu.sg>
Subject: 2.5.59: Kernel: No module found in object
Date: Fri, 28 Feb 2003 15:44:57 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <720FB032F37C0D45A11085D881B03368A2B351@MBXSRV24.stu.nus.edu.sg>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org
Cc: linux-newbie@vger.kernel.org

Dear all,

I have to get the Nokia D211 working in the 2.5.59 kernel. I tweaked the
driver files (which are meant for 2.4.x kernels) and it compiles and
installs fine but when I insert the PCMCIA device, I get:

cardmgr[1302]: socket 0: Nokia D211
cardmgr[1302]: executing: 'modprobe nokia_cs'
cardmgr[1302]: +FATAL: Module nokia_cs not found
cardmgr[1302]: modprobe exited with status 1
cardmgr[1302]: executing: 'insmod /lib/modules/2.5.59/pcmcia/nokia_cs.o'
kernel: No module found in object
cardmgr[1302]: +Error inserting '/lib/modules/2.5.59/pcmcia/nokia_cs.o':
-1 Invalid module format
cardmgr[1302]: insmod exited with status 1
cardmgr[1302]: get dev info on socket 0 failed: Resource temporarily
unavailable.

I would really appreciate any help on this. 

Thank you.

Regards,
Se-Hsieng
(linux-newbie)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
