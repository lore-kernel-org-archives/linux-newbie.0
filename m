From: Jim Nelson <james4765@verizon.net>
Subject: Re: are they physical address?
Date: Fri, 08 Oct 2004 05:49:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <416662AB.8080000@verizon.net>
References: <20041008071425.96875.qmail@web52906.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041008071425.96875.qmail@web52906.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>hi
>
>http://www.xml.com/ldd/chapter/book/ch02.html
>
> 00000000-0009fbff : System RAM
> 0009fc00-0009ffff : reserved
> 000a0000-000bffff : Video RAM area
> 000c0000-000c7fff : Video ROM
> 000f0000-000fffff : System ROM
> 00100000-03feffff : System RAM
>  00100000-0022c557 : Kernel code
>  0022c558-0024455f : Kernel data
> 20000000-2fffffff : Intel Corporation 440BX/ZX -
>82443BX/ZX Host bridge
> 68000000-68000fff : Texas Instruments PCI1225
> 68001000-68001fff : Texas Instruments PCI1225 (#2)
> e0000000-e3ffffff : PCI Bus #01
> e4000000-e7ffffff : PCI Bus #01
>  e4000000-e4ffffff : ATI Technologies Inc 3D Rage LT
>Pro AGP-133
>  e6000000-e6000fff : ATI Technologies Inc 3D Rage LT
>Pro AGP-133
> fffc0000-ffffffff : reserved
>what is it reserved for?
>
>if somebody can explin me this:
>
>"Once again, the values shown are hexadecimal ranges,
>and the string after the colon is the name of the
>"owner" of the I/O region. "
>
>  
>

What you are seeing is the remapped I/O space for various components in 
your computer.  During bootup, the kernel scans the various buses and 
identifies various devices.  Each driver remaps the I/O space for PCI 
devices - they are physical addresses in that those memory addresses do 
map to real devices, but they are not real memory addresses.

IIRC, the "reserved" area is the remapped kernel address space - they 
set it up to remap to the top of the 32-bit memory address range in 
order to allow hard-coded function calls - it is faster to hard-code the 
function calls than to maintain symbol tables.

I see this computer is a laptop - now I understand why you are reluctant 
to upgrade the RAM.

>thanks
>
>ankit
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
