From: qwms-avib@dea.spamcon.org
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 16:14:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <S262192AbTFJUHn/20030610200745Z+191@vger.kernel.org>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> 
> booting from a DRDos702 floppy the BIOS sees the
> BusLogic controller OK but doesn't, automatically, 
> assign a drive letter to either CD.

A DOS bootdisk can be downloaded from www.bootdisk.com
that handles the following CDrom drives:
---------------------------
Adaptec UW (SCSI) CD or DVD
Adaptec U2 (LVD) CD or DVD
IDE/Atapi CD or DVD 
---------------------------
It automatically assigns a drive letter (R:) to the CDrom.


> The IDE HD on this machine does NOT have a Dos partition, 

No DOS partition is needed.  The system is booted from the
DOS bootdisk, which launches the installation routine from
the CDrom.

> so I'm shot down with Stevens' instructions as the two 
> images wont fit on a floppy.

The two images do not go on the the floppy.  They are read
(by loadlin.exe) directly from the CDrom.  

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
