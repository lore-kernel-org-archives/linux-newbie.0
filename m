From: Ankit Jain <ankitjain1580@yahoo.com>
Subject: RE: RAM or "empty"?
Date: Wed, 6 Oct 2004 10:29:19 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041006092919.54698.qmail@web52903.mail.yahoo.com>
References: <20041006085755.89989.qmail@web41104.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041006085755.89989.qmail@web41104.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ruxyz@yahoo.com
Cc: newbie <linux-newbie@vger.kernel.org>

well it is really unique. actually i could not
understand in this what is this reseved address space.


rest reply inline


 --- Learner <ruxyz@yahoo.com> wrote: 
> Hi ,
> 
> Reply Inline .
> 
> --- "Thekkedath, Gopakumar"
> <Gopakumar.Thekkedath@fci.com> wrote:
> 
> > 
> > 
> > 
> > 
> > >Is there a way to find the PHYSICAL ADDRESSES of
> > all
> > >the devices used in a Computer ? 
> > 
> >    does cat /proc/iomem serves the purpose ?
> > 
> 
> Well , if /proc/iomem gives the PHYSICAL address
> range of devices , then why is the  System RAM 
> split into 3 different address ranges as seen below 
> (marked by arrows ) ? Is it bcoz the Motherboard is
> designed in this manner ? 
> 
> ~> cat /proc/iomem
> 00000000-0009fbff : System RAM  <--- 1

basically this hex range represents 2^32

how much memory area can be accessed by this and what
about rest. 1 mopre ques. suppose i have 1Mb of RAM
for that how many address lines i need

> 0009fc00-0009ffff : reserved

whats this reserve says and why and for what it is
reserved?

> 000a0000-000bffff : Video RAM area
> 000c0000-000c7fff : Video ROM

why do we need to seprate all these areas?

> 000e0000-000effff : Extension ROM
> 000f0000-000fffff : System ROM
> 00100000-1fecffff : System RAM  <---- 2
>   00100000-0028dadf : Kernel code
>   0028dae0-00324f63 : Kernel data
> 1fed0000-1feeffff : ACPI Non-volatile Storage
> 1fef0000-1fefffff : System RAM  <---- 3
> 40000000-40000fff : Intel Corp. 82801BA/BAM/CA/CAM
> Ethernet Controller
>   40000000-40000fff : eepro100
> 40300000-4037ffff : Intel Corp. 82815 CGC [Chipset
> Graphics Controller]
> 44000000-47ffffff : Intel Corp. 82815 CGC [Chipset
> Graphics Controller]
> feea0000-ffffffff : reserved
> 
> Are these memory address ranges dynamically 
> determined ? Which kernel code file does this ?
> 
> Also , does  /proc/ioports represent IO-mapped 
> PHYSICAL memory addresses ,
> similar to the  the Memory-mapped PHYSICAL memory 
> addresses in /proc/iomem ?
> 
> ~> cat /proc/ioports
> 0000-001f : dma1
> 0020-003f : pic1
> 0040-005f : timer
> 0060-006f : keyboard
> 0070-007f : rtc
> 0080-008f : dma page reg
> 00a0-00bf : pic2
> 00c0-00df : dma2
> 00f0-00ff : fpu
> 0170-0177 : ide1
> 01f0-01f7 : ide0
> 02f8-02ff : serial(auto)
> 0376-0376 : ide1
> 03c0-03df : vga+
> 03f6-03f6 : ide0
> 03f8-03ff : serial(auto)
> 0cf8-0cff : PCI conf1
> 1000-103f : Intel Corp. 82801BA/BAM/CA/CAM Ethernet
> Controller
>   1000-103f : eepro100
> 2000-20ff : Intel Corp. 82801BA/BAM AC'97 Audio
>   2000-20ff : Intel 82801BA-ICH2 - AC'97
> 2400-243f : Intel Corp. 82801BA/BAM AC'97 Audio
>   2400-243f : Intel 82801BA-ICH2 - Controller
> 2440-245f : Intel Corp. 82801BA/BAM USB (Hub #2)
>   2440-245f : usb-uhci
> 2460-246f : Intel Corp. 82801BA IDE U100
>   2460-2467 : ide0
>   2468-246f : ide1
> 
> > >Also , does the VM in linux translate the memory 
> > >address of programs into actual Physical
> addresses 
> > >of RAM , or is it that Hardware does the actual
> > >translation to Physical addresses  ( since the
> RAM 
> > >addresses would differ across different Computers
> 
> > >depending on the amount of RAM & also the
> > Motherboard
> > >design ) .

does it really depend on motherboard? or does it
depend on the hardwares stuffs we have on system?

thanks

ankit

________________________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
