From: James Miller <jamtat@mailsnare.net>
Subject: Re: Intel 82595FX clone NIC problems
Date: Fri, 11 Apr 2003 12:52:51 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0304111240110.1064@homenet>
References: <5.1.0.14.1.20030411094900.01ea5030@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030411094900.01ea5030@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Fri, 11 Apr 2003, Ray Olszewski wrote:

> More information, please.
>
> 1. What Linux distro and what kernel? "the Slackish system" really is not
> very informative. Stock or custom-compiled kernel?
>
Sorry.  This is a Basiclinux system.  Basiclinux is based on Slackware
(7.1 in this case), but is specialy tweaked for low-resource machines -
including having a custom kernel.  A configuration file for the kernel can
be viewed at:
http://www.ibiblio.org/pub/linux/distributions/baslinux/config.txt  It
uses the 2.2.16 kernel.

> 2. After the NIC seems to stop operating, what does "ifconfig" report about
> its interface (presumably eth0)?
>
eth0      Link encap:Ethernet  HWaddr 00:A0:C9:0C:79:13
          inet addr:192.168.1.11  Bcast:192.168.1.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:137 errors:0 dropped:0 overruns:0 frame:0
          TX packets:95 errors:1 dropped:0 overruns:0 carrier:2
          collisions:8 txqueuelen:100
          RX bytes:155752 (152.1 kiB)  TX bytes:10745 (10.4 kiB)
          Interrupt:7 Base address:0x300

> 3.  Might there be an IRQ conflict not obvious to the Linux kernel? (Even
> with the newer kernels that do IRQ sharing, I've heard reports of problems
> with NICs on IRQ3 that conflict with Winmodems.) Nothing comes to mind for
> IRQs 7 and 10, I admit.
>
Don't know what to say here.  I presume you're sort of thinking out loud?

> 4. What sot configuration does the mobo have? Might it be one of those
> late-486 mobos with both isa and pci slots? If so, could there be a
> "shared-slot" problem (these mobos typically had one pair of slots, one pci
> and one isa, that could not both be used simultaneously)?
>
ISA only.  No PCI or shared slots.

> 5. You mention the possibility of "some problem at the switch". The usual
> way to check for that is to power-cycle the switch and see if that clears
> things. Have you tried that test? If so, to what effect? Have you tried
> different ports?
>
Just tried powering the switch off, then on again (after 5 seconds).  The
DX2 66 still won't ping or otherwise reach the network. I guess it's not
the switch?

> 6. Are the problems you describe specific to the NIC's interface? That is,
> can you use the lo interface successfully (e.g., "ping localhost", "telnet
> localhost")? This one is a long shot, though.
>
Yes, I can still ping localhost.  No dropped packets.

> 7. Is anything relevant showing up in your logs?
>
Can you give an indication of which logs to look at and where they're
located?  I haven't done much log analysis in my rather brief and
superficial Linux career.

> 8.You didn't say, but I'm assuming that this is a 10 Mbps card, not an
> 10/100. If I'm wrong in that assumption, might there be some problem with
> speed detection between the card and the switch?
>
Yes, 10Mbps (identified as 10baseT in boot messages)

Thanks much, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
