From: Donald Becker <becker@scyld.com>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Thu, 10 Aug 2006 13:59:06 -0700 (PDT)
Message-ID: <Pine.LNX.4.44.0608101156490.20933-100000@bluewest.scyld.com>
References: <44D8A80F.1020202@cs.cornell.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44D8A80F.1020202@cs.cornell.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Shieh <ashieh@cs.cornell.edu>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>, Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

On Tue, 8 Aug 2006, Alan Shieh wrote:

> With help from the Etherboot Project, I've recently implemented such a 
> driver for Etherboot 5.4. It currently supports PIO NICs (e.g. cards 
> that use in*/out* to interface with CPU). It's currently available in a 
> branch, and will be merged into the trunk by the Etherboot project. It 
> works reliably with QEMU + PXELINUX, with the virtual ne2k-pci NIC.
> 
> Barring unforseen issues, I should get MMIO to work soon; target 
> platform would be pcnet32 or e1000 on VMware, booted with PXELINUX.

Addressing a very narrow terminology issue:

I think that there a misuse of terms here.  PIO, or Programmed I/O, is 
data transfer mode where the CPU explicitly passes data to and from a 
device through a single register location.

The term is unrelated to the device being addressed in I/O or memory 
space.  On the x86, hardware devices were usually in the I/O address space 
and there are special "string" I/O instructions, so PIO and I/O space were 
usually paired.  But processors without I/O instructions could still do 
PIO transfers.

Memory Mapped I/O, MMIO, is putting the device registers in memory space.  
In the past it specifically meant sharing memory on the device e.g. when 
the packet buffer memory on a WD8013 NIC was jumpered into the ISA address 
space below 1MB.  The CPU still controls the data transfer, generating a 
write for each word transfered.  But the address changed with each write, 
just like a memcpy.

Today "MMIO" is sometimes misused to mean simply using a PCI memory 
mapping rather than a PCI I/O space mapping.  PCI actually has three 
address spaces: memory, I/O and config spaces.  Many devices allow 
accessing the operational registers either through I/O or memory spaces.

Both PIO and MMIO are obsolescent.  You'll still find it in legacy 
interfaces, such as IDE disk controllers where it is only used during boot 
or when running DOS. Instead bulk data is moved using bus master 
transfers, where the device itself generates read or write 
bus transactions.

Specifically, you won't find PIO or MMIO on any current NIC.  They only 
existed on a few early PCI NICs, circa 1995,  where an ISA design was 
reworked.  

So what does all of this have to with UNDI (and, not coincidentally,
virtualization)?  There are a bunch of problems with using UNDI drivers,
but we only need one unsolvable one to make it a doomed effort.  It's a
big challenge to limit, control and remap how the UNDI driver code talks
to the hardware.  That seems to be focus above -- just dealing with how to
control access to the device registers.  But even if we do that correctly
, the driver is still setting up the NIC to be a bus master.  The device
hardware will be reading and writing directly to memory, and the driver
has to make a bunch of assumptions when calculating those addresses.
 
> ( An even easier way would be to axe the manufacturer's stack and use 
> Etherboot instead )

People are hoping to magically get driver support for all hardware 
without writing drivers.  If it were as easy as writing a Linux-to-UNDI 
shim, that shim would have been written long ago.  UNDI doesn't come 
close to being an OS-independent driver interface, even if you are willing 
to accept the big performance hit.


-- 
Donald Becker				becker@scyld.com
Scyld Software	 			Scyld Beowulf cluster systems
914 Bay Ridge Road, Suite 220		www.scyld.com
Annapolis MD 21403			410-990-9993

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
