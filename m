From: Ankit Jain <ankitjain1580@yahoo.com>
Subject: Re: physical address?
Date: Fri, 8 Oct 2004 13:05:16 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041008120516.38539.qmail@web52909.mail.yahoo.com>
References: <416662AB.8080000@verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <416662AB.8080000@verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jim Nelson <james4765@verizon.net>
Cc: newbie <linux-newbie@vger.kernel.org>

thanks a lot for helping all the way

see inline

 --- Jim Nelson <james4765@verizon.net> wrote: 
> Ankit Jain wrote:
> 
> >hi
> >
> >http://www.xml.com/ldd/chapter/book/ch02.html
> >
> > 00000000-0009fbff : System RAM
> > 0009fc00-0009ffff : reserved
> > 000a0000-000bffff : Video RAM area
> > 000c0000-000c7fff : Video ROM
> > 000f0000-000fffff : System ROM
> > 00100000-03feffff : System RAM
> >  00100000-0022c557 : Kernel code
> >  0022c558-0024455f : Kernel data
> > 20000000-2fffffff : Intel Corporation 440BX/ZX -
> >82443BX/ZX Host bridge
> > 68000000-68000fff : Texas Instruments PCI1225
> > 68001000-68001fff : Texas Instruments PCI1225 (#2)
> > e0000000-e3ffffff : PCI Bus #01
> > e4000000-e7ffffff : PCI Bus #01
> >  e4000000-e4ffffff : ATI Technologies Inc 3D Rage
> LT
> >Pro AGP-133
> >  e6000000-e6000fff : ATI Technologies Inc 3D Rage
> LT
> >Pro AGP-133
> > fffc0000-ffffffff : reserved
> >what is it reserved for?
> >
> >if somebody can explin me this:
> >
> >"Once again, the values shown are hexadecimal
> ranges,
> >and the string after the colon is the name of the
> >"owner" of the I/O region. "
> >
> >  
> >
> 
> What you are seeing is the remapped I/O space for
> various components in 
> your computer.  During bootup, the kernel scans the
> various buses and 
> identifies various devices.  Each driver remaps the
> I/O space for PCI 
> devices - "they are physical addresses in that those
> memory addresses do 
> map to real devices, but they are not real memory
> addresses."

what do u mean by this? they are physical address but
not the real memory address? what do u mean by
physical address then?

> 
> IIRC, the "reserved" area is the remapped kernel
> address space - they 
> set it up to remap to the top of the 32-bit memory
> address range in 
> order to allow hard-coded function calls - it is
> faster to hard-code the 
> function calls than to maintain symbol tables.
 
what is hard coded funtion calls? is it something like
stting the pointer to starting location?

> I see this computer is a laptop - now I understand
> why you are reluctant 
> to upgrade the RAM.

what tells that this is a laptop? 


> >thanks
> >
> >ankit
> >  
> >
> 
>  

________________________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
