From: Ray Olszewski <ray@comarre.com>
Subject: Re: round of questions regarding modem
Date: Sun, 08 Jun 2003 20:25:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030608193616.01f3e618@celine>
References: <200306090244.h592i0j4025999@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306090244.h592i0j4025999@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At , Heimo Claasen wrote:
>Firstly, you need not
> > disable Com 2 in the system BIOS
>- oumpf, how's that done there ? -, but just leave the BIOS settings
>what they are (re serial ports, AFAIK the BIOS just looks and registers
>what's there); real _settings_ are done with the jumpers.

<sigh>
It is commonplace for motherboards to have onboard serial ports (or 
sometimes modems) occupying the IRQs and IObases customarily associated 
with COM1 and COM2. If he wants his modem to use one of those locations, he 
needs to disable the corresponding on-mobo serial port. That step is what 
he and I were referring to.

If the mobo has both isa and pci slots, its BIOS *may* require him 
explicitly to assign IRQs to "legacy" use. In this context, "legacy" means 
isa-bus cards. If he has that sort of mobo and does not do this, the isa 
card cannot claim an IRQ.

Linux kernels can share IRQs but not (as far as I know) IO base addresses.
</sigh>

>Hmm, somewhat cumbersome to use setserial to find out what the actual
>settings of the jumpers are.

I agree.

>If you can run DOS, there's number of
>small utilities (take IRQCHECK which you can find at my place) which
>immediately tell

Does it check IO ports as well as IRQs? (I don't have DOS running here to 
check that myself.)

If he can run DOS, there is probably a configuration/troubleshooting disk 
he can get as an image from USR.

>  - no need even to reboot, you can change jumper
>settings live, and if you do it cautiously you can even take out and
>re-seat the comm-card (question of getting at the dang jumpers.)

Heimo -- I would NEVER recommend to anyone that he or she work inside his 
computer with the power on, let alone remove and insert cards. I strongly 
urge NO ONE to follow this advice. Although I know of no personal danger in 
doing this, the risk of damaging hardware is very real.

>Once you got jumpers for port and IRQ right to what you want them to be,
>"setserial" will indeed be needed for any combination which is _not_
>COM1-IRQ4 or COM2-IRQ3.  (These latter, I found out to my hard surprise,
>are hardwired to the kernels.  Nothing to do, as far as I could find out,
>with the capability or not to check for ISA devices.)

The actual pre-specified combinations are IRQs and IObase ports, and they 
are the ones customarily associated with DOS's COM1 and COM2.

On every Linux system I have actually used, ttyS2 and ttyS3 were pre-set 
for the values customarily associated with DOS's COM3 and COM4 as well ... 
so if you used those values, again setserial was not needed.

But you will recall the original poster saying he found that ttyS1 has been 
set on *his* system for IRQ 5 (he did not say what IO base). I infer from 
this that either an init script is changing things around or Mandrake has 
done something unusual with its setup. He can either hunt for whatever 
causes this value to change (a pain, especially for a beginner) or just 
change it back to what he needs (my advice to him).

In this regard, he might find it illuninating to check the boottime 
messages (in the dmesg buffer ... access it with the command "dmesg", or 
see if Mandrake saves it to /var/log/dmesg the way some other distros do) 
to see what IRQ/IO base conbinations the kernel checks before any init 
scripts run.

>Place a pertinent "setserial" command line _early_ into one of the
>startup batches.

Well ... see above. If something is already changing the settings away from 
what he needs, his setserial command had better run after that one.

[...]
>At the root of the problem is indeed not the setting of the port address
>but that of the irq number (and eventually resulting interrupt conflicts
>which are quite difficult to find out about - there's _no_ reliable error
>notification of _any_ sort in those cases but just everything else which
>would eat your time and nerves to find out to be a dead-end.) Therefore,
>choosing a liable IRQ-no. is decisive.

Actually, he needs both the right IRQ -AND- the right IO base. Neither is 
by itself "decisive".

[...]
>Looking in /proc/(io-ports, interrupt[s] ?  - forgot the _correct_
>syntax, looking _this_ up would take anolther more long minutes) may give
>a hint to the _presently_ used ones.

You are referring to
         /proc/interrupts
         /proc/ioports

They will list the IRQs and IO port ranges that are in active use (ports 
that the kernel has actually used, and IRQs that have actually generated 
interrupts). They will not identify the values for a device that is not 
actually in use. For example, a Winmodem installed at the COM2 values will 
prevent a serial port or modem with the same values from functioning.

>Some are "untouchables" and will show up as that (0, 1, or 14 and 15,
>IIRR) but astonishingly - again - one _can_ share unused ones, e.g. 2
>and 9 (which are often "cascaded" in the BIOS or even hardwired as such,
>and usually for the first parallel/printer port) between _physically_
>unused devices at a given moment.  Chances are good that the modem - with
>use for dial-in connections - is needed when a printer (mostly on Irq 2,
>7, or 9) is not switched on.

Some of the details here are wrong. Here are the IRQs currently in use on 
one of my systems.

            CPU0
   0:   81995551          XT-PIC  timer
   1:        512          XT-PIC  keyboard
   2:          0          XT-PIC  cascade
   5:   37772699          XT-PIC  es1371
  10:    7021030          XT-PIC  bttv
  11:   29972230          XT-PIC  usb-uhci, usb-uhci, eth0
  14:    1134148          XT-PIC  ide0
  15:      60389          XT-PIC  ide1

The timer and keyboard are hardwired and cannot be moved. The hard drives 
usually do not move either, though in principle a system without an ide1 
channel has IRQ 15 available. IRQ2 is the "passthrough" IRQ to access the 
second bank of IRQs (8-15), so is unavailable (anything assigned to is is 
automatically reassigned to IRQ 9, if memory serves).

Typically, IRQs 3 and 4 are used by serial ports or modems (though this 
need not be so - older systems commonly used IRQ3 for NICs) IRQ 7 is 
customarily assigned to the parallel port and IRQ 6 to the floppy drive; 
they are available if the system lacks those components. IRQ 5 used to be a 
second parallel port and more recently was the location of ISA-based sound 
ards.IRQ 8 is used by the RTC and 13 by the FPU. 12 is a PS/2 mouse. 9, 10, 
ans 11 are open for user assignments.

But some of this is old, more history than current advice. On modern 
systems, the PCI bus and the BIOS take care of all of this for you. It's of 
interest only because the original poster is trying to use old hardware so 
needs to worry about some of this nonsense.

It does prompt me to wonder if his kernel might be set up to use isapnp, so 
Mandrake may be trying to reset his modem's IRQ and IO base values.

[...]


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
