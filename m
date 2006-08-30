From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Spinlock query
Date: Wed, 30 Aug 2006 07:42:32 +0530
Message-ID: <7783925d0608291912i3f04d460kc9edebf9d358dbc3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hi,

In my driver (Process context), I have written the following code:

--------------------------------------------
spin_lock(lock)
...
//Critical section to manipulate driver data
...
spin_u lock(lock)
---------------------------------------------

I have written similar code in my interrupt handler (Interrupt
context). The driver data is not accessed from anywhere else. Is my
code safe from any potential concurrency issues? Is there a need to
use spin_lock_irqsave()? In both the places?

I intend to run the driver on SMP machine.

Regards,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
