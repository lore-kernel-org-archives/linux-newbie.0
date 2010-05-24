From: Peter Wurmsdobler <peter@wurmsdobler.org>
Subject: Re: mmap of 8GB reserved memory using remap_pfn_range
Date: Mon, 24 May 2010 10:50:17 +0100
Message-ID: <4BFA4BD9.5030401@wurmsdobler.org>
References: <4BE16F84.30205@wurmsdobler.org> <AANLkTinmIid5cTvrgQxIjk_HlQLHaqdcumG0_l-mOCuO@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AANLkTinmIid5cTvrgQxIjk_HlQLHaqdcumG0_l-mOCuO@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org
Cc: Drew <drew.kay@gmail.com>

Hello,

> Can't help you with the rest but I'm pretty sure I know what the mismatch is.
I think I have solved that now. remap_pfn_range() needs a physical 
address, not the ioremap'ed kernel virtual address! So the part in the 
mmap file operation has to read:

     result = remap_pfn_range(vma, vma->vm_start,
         RADAR_DATA_OFFSET >> PAGE_SHIFT,
         RADAR_DATA_SIZE, vma->vm_page_prot);

> The missing GB of RAM is caused by the PCI bus memory address range
> reservation. The PCI bus uses DMA and way back when using the top GB
> or so of the 32bit address space wasn't a problem. Now of course PC's
> can easily handle more then 4GB (I'm specc'ing some new servers with
> 16-32GB RAM) so there's a hole in the 3GB to 4GB area. Some newer
> 64bit motherboards do support a remapping of the hole (not sure how)
> but a lot of boards still don't.
Thanks for the exaplanation.

Not that I am gready, but I have 12GB of RAM and reserve 8GB for my data 
acquisition. So there are 4GB of physical RAM left. Since I am using a 
64 OS, I would assume that all that memory is addressable somehow, even 
if the 1GB window between 3 and 4GB is reserved for PCI DMA, as you say, 
by remapping it, e.g. to 12-13GB or so. Or even better, the BIOS could 
tell all PCI peripherals to use the adress space above the physical RAM 
memory adresses?

What would happen if I reserve 10GB? The kernel could manage the 
remaining 2GB; but would there be an adress conflict between the PCI DMA 
memory space and the reserved memory space 2G-12GB?

I acknowledge, that the physical RAM will not start at 0x00 and go up to 
the memory size fitted. Is there some document that explains the 
physical memory address space for 64 bit systems, and how it is mapped?

Cheers,
peter
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
