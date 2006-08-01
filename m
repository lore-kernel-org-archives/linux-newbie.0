From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Single physical memory location has multiple virtual addresses?
Date: Tue, 1 Aug 2006 12:21:36 +0530
Message-ID: <292693080607312351m116cdd2wd4d7fd889d46581f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

Suppose I have a kernel module that dynamically allocates memory (via
kmalloc) for user space. Now my doubt is whether this chunk of
physical memory would have two virtual addresses?

- One virtual address that will be used by kernel to refer to the
memory (the address returned by kmalloc)

- One virtual address as will be seen by the user space application?

Is my understanding correct?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
