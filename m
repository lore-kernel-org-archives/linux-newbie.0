From: Peter <pfheiss@philonline.com>
Subject: Sound Lost
Date: Sun, 01 Jun 2003 16:01:25 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030601080130.340C0103F4@pfheiss>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

I upgraded RH7.3 and the sound is gone.

Old kernel-2.4.18-24.7.x.i686; new kernel-2.4.20-13.7.i686

dmesg:

Trident 4DWave/SiS 7018/ALi 5451,Tvia CyberPro 5050 PCI Audio, version 
0.14.10h, 13:32:09 May 12 2003
PCI: Found IRQ 11 for device 00:01.4
PCI: Sharing IRQ 11 with 00:09.0
trident: SiS 7018 PCI Audio found at IO 0xe000, IRQ 11
ac97_codec: AC97  codec, id: CMI65 (CMedia)
AC97 codec does not have proper volume support.

The last line of the message appears on the console every now and then.

How do I get my sound back?

Thanks & regards






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
