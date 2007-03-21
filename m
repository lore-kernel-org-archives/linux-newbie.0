From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Need for a new spinlock API?
Date: Wed, 21 Mar 2007 09:23:28 +0530
Message-ID: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=XZfuInNd8HOcoj4RRXqHY/yiMpcrZPFAQWu0VdYHV669Hv2NiLHrwwnPc+ENfRsF2YuAXctlTe0vJ2bOya7k0oBDhoicW6+VNrXj3SpGM/4oON3MNQ7Abw0Ncsx9ar1znWjFSqBaZQ2f3FlaR34E+U3NbLwXGzQppRlfIdHIl/s=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernel mail <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi,

We often have a case where a driver wants to access its data structure
in process context as well as in interrupt context (in its ISR). In
such scenarios, we generally use spin_lock_irqsave() to grab the lock
as well as disable all the local interrupts. AFAIK, disabling of local
interrupts is required so as to avoid running your ISR (which needs
the lock) while process context is holding the lock. However, this
also disables any other ISRs (which DO NOT need the lock) on the local
processor.

Isn't this sub-optimal? Shouldn't there be a finer grained locking?

I was wondering if it is possible to have a spin lock API that grabs
the lock and disables ONLY the specified irq on the local processor?

Am I missing something here?

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
