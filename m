From: david mattatall <davidsmind@linuxbasics.com>
Subject: No go for DMA
Date: Sat, 28 Sep 2002 13:52:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209281353.00228.davidsmind@linuxbasics.com>
Reply-To: davidsmind@linuxbasics.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I've noticed quite a slowdown on my systeml lately so I was looking through my 
dmesg for anything...odd.

This is what I found:

David@davidsmind.kicks-ass.net# dmesg|grep -i dma
    ide0: BM-DMA at 0xc000-0xc007, BIOS settings: hda:DMA, hdb:DMA
    ide1: BM-DMA at 0xc008-0xc00f, BIOS settings: hdc:pio, hdd:pio
hda: dma_intr: status=0xd0 { Busy }
hda: DMA disabled

okaaay, what the heck is going on here? I've turned on dma with hdparm...but 
according to hdparm -Tt tests (which seem to be REALLY slow) it doesn't seem 
to do much...help?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
