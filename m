From: "Sriram Narasimhan" <nsri@tataelxsi.co.in>
Subject: ADS8260 Hang
Date: Sun, 16 Mar 2003 15:58:44 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E7451DC.3050902@tataelxsi.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hello,

[ If this is the wrong mailing list please point me to the right one. 
Thank you]

I having been trying to bring up the ADS8260 board and incidentally ran 
into some problems.

I initially tried using Linux 2.4.1 kernel and it worked fine and the 
board was up.
I upgraded to 2.4.17 and I found out that the system started hanging 
during boot up.

I compiled 2.4.17 for ppc boot. (I already have ppc boot on my ADS board 
and I test my development by tftp boot'ing the kernel image.

I tried tracking down where the hang could be and ended up at the RFI 
instruction where its waiting to complete the MMU initialization. The 
system executes SYNC instruction and then hangs. (arch/ppc/kernel/head.S)

I tried comparing the file head.S between 2.4.1 and 2.4.17. I found out 
some patches done inside the 2.4.1 had been made generic. There were 
patches for the BAT initialization and RAM mapping on the MPC8260.

Is there an update on the files?
Should the patches be done for 2.4.17 as well ?

Any suggestions or pointers could be very helpful.

[Running on x86 with Red Hat 8.0 and cross compiling for PPC.]

Thank you.
Regards,
Sriram Narasimhan

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
