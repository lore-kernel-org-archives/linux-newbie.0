From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: IRQ conflict
Date: Thu, 8 Aug 2002 18:28:28 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208081828.28793.sotl155360@earthlink.net>
References: <5.1.0.14.1.20020801231040.021a3080@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020801231040.021a3080@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi All;

Hope some one understands what I am saying more than I do and can explain what 
procedures I should utilize to correct the problem.

I have added a scsi card back into this box (It was in the box once before) 
and I am getting a IRQ conflict as follows: 

PCI: Found IRQ 11 for device 00:0e.0
IRQ routing conflict for 00:07.2, have irq 5, want irq 11
IRQ routing conflict for 00:07.3, have irq 5, want irq 11
scsi0 : Adaptec AIC7XXX EISA/VLB/PCI SCSI HBA DRIVER, Rev 6.2.5
        <Adaptec 2902/04/10/15/20/30C SCSI adapter>
        aic7850: Single Channel A, SCSI Id=7, 3/253 SCBs

I know that this box has worked with its current bios configuration under RH 
7.2 and that the modification made to the system at that time were not in the 
bios. The box was upgraded to RH 7.3 due to a massive human generated system 
failure.

What I would appreciate help with is how does one go about resolving IRQ 
conflicts.

Thanks
Frank




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
