From: Ray Olszewski <ray@comarre.com>
Subject: Re: another round of questions regarding modem
Date: Sun, 08 Jun 2003 15:25:58 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030608151145.01ebe180@celine>
References: <3EE3AE4D.4090003@att.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE3AE4D.4090003@att.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

OK. Your dissatisfactions with the quality of USR's documentation are not 
really a Linux problem. SO I'll limit myself to the part of your message 
that is.

Assuming you do manage to get your modem configured to look like it is on 
the right IRQ and IObase for the traditional COM2 ...I'm actually a bit 
surprised to see that Mandrake does something to fiddle with the 
conventional settings for /dev/ttyS1. But ...

At 02:44 PM 6/8/2003 -0700, Richard Dawson wrote:

>Something that is complicated by the fact that I have to use setserial 
>each time I boot in order to have Linux use the "standard" IRQ for 
>ttyS1.  (ttyS0 is associated with IRQ3 as one might expect).

This "one" would expect no such thing. ttyS0 is supposed to be the Linux 
analog to COM1, which means it should have these settings:

         kuryakin:~# setserial /dev/ttyS0
         /dev/ttyS0, UART: 16550A, Port: 0x03f8, IRQ: 4

Similarly, ttyS1 is the analog to COM2, with these default settings:

         kuryakin:~# setserial /dev/ttyS1
         /dev/ttyS1, UART: 16550A, Port: 0x02f8, IRQ: 3

(The UART entry is not part of the default; the presence of a UART entry 
normally means that the kernel has actually found a serial device at that 
IRQ/IObase location.)

>So my questions:
>(1)  Am I missing something?  Am I barking up entirely the wrong tree?

If you are fiddling blindly with jumpers, it is likely that you are 
changing the IObase assignments in unpredictable ways. Both IRQ -AND- 
IObase have to match what setserial expects to access a serial device.

>(2)  Where can I put a setserial command in order that Linux boots up with 
>IRQ 4 associated with ttyS1?

In an init script. On my Debian systems, I add this sort of local stuff to
         /etc/init.d/rclocal

and make a symlink pointing to that from
         /etc/rc2.d/S99zlocal

Init-directory setups vary a bit by distro, so you will have to check for 
the exact locations Mandrake uses to correspond to these.

(BTW, I assume you meant IRQ 3, not "IRQ 4", in the question.)

>(3)  Has anyone else experienced this confusion with the modem that I am 
>using?  (I have submitted a rquest for ino to US Robotics)
>(4)  Anything else relevant that might help.

I don't know your mobo, but if it has pci slots as well as isa alots, you 
might check the BIOS to make sure that IRQ 3 is being made available to 
isa-slot devices. Just disabling the on-mobo COM2 (IRQ3) serial port might 
not be enough to accomplish this.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
