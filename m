From: Rajendra <rpm@solidcore.com>
Subject: Re: Single physical memory location has multiple virtual addresses?
Date: Tue, 01 Aug 2006 15:55:25 +0530
Message-ID: <44CF2C15.9030908@solidcore.com>
References: <292693080607312351m116cdd2wd4d7fd889d46581f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080607312351m116cdd2wd4d7fd889d46581f@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org
Cc: linux-newbie@vger.kernel.org

The address returned by kmalloc is valid in kernel only, it will be
something greater then 3GB ie (0xC000 0000). This address can not
be used by user space program, it will cause segfault.  For accessing
any memory from user space you need to create a "vma" entry of the
process so that there is a mapping of some virtual address with the
physical memory allocated by kmalloc.
In short, yes you need two set of page table entries for accessing the
memory allocated by kmalloc. The kernel entry is created by kmalloc
call itself, while the user space entry has to be created by the concerned
module.

For more info on how user programs can map arbit. mem location
see mmap() man page.

regds,
~rpm
Daniel Rodrick wrote:

> Hi,
>
> Suppose I have a kernel module that dynamically allocates memory (via
> kmalloc) for user space. Now my doubt is whether this chunk of
> physical memory would have two virtual addresses?
>
> - One virtual address that will be used by kernel to refer to the
> memory (the address returned by kmalloc)
>
> - One virtual address as will be seen by the user space application?
>
> Is my understanding correct?
>
> Thanks,
>
> Dan
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
