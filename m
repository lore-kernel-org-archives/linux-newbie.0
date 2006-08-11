From: Alan Shieh <ashieh@cs.cornell.edu>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Fri, 11 Aug 2006 16:48:23 -0400
Message-ID: <44DCED17.1050202@cs.cornell.edu>
References: <Pine.LNX.4.44.0608101156490.20933-100000@bluewest.scyld.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0608101156490.20933-100000@bluewest.scyld.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Donald Becker <becker@scyld.com>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>, Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

Donald Becker wrote:
> On Tue, 8 Aug 2006, Alan Shieh wrote:
> 
> 
>>With help from the Etherboot Project, I've recently implemented such a 
>>driver for Etherboot 5.4. It currently supports PIO NICs (e.g. cards 
>>that use in*/out* to interface with CPU). It's currently available in a 
>>branch, and will be merged into the trunk by the Etherboot project. It 
>>works reliably with QEMU + PXELINUX, with the virtual ne2k-pci NIC.
>>
>>Barring unforseen issues, I should get MMIO to work soon; target 
>>platform would be pcnet32 or e1000 on VMware, booted with PXELINUX.
> 
> 
> Addressing a very narrow terminology issue:

<snip>

Thanks for the terminology clarification. I'll try to clarify the 
hardware scenarios.

Currently, cards that use the I/O port space ought to work, so long as 
their Etherboot drivers are well-behaved. Those that use PIO (like the 
QEMU's NE2K-PCI, which looks like NE2K bolted onto a PCI/ISA bridge) 
ought to work 100%. Those that use I/O ports to set up DMA transfers may 
or may not work depending on whether they try to DMA directly into 
pointers specified by UNDI calls.

I am in the process of implementing a way to pass the virtual address of 
each memory mapped I/O region described in the PCI BARs; once this 
works, the same caveats as for I/O port controlled

> So what does all of this have to with UNDI (and, not coincidentally,
> virtualization)?  There are a bunch of problems with using UNDI drivers,
> but we only need one unsolvable one to make it a doomed effort.  It's a
> big challenge to limit, control and remap how the UNDI driver code talks
> to the hardware.  That seems to be focus above -- just dealing with how to
> control access to the device registers.  But even if we do that correctly
> , the driver is still setting up the NIC to be a bus master.  The device
> hardware will be reading and writing directly to memory, and the driver
> has to make a bunch of assumptions when calculating those addresses.

This is true. I had to verify that the Etherboot UNDI code performs 
copies to/from its memory (which it knows the precise location of), 
rather than DMAing to pointers.

I think the virtualization approach is workable for stacks that hide 
themselves properly in E820 maps (not specified in the PXE spec), but 
somewhat complicated. It would have to either use a IOMMU (afaik not 
present on Pacifica, VT, or LT), or enforce a 1:1 correspondence between 
the emulated physical pages and actual physical pages that are provided 
to the stack.

The advantage of this over downloading an Etherboot stack is that it 
slightly simplifies deployment -- there is no need to install a 
Etherboot option ROM or boot image on each node. I believe the code 
complexity, development, and testing costs are higher than they are for 
our current approach, where we get to control and fix the firmware.

> People are hoping to magically get driver support for all hardware 
> without writing drivers.  If it were as easy as writing a Linux-to-UNDI 
> shim, that shim would have been written long ago.  UNDI doesn't come 
> close to being an OS-independent driver interface, even if you are willing 
> to accept the big performance hit.

I agree. The PXE specification is woefully underspecified and clunky for 
protected mode operation. Performance is on the order of broadband speed 
-- I'm getting 200-250KB/s using polling (as opposed to interrupt-driven 
I/O), with QEMU running on a 2GHz Athlon.

We still need drivers in the Etherboot-based strategy -- they live in 
the Etherboot layer. Etherboot drivers would be checked for conformance 
with protected mode operation.

Alan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
