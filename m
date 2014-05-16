From: Kun Huang <gareth@openstacker.org>
Subject: use cases for mmap
Date: Fri, 16 May 2014 10:14:30 +0800
Message-ID: <CAMKaFC_OoDFjD-2a0GNYEPANVxXztCQL15U5u-zNFqR5Ud2J6g@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi guys

I'm reading&learning kernel codes and have a question for mmap. Many
guys said mmap is good for sharing data between processes[0]. But how
does mmap do that?

In document, mmap is defined as:

mmap(void *addr, size_t len, int prot, int flags, int fd, off_t offset)

That addr is virtual address and different processes have different
address space. So after put a file into memory via addr$offsett, how
does another process read that data?

Btw, are there some common use cases for mmap, in application layer?

[0] http://stackoverflow.com/questions/258091/when-should-i-use-mmap-for-file-access


Thanks :)

Gareth
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
