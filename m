From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: SCSI Card Recognized Incorrrectly
Date: Tue, 29 Oct 2002 19:39:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210291939.32920.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi Folks

Thanks in advance for listing to my small knowledge problem.

Running RH 7.3 I have a HP 6100 scanner which my system recognizes as a HP 
24xx scanner.

To me the problem appears to exist because the on installation of the system 
RH 7.3 automatically recognizes the SCSI card as (dmesg):

SCSI0 : Adaptec AIC7XXX EISA/VLB/PCI SCSI HBA DRIVER, Rev 6.2.5
        <Adaptec 2902/04/10/15/20/30C SCSI adapter>
        aic7850: Single Channel A, SCSI Id=7, 3/253 SCBs

which is the right make but the wrong model.

The card is an Adaptec 2906.

How does one go about changing the configuration to the correct card?

Thanks
Frank

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
