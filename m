From: Ray Olszewski <ray@comarre.com>
Subject: Re: Intel 82595FX clone NIC problems
Date: Fri, 11 Apr 2003 10:22:32 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030411094900.01ea5030@celine>
References: <Pine.LNX.4.53.0304111044280.1064@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0304111044280.1064@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>, Linux-Newbie list <linux-newbie@vger.kernel.org>

More information, please.

1. What Linux distro and what kernel? "the Slackish system" really is not 
very informative. Stock or custom-compiled kernel?

2. After the NIC seems to stop operating, what does "ifconfig" report about 
its interface (presumably eth0)?

3.  Might there be an IRQ conflict not obvious to the Linux kernel? (Even 
with the newer kernels that do IRQ sharing, I've heard reports of problems 
with NICs on IRQ3 that conflict with Winmodems.) Nothing comes to mind for 
IRQs 7 and 10, I admit.

4. What sot configuration does the mobo have? Might it be one of those 
late-486 mobos with both isa and pci slots? If so, could there be a 
"shared-slot" problem (these mobos typically had one pair of slots, one pci 
and one isa, that could not both be used simultaneously)?

5. You mention the possibility of "some problem at the switch". The usual 
way to check for that is to power-cycle the switch and see if that clears 
things. Have you tried that test? If so, to what effect? Have you tried 
different ports?

6. Are the problems you describe specific to the NIC's interface? That is, 
can you use the lo interface successfully (e.g., "ping localhost", "telnet 
localhost")? This one is a long shot, though.

7. Is anything relevant showing up in your logs?

8.You didn't say, but I'm assuming that this is a 10 Mbps card, not an 
10/100. If I'm wrong in that assumption, might there be some problem with 
speed detection between the card and the switch?

At 11:23 AM 4/11/2003 -0500, James Miller wrote:
>I'm having some trouble getting an Intel 82595 clone ISA NIC working on a
>computer on my small network.  I'm fairly new to networking, and not
>especially experienced in computing in general, so I may be doing
>something very simple wrong.  Let me provide a description of what I've
>done, the context and the problem to see if anyone here might help.
>
>The card is in an old 486 DX2 66 that I'm trying to get going on my
>network.  The network consists of a machine with a fairly up-to-date
>Debian variant installed on it, the 486 mentioned above, and another
>older machine (more on that).  The gateway machine has an external modem,
>and an onboard NIC (Realtek RTL 8XXX 10/100) that connects it to a DLink
>10/100 switch.  On the network is another 486, a DX4 100, with another
>Intel clone NIC, though this one is a PCI (forgot the chip #, but it's
>irrelevant since that machine works great on the network).
>
>All the research I've done on the Intel 82595FX ISA NIC indicates that it
>should use the eepro.o module.  Thus, I got that module and have set up
>the Slackish system on the DX2 66 to load the module by editing
>/etc/rc.d/rc.S accordingly (insmod eepro.o io=0x300).  The boot time
>report indicates that the card has been found and its irq, io, and MAC
>address found.  It is also assigned its correct address.  Subsequently, I
>can ping the gateway without problems - no dropped packets.  I can fire up
>Links and surf the 'net - for a while.  I can also telnet into the gateway
>successfully - for a while.  The problme is that, after about 1 minute,
>the connection just dies.  Links stops, and will not load further pages.
>The telnet session becomes immune to keystrokes (except keystrokes like
>ctrl-c).  Opening another terminal session and trying to ping the gateway
>results in the message "56 data bytes" and nothing more. Hitting ctrl-c
>subsequently displays how many packets were sent, and notifies of 100%
>packet loss.  In short, no further traffic can flow through the card.
>Trying to ping the other computer on the network gives the same response
>(56 data bytes . . . 100% packet loss).  I would guess that this means
>that either the card has somehow frozen up, or there is some problem at
>the switch.
>
>Other possibly relevant factors.  The card can be tweaked with a utility
>(switching IO's/IRQ's, disabling things like plug and play and "concurrent
>processing" - whatever that is) that works under DOS called softset.  The
>card tests fine using this utility (i.e., passes the util's integrity
>test).  I've tried 2 different IRQ's (7 and 10) and 3 different IO's, but
>to no avail.  I've fiddled with the other settings too, but the problem
>persists (except disbaling plug and play, which I had to do to get the
>card working to begin with).  I've also tried another, identical card
>(I have several laying around), but with the same results.  The other 486
>on the network works great.  I've used it both as an xterminal to get
>xsessions from the gateway machine, as well as a standalone machine to
>surf the 'net and such.  No problems whatever with it using the network.
>I've tried switching cables between the two machines (the 2 486's), to no
>avail: the problems persist on the machine with the 82595FX ISA card, while
>the other one works fine.  Finally, I ran ifconfig on the gateway machine
>to see what that would tell me.  It shows 11 overruns for the gateway's
>interface (the Realtek onboard), though other things look normal (to my
>very untrained eye).
>
>Can someone give me some indication about the nature of this problem?
>What can I do to locate the trouble spot?  What can I do to fix it?  Let
>me know if I have left out any important details.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
