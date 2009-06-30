From: Korkakakis Nikos <korkakak@ceid.upatras.gr>
Subject: kmalloc returns twice  the same memory address?
Date: Tue, 30 Jun 2009 21:08:02 +0300
Message-ID: <4A4A5482.3050108@ceid.upatras.gr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

Hi there all,

first of all I am writing a kernel module to handle some device using;
uname -a: Linux localhost 2.6.30-gentoo-r1 #1 SMP Sun Jun 28 02:52:23
EEST 2009 i686 AMD Phenom(tm) II X4 940 Processor AuthenticAMD GNU/Linux.
During  the init phase of the module I allocate some memory via
kmalloc() in the following manner;

    omm_dev_buffer = kmalloc(PAGE_SIZE, GFP_KERNEL | GFP_DMA | GFP_ATOMIC);
    if (!omm_dev_buffer) {
        return -ENOMEM;
    }
    clear_buffer (omm_dev_buffer, PAGE_SIZE);
    printk("omm_dev_init: kmalloc'ed omm_dev_buffer OK\n");
    omm_messages = kmalloc(PAGE_SIZE, GFP_KERNEL | GFP_DMA);
    printk ("dev_buff @ 0x%x messages @
0x%x\n",omm_dev_buffer,omm_messages);
    if (!omm_messages) {
        kfree(omm_dev_buffer); /* failing at this point means that the
other allocation succeeded */
        return -ENOMEM;
    }
    clear_buffer (omm_messages, PAGE_SIZE);


where clear_buffer is just a wrapper for memset. My problem is that the
two consecutive memory allocation operations return the same memory
space (both pointers point the same address). If I change the malloc'ed
size ie PAGE_SIZE*2 then the process works as expected. kzalloc behaves
the same way, while alloc_page with the same flags(i.e.
alloc_page(GFP_KERNEL | GFP_DMA | GFP_ATOMIC) ) return a different
memory space and works as expected.

What am I missing here?

Thank's in advance :D

Nikos
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
