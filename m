From: Pawan Deepika <pawan_deepika@yahoo.com>
Subject: [linux-2.4.18] some doubt in via-rhine.c
Date: Wed, 21 May 2003 09:14:49 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030521161449.83488.qmail@web41610.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

 I am learning device driver only now. I was going
through the source code in via-rhine.c. What I
understand till now is that in Memory-mapped devices,
I/O operation is performed using
read(b/w/l)/write(b/w/l) functions while in IO mapped
devices(port based device) it is done using
in/out(b/w/l). Am I right?

But in via-rhine.c I notice use of inb and outb even
in memory mapped case(code is shown below)

------------------------------------------------------
#ifdef USE_MEM
530 static void __devinit enable_mmio(long ioaddr, int
chip_id)
531 {
532         int n;
533         if (chip_id == VT3043 || chip_id ==
VT86C100A) {
534                 /* More recent docs say that this
bit is reserved ... */
535                 n = inb(ioaddr + ConfigA) | 0x20;
536                 outb(n, ioaddr + ConfigA);
537         } else if (chip_id == VT6102) {
538                 n = inb(ioaddr + ConfigD) | 0x80;
539                 outb(n, ioaddr + ConfigD);
540         }
541 }
542 #endif
-----------------------------------------------------

Can anyone tell me how does it work here? Also, don't
we need to allocate I/O ports(using request_region() )
before performing any inb/outb operations?

Please advise.

Can anyone also suggest me good pointers to get some
detailed information about issues like what does
happen when ioremap() is called and when is it
neccessary to do this?

Thanks & regards,
Deepika



__________________________________
Do you Yahoo!?
The New Yahoo! Search - Faster. Easier. Bingo.
http://search.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
