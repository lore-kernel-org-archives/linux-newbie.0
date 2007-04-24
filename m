From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: PCI config space doubt
Date: Tue, 24 Apr 2007 12:03:32 +0530
Message-ID: <b115cb5f0704232333u13a27802ycf025724be8f59a3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=NMVTCMVuGs3lF3T1VrC2/RAU5sSbMHdsCS05BeQKABINialCRN4zlrobwUQVyq+E3rqfxQXC5f6t5BWFNlA4XmfiAUJO5+3biZTtG66kqtNSSpXdc5rcm1HrxCGT+SjUIWXkOKn8DGC6BlHx5i8fkcT8rQbuU4gYrX7PEzq40zo=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi,

Does Linux assign the resources to PCI devices? Or is it done by PCI firmware?

If it is done by firmware, I have the following doubt:

By looking at the PCI configuration space, I can only see Base Address
Registers (BARS) for the 6 resources a device can have. How does the
kernel know about the length and the flags of the resources (since
they do no seem to be present in PCI config space)?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
