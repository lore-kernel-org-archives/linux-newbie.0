From: Alan Womack <arwbackup@worldnet.att.net>
Subject: Re: Trouble with serial ports
Date: Sun, 3 Nov 2002 21:27:58 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU08NUTvl7P0000054e@cpimssmtpu08.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>, linux-newbie@vger.kernel.org

 >>  OK. Since you've only been testing ttyS01 (the first of the 4 ports), we 
 >>  really do not know if the others are working or not. Your cabling looks 
 >>  good (subject to one hesitation; see below) and your other test standards 
 >>  look good too. So I'm drawn to the difference between the first STB 4Com 
 >>  port and the others in your configuration.

 >>  At 08:25 AM 11/3/02 -0800, Alan Womack wrote:
 >>  >I have a chance to get back to this issue, it appears actually that none 
 >>  >of the STB 4Com ports are working "correctly" I can get some "data" from 
 >>  >od -v /dev/ttyS01 but it is a file of ^@ the control character and the 
 >>  >longer I leave it up the more it gets whether data is being sent or 
 >>  >not.  I have tested /dev/ttyS00 with a null modem cable and details 
 >>  >follow.  I want to work on just /dev/ttyS01 at this moment.
 >>  [...]
 >>  >setserial /dev/ttyS01 baud_base 9600 irq 3 port 0x02A8 ^fourport
 >>  ^skip_test
 >>  [...]
 >>  >root@webby:root# ./serial.ports
 >>  >/dev/ttyS01, Line 1, UART: 16550A, Port: 0x02a8, IRQ: 3
 >>  >         Baud_base: 9600, close_delay: 50, divisor: 0
 >>  >         closing_wait: 3000
 >>  >         Flags: spd_normal

 >>  Since the setserial probe finds a UART type associated with ttyS01, that 
 >>  device is configured correctly for *some* serial port. But since it also
 >>  is 
 >>  using the standard values for the second serial port ... does your mobo 
 >>  have 1 or 2 serial ports (an onboard modem port counts)? My first thought 
 >>  is that you have an irq/ioport conflict (newer kernels support irq
 >>  sharing, 
 >>  but you can't share ioports). If you do, either move S01 to a different 
 >>  itq/ioport combination, or make sure the modem/serial port is diaabled in 
 >>  the mobo's BIOS.

My motherboard only has one physical serial port, and I am sure the built in modem jumper is in the diabled position.

My kernel is 2.4.18 built from www.linuxfromscratch.org  book 3.3

 >>  If that is not the problem ... I don't have experience with the specific 
 >>  4-port card you are using, but I do recall that some multiport cards (the 
 >>  old BocaBoard 8 comes to mind)  did not provide all of the control signals
 >>  
 >>  (DTR/DSR. RTS/CTS, DCD), while onboard serial ports pretty reliably do.
 >>  You 
 >>  might want to retest with a null-modem cable that loopbacks the control 
 >>  signals rather than one that passes them through (even appropriately 
 >>  crossed, as your cable does).

 >>  If none of that helps ... the only thing I am left with is wondering if
 >>  the 
 >>  card itself works. You might want to repeat the tests using the port 
 >>  associated with ttyS02 as a check.

I have physically installed the board into an old windows workstation and verified that port 1 with
IRQ3 port 0x2a8 works via my cable and talking between windows machines.

I am going to remove the card and change each different port to this configuration and retest, that way I can know that all of them physically function or not.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
