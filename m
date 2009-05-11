From: Suresh Siddha <suresh.b.siddha@intel.com>
Subject: Re: remap_pfn_range() and mapping RAM
Date: Mon, 11 May 2009 10:40:29 -0700
Message-ID: <1242063629.27006.8590.camel@localhost.localdomain>
References: <87ab5koqhz.fsf@erwin.mina86.com>
Reply-To: suresh.b.siddha@intel.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <87ab5koqhz.fsf@erwin.mina86.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Michal Nazarewicz <mina86@tlen.pl>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, "; venkatesh.pallipadi"@intel.com

On Sun, 2009-05-10 at 09:46 -0700, Michal Nazarewicz wrote:
> Hello everyone,
> 
> While developing a method for mapping RAM memory into user space
> I stumbled across Suresh Siddha's commit that "broke" my code:
> 
>   commit be03d9e8022030c16abf534e33e185bfc3d40eef
>   x86, pat: fix warn_on_once() while mapping 0-1MB range with /dev/mem
> 
> I believe there were important reasons for the changes but how do I map
> user RAM memory into user space?  Up to this point I've used something
> along the lines of (error checking removed):
> 
> #v+
> static int file_mmap(struct file *file, struct vm_area_struct *vma)
> {
> 	const size_t start  = /* physical address of memory allocated
> 	                         using alloc_bootmem_low_pages() */;
> 
> 	return remap_pfn_range(vma, vma->vm_start,
> 	                       (start >> PAGE_SHIFT) + vma->vm_pgoff
> 	                       vma->vm_end - vma->vm_start,
> 	                       vma->vm_page_prot);
> }
> #v-
> 
> Reverting the be03... commit makes it work again but I guess it's not
> a good way to solve this problem.
> 
> Could anyone point me to proper function which may be used like
> remap_pfn_range() but work on RAM addresses?  It is important, that the
> function will work in similar fashion, ie. create raw PFN mappings
> without associated struct page.

Are you using 2.6.29?

This mainline commit:

commit 4bb9c5c02153dfc89a6c73a6f32091413805ad7d
Author: Pallipadi, Venkatesh <venkatesh.pallipadi@intel.com>
Date:   Thu Mar 12 17:45:27 2009 -0700

has fixed this issue with this portion of the patch:

diff --git a/arch/x86/mm/pat.c b/arch/x86/mm/pat.c
index e0ab173..21bc1f7 100644
--- a/arch/x86/mm/pat.c
+++ b/arch/x86/mm/pat.c
@@ -641,10 +641,11 @@ static int reserve_pfn_range(u64 paddr, unsigned
long size
        is_ram = pat_pagerange_is_ram(paddr, paddr + size);
 
        /*
-        * reserve_pfn_range() doesn't support RAM pages.
+        * reserve_pfn_range() doesn't support RAM pages. Maintain the
current
+        * behavior with RAM pages by returning success.
         */
        if (is_ram != 0)
-               return -EINVAL;
+               return 0;
 
        ret = reserve_memtype(paddr, paddr + size, want_flags, &flags);
        if (ret)

thanks
suresh

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
