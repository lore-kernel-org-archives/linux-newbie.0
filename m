From: Alan Womack <arwbackup@worldnet.att.net>
Subject: getting serial ports on STB4COM UP
Date: Sat, 18 Jan 2003 11:39:51 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU05kWHZqYW00000245@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

after a few weeks hiatus, I am making another attempt at getting the last three serial ports of my STB4COM online.

My system:

LFS 3.3
Amptron 9100C
STB 4Com 4 port ISA serial board

I have ttyS00 on the motherboard working perfectly:

alan@webby:alan $ setserial -a /dev/ttyS00
/dev/ttyS00, Line 0, UART: 16550A, Port: 0x03f8, IRQ: 4
       Baud_base: 115200, close_delay: 50, divisor: 0
       closing_wait: 3000
       Flags: spd_normal skip_test

The Amptron 9100C only has 1 serial port on the motherboard.

Port 1 of the STB4COM port is also working perfectly:

alan@webby:alan $ setserial -a /dev/ttyS01
/dev/ttyS01, Line 1, UART: 16550A, Port: 0x02a8, IRQ: 3
       Baud_base: 115200, close_delay: 50, divisor: 0
       closing_wait: 3000
       Flags: spd_normal

Port 2 is giving me some timing issues, it suffers buffer overruns and takes between 10 and 30 seconds to send along bits of the text sent to it from another machine.  There is no corruption to very short messages, it is just herky jerky and VERY VERY slow.

The port 2 is setup as:

root@webby:root# setserial /dev/ttyS02 -a
/dev/ttyS02, Line 2, UART: 16550A, Port: 0x02f8, IRQ: 15
       Baud_base: 115200, close_delay: 50, divisor: 0
       closing_wait: 3000
       Flags: spd_normal


I have verified with flashlight and documentation I have the port and interrupt assigned correctly.

The next two ports ttyS03 ttyS04 also share interrupt 15.  I am not sure if this is the issue in itself or not.

I have tried using term with baud rates of 300,9600,115200.  None seem to help the stall before the text is output to STDOUT.

On my windows box I use Tera Term Pro and am sure of the settings.

Thoughts?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
