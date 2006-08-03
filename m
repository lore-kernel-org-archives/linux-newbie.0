From: Rahul Iyer <idlisambar@gmail.com>
Subject: Re: Why "high memory" in x86?
Date: Thu, 03 Aug 2006 11:44:17 -0700
Message-ID: <1154630657.28579.21.camel@uranium.hq.netapp.com>
References: <20060801135147.84843.qmail@web34609.mail.mud.yahoo.com>
	 <44D0292C.8000602@solidcore.com>
	 <fc67f8b70608020937s6bbcbcd9k180e105230d0bf33@mail.gmail.com>
	 <44D187B3.3070007@solidcore.com>
	 <b115cb5f0608022259w40c3f63fr4383e7f9f7873bc4@mail.gmail.com>
	 <44D1D56E.2080100@solidcore.com>
	 <292693080608030455p59b0e79frb8de80ccccb3c40c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080608030455p59b0e79frb8de80ccccb3c40c@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Rajendra <rpm@solidcore.com>, kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

On Thu, 2006-08-03 at 17:25 +0530, Daniel Rodrick wrote:
> > >
> > > If the kernel wants to access the high memory, it will map it into the
> > > virtual address space of the KERNEL (3GB -> 4GB), right? Now at this
> > > point, what will happen to the original (identity) mapping of that
> > > kernel virtual memory address (to which it has now mapped the high
> > > memory)?
> > >
> > > TIA,
> > >
> > > Rajat
> > >
> > That is why kernel does not access the whole 1 GB, it's only 896MB, the rest
> > of the 128MB is used to create temp page table entries for the high mem.
> > e.g. if you have 2 GB of ram, then the 896 MB will be identity mapped while
> > for the rest 1GB + 128MB we will use the 128 MB kernel address space for
> > accessing the "high memory".
> 
> Oh, so you mean to say that the physical memory between 896MB and 1GB
> is used to store the page tables and the memory map. But the
> corresponding virtual memory addresses (~3.8 GB -> 4 GB) are used to
> map high memory physical addresses?
> 
Nope! So, the kernel has a 1G address space (3G to 4G), right? Now, how
does it map this 1G of address space? What it does is maps virtual
addresses from 3G to 3G + 896M to physical addresses 0 to 896M. So
essentially, the pseudocode below describes the case:

#define KERN_V_ADDR_START 3g
#define KERN_MAX_DIRECT_MAP 896M

if (v_addr < (KERN_V_ADDR_START + KERN_MAX_DIRECT_MAP))
	p_addr = v_addr - KERN_V_ADDR_START;

For the actual kernel code for this, look for _pa and _va.

So, as you can see, the maximum physical address you can access directly
is 896M. So, what about physical memory more than that? In order to
manage this, the kernel uses the remaining 128M of its address space (1G
- 896M) to temporarily map physical addresses > 896M.

I hope this makes it clearer.
-r

> Thanks,
> 
> Dan
> 
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
