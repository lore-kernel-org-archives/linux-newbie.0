From: lawson_whitney@juno.com
Subject: Re: Trouble with serial ports
Date: Sun, 3 Nov 2002 18:07:35 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021103.221522.134684296.0.lawson_whitney@juno.com>
References: <CPIMSSMTPU04i8TywMf00000b1c@cpimssmtpu04.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU04i8TywMf00000b1c@cpimssmtpu04.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: arwbackup@worldnet.att.net
Cc: linux-newbie@vger.kernel.org

On Sun, 3 Nov 2002, Alan Womack wrote:

> The STB 4Com card came to me used, I have attempted to set the card up in a manner as such:
>
> setserial /dev/ttyS04 baud_base 9600 irq 15 port 0x03E8 ^fourport ^skip_test
> setserial /dev/ttyS03 baud_base 9600 irq 15 port 0x02F8 ^fourport ^skip_test
> setserial /dev/ttyS02 baud_base 9600 irq 15 port 0x02E8 ^fourport ^skip_test
> setserial /dev/ttyS01 baud_base 9600 irq 3 port 0x02A8 ^fourport ^skip_test

Wy are you doing this?  The baud_base of a 16550a is 115200 unless this
is very strange hardware indeed.  The baud base is just used by the
serial driver to choose which divisor to set for a requested speed.
A baud base of 9600 with a requested speed of 9600 give a divisor of 1,
which will make a normal 16550a run at 115200.
It won't see anything coming over the cable at 9600, or maybe a little
garbage.

> setserial -a /dev/ttyS01
> setserial -a /dev/ttyS02
> setserial -a /dev/ttyS03
> setserial -a /dev/ttyS04
>
> root@webby:root# ./serial.ports
> /dev/ttyS01, Line 1, UART: 16550A, Port: 0x02a8, IRQ: 3
>         Baud_base: 9600, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal
>
> /dev/ttyS02, Line 2, UART: 16550A, Port: 0x02e8, IRQ: 15
>         Baud_base: 9600, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal
>
> /dev/ttyS03, Line 3, UART: 16550A, Port: 0x02f8, IRQ: 15
>         Baud_base: 9600, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal
>
> /dev/ttyS04, Line 4, UART: unknown, Port: 0x03e8, IRQ: 15
>         Baud_base: 9600, close_delay: 50, divisor: 0
>         closing_wait: 3000
>         Flags: spd_normal
>
> I have constructed a null modem cable, I have tested it between COM1 and COM2
 on my windows workstation, and between COM1 and /dev/ttyS00 successfully.
e.g. a 50K + test file with no apparent garabage or corruption using 9600 8 n 1
I was successful in going from windows to linux and from linux to windows
 without issue on /dev/ttyS00.  /dev/ttyS00 is the motherboard serial port.

Probably because you didn't mess with the baud_base.
>
> The cable pin out is db9:
>
> 2  -- 3
> 3 -- 2
> 4 --  6+1
> 5 -- 5
> 6+1 -- 4
> 7 -- 8
> 8 -- 7
>
>
> On windows I am using Terra Term Pro, a freeware serial/telnet client.  I have no flow control selected and 9600 8 n 1 as my settings.
>
> On linux I have used term with term /dev/ttyS00 9600 8 n 1
> I have used od -v /dev/ttyS00
> I have used  stty -F /dev/ttyS00 raw -echo 9600 ; cat /dev/ttyS00 > /tmp/0.txt
>
What do you have against minicom or cu?  Or try if Wine will run Terra
Term Pro.

Lawson

--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
