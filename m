From: Ray Olszewski <ray@comarre.com>
Subject: Re: getting serial ports on STB4COM UP
Date: Sat, 18 Jan 2003 12:03:22 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030118115646.021bf060@celine>
References: <CPIMSSMTPU05kWHZqYW00000245@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU05kWHZqYW00000245@cpimssmtpu05.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, "Majordomo leben.com" <linux-newbie@vger.kernel.org>

Alan -- In your kernel, have you compiled in support for serial ports 
sharing interrupts? It's an option (in "make menuconfig") under

         Character Devices
                 Extended dumb serial options
                         Support for sharing serial interrupts

The fact that you have problems only on a port that shares an IRQ suggests 
that this may be the cause.

You might also want to enable "Support more than 4 serial ports" in the 
same location.

This is for 2.4.x kernels (I actually checked 2.4.19 source, as distributed 
by Debian).

At 11:39 AM 1/18/03 -0800, Alan Womack wrote:
>after a few weeks hiatus, I am making another attempt at getting the last 
>three serial ports of my STB4COM online.
>
>My system:
>
>LFS 3.3
>Amptron 9100C
>STB 4Com 4 port ISA serial board
>
>I have ttyS00 on the motherboard working perfectly:
>
>alan@webby:alan $ setserial -a /dev/ttyS00
>/dev/ttyS00, Line 0, UART: 16550A, Port: 0x03f8, IRQ: 4
>        Baud_base: 115200, close_delay: 50, divisor: 0
>        closing_wait: 3000
>        Flags: spd_normal skip_test
>
>The Amptron 9100C only has 1 serial port on the motherboard.
>
>Port 1 of the STB4COM port is also working perfectly:
>
>alan@webby:alan $ setserial -a /dev/ttyS01
>/dev/ttyS01, Line 1, UART: 16550A, Port: 0x02a8, IRQ: 3
>        Baud_base: 115200, close_delay: 50, divisor: 0
>        closing_wait: 3000
>        Flags: spd_normal
>
>Port 2 is giving me some timing issues, it suffers buffer overruns and 
>takes between 10 and 30 seconds to send along bits of the text sent to it 
>from another machine.  There is no corruption to very short messages, it 
>is just herky jerky and VERY VERY slow.
>
>The port 2 is setup as:
>
>root@webby:root# setserial /dev/ttyS02 -a
>/dev/ttyS02, Line 2, UART: 16550A, Port: 0x02f8, IRQ: 15
>        Baud_base: 115200, close_delay: 50, divisor: 0
>        closing_wait: 3000
>        Flags: spd_normal
>
>
>I have verified with flashlight and documentation I have the port and 
>interrupt assigned correctly.
>
>The next two ports ttyS03 ttyS04 also share interrupt 15.  I am not sure 
>if this is the issue in itself or not.
>
>I have tried using term with baud rates of 300,9600,115200.  None seem to 
>help the stall before the text is output to STDOUT.
>
>On my windows box I use Tera Term Pro and am sure of the settings.
>
>Thoughts?



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
