From: Jim Nelson <james4765@verizon.net>
Subject: Re: physical address?
Date: Fri, 08 Oct 2004 17:50:19 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41670B9B.50103@verizon.net>
References: <20041008120516.38539.qmail@web52909.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041008120516.38539.qmail@web52909.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>thanks a lot for helping all the way
>
>see inline
>
> --- Jim Nelson <james4765@verizon.net> wrote: 
>  
>
>>Ankit Jain wrote:
>>
>>    
>>
>>>hi
>>>
>>>http://www.xml.com/ldd/chapter/book/ch02.html
>>>
>>>00000000-0009fbff : System RAM
>>>0009fc00-0009ffff : reserved
>>>000a0000-000bffff : Video RAM area
>>>000c0000-000c7fff : Video ROM
>>>000f0000-000fffff : System ROM
>>>00100000-03feffff : System RAM
>>> 00100000-0022c557 : Kernel code
>>> 0022c558-0024455f : Kernel data
>>>20000000-2fffffff : Intel Corporation 440BX/ZX -
>>>82443BX/ZX Host bridge
>>>68000000-68000fff : Texas Instruments PCI1225
>>>68001000-68001fff : Texas Instruments PCI1225 (#2)
>>>e0000000-e3ffffff : PCI Bus #01
>>>e4000000-e7ffffff : PCI Bus #01
>>> e4000000-e4ffffff : ATI Technologies Inc 3D Rage
>>>      
>>>
>>LT
>>    
>>
>>>Pro AGP-133
>>> e6000000-e6000fff : ATI Technologies Inc 3D Rage
>>>      
>>>
>>LT
>>
>>> <>Pro AGP-133
>>> fffc0000-ffffffff : reserved
>>> what is it reserved for?
>>>
>>> if somebody can explin me this:
>>>
>>> "Once again, the values shown are hexadecimal ranges, and the string 
>>> after the colon is the name of the "owner" of the I/O region."
>>
>>>      
>>>
>>What you are seeing is the remapped I/O space for
>>various components in 
>>your computer.  During bootup, the kernel scans the
>>various buses and 
>>identifies various devices.  Each driver remaps the
>>I/O space for PCI 
>>devices - "they are physical addresses in that those
>>memory addresses do 
>>map to real devices, but they are not real memory
>>addresses."
>>    
>>
>
>what do u mean by this? they are physical address but
>not the real memory address? what do u mean by
>physical address then?
>
>  
>

Most modern computer components have an I/O range built in - like a 
graphics card, for example, will have the pixel maps, etc. for the 
display, an IDE controller will have a configuration area, status 
information, etc.  Using PCI for an example, each adapter card has a 
certain amount of memory and register space.  The virtual addresses 
allow you to use standard memory-oriented commands to access the 
devices.  The x86 system has a different set of machine instruations for 
I/O (at least for the legacy components - serial & parallel ports, 
keyboard, mouse, system speaker, etc.) but most other architectures 
don't have that same kind of split - you just segment off an area of the 
address space and call it an adapter.  It's not the easiest thing in the 
world to grok - I just barely understand it myself.

>>IIRC, the "reserved" area is the remapped kernel
>>address space - they 
>>set it up to remap to the top of the 32-bit memory
>>address range in 
>>order to allow hard-coded function calls - it is
>>faster to hard-code the 
>>function calls than to maintain symbol tables.
>>    
>>
> 
>what is hard coded funtion calls? is it something like
>stting the pointer to starting location?
>
>  
>

More like not having to go to a call table or calculate relative 
offsets.  It saves time, to keep addresses of various parts of the 
kernel in predictable places.  Any large program (Windows programs come 
to mind) will load various parts of itself at different times.  Keeping 
track of where in memory all those functions are located takes processor 
time - for each subroutine called.

If you don't allow things to move around in memory, you can just jump to 
the address of the target subroutine.  No fuss, no bother.  That's how 
DOS interrupts were handled, by the way - you had to load your interrupt 
handler at a specific location in memory.  It makes for a smaller, 
faster executable at the cost of some fragility when you try and muck 
with it.

Sorry if that's a little confused, but I'm just starting to get my chops 
on w/ programming anything beyond silly toys.

>>I see this computer is a laptop - now I understand
>>why you are reluctant 
>>to upgrade the RAM.
>>    
>>
>
>what tells that this is a laptop? 
>
>
>  
>

68000000-68000fff : Texas Instruments PCI1225
68001000-68001fff : Texas Instruments PCI1225 (#2)


Texas Instruments CardBus slots.  Educated guess - there are 
CardBus-to-PCI adapters available, but are pretty rare - not the kind of 
things that you'd see in a novice's computer.  I'm looking at getting 
one myself, but that's because I have a project for my day job that 
involves some PCMCIA hacking, and my old laptop isn't feeling up to the 
job, I think.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
