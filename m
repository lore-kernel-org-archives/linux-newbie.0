From: Ray Olszewski <ray@comarre.com>
Subject: Re: newbie network help
Date: Mon, 03 Mar 2003 21:20:11 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030303211438.01f3b090@celine>
References: <Pine.LNX.4.53.0303032224510.11087@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0303032224510.11087@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

As you surmised, this is probably the hint that matters:

         PCI: No IRQ known for interrupt pin A of device 00:0a.0. Please 
try using pci=biosirq

I suspect you have your system's BIOS set incorrectly. See if you have a 
choice for PnP OS. If you do, and it is set to YES, change it to NO. See if 
that corrects the problem.

If not, post a followup, and perhaps I or someone else can spot something 
different.

(I doubt that you need another modules to make this work, though some 
recent kernels require "pciscan" to be loaded before any modules that use 
pci cards are run, so you might check that too.)

At 10:34 PM 3/3/2003 -0600, James Miller wrote:
>Greetings:
>
>At this stage, I'm attempting to puzzle out why my machines can't seem to
>use the NICs I've put in them. I've researched the cards pretty
>substantially and I'm just sure I've found the right modules (but, perhaps
>more than 1 module is needed, as seems to be the case with certain
>cards?). Well, I'll start with what seems to be the simplest case, my
>486 DX 4 100 with 40MB RAM and *both* ISA and PCI buses. This one is
>running a Linux "crutch" distro - Vectorlinux 3.0 (based on Slackware of
>a fairly recent vintage - 8.1 if memory serves) and reiserfs. I've, of
>course, put a PCI card in this one, having understood they are much easier
>to  configure than ISA cards. The card is an Intel clone, the main chip
>being labelled s82557. I selected the eepro100 module for this card, as
>all directions for using it I've found on the 'net direct. I'm not
>doing insmod to install it, but rather uncommented it in a file called
>/etc/rc.d/rc.modules. I boot from a DOS partition, using loadlin. The OS
>seems to actually find it but, if I understand correctly, cannot assign it
>an IRQ. Let me copy here what seem to me to be relevant portions of dmesg
>output, and see if someone might not be able to see what the problem is and
>offer some advice. There are some peculiar-seeming messages concerning the
>PCI bus, as follows:
>
>CPU: 486
>Checking 'hlt' instruction... OK.
>Checking for popad bug... OK.
>POSIX conformance testing by UNIFIX
>PCI: PCI BIOS revision 2.00 entry at 0xf0300, last bus=0
>PCI: Using configuration type 1
>PCI: Probing PCI hardware
>isapnp: Scanning for PnP cards...
>isapnp: No Plug & Play device found
>Linux NET4.0 for Linux 2.4
>Based upon Swansea University Computer Society NET3.039
>Initializing RT netlink socket
>Starting kswapd
>
>"last bus=0" seems a bit odd to me, though I cannot claim any sort of 
>expertise here.
>In any case, the following excerpts that relate more directly to the card and
>Linux's failure to implement it also mention something about PCI. Here is that
>later output:
>
>Adding Swap: 78620k swap-space (priority -1)
>spurious 8259A interrupt: IRQ15.
>eepro100.c:v1.09j-t 9/29/99 Donald Becker 
>http://www.scyld.com/network/eepro100.html
>eepro100.c: $Revision: 1.36 $ 2000/11/17 Modified by Andrey V. Savochkin 
><saw@saw.sw.com.sg>
>and others
>PCI: Enabling device 00:0a.0 (0000 -> 0003)
>PCI: No IRQ known for interrupt pin A of device 00:0a.0. Please try using 
>pci=biosirq.
>PCI: Setting latency timer of device 00:0a.0 to 64
>eth0: Intel Corp. 82557/8/9 [Ethernet Pro 100], 00:A0:C9:71:4D:DA, IRQ 0.
>   Receiver lock-up bug exists -- enabling work-around.
>   Board assembly 678400-001, Physical connectors present: RJ45
>   Primary interface chip i82555 PHY #1.
>Self test failed, status ffffffff:
>  Failure to initialize the i82557.
>  Verify that the card is a bus-master capable slot.
>   Receiver lock-up workaround activated.
>spurious 8259A interrupt: IRQ7.
>usb.c: registered new driver usbdevfs
>
>If any of this output adds up to a problem anyone could help me diagnose,
>I would appreciate input. I'll keep searching the 'net in the meantime. Seems
>to me like "pci=biosirq" might be a good place to continue with my search 
>on this.
>
>Thanks, James
>
>PS I have no idea what to make of the "spurious interrupts" and if these
>might somehow relate to my problems.
>-





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
