From: Alan Womack <arwbackup@worldnet.att.net>
Subject: Re: Trouble with serial ports
Date: Sun, 3 Nov 2002 08:25:26 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU04i8TywMf00000b1c@cpimssmtpu04.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

I have a chance to get back to this issue, it appears actually that none of the STB 4Com ports are working "correctly" I can get some "data" from od -v /dev/ttyS01 but it is a file of ^@ the control character and the longer I leave it up the more it gets whether data is being sent or not.  I have tested /dev/ttyS00 with a null modem cable and details follow.  I want to work on just /dev/ttyS01 at this moment.

 >>  First, you tell us what you changed the STB 4Com card interrupts *to*, but
 >>  
 >>  not what you changed them *from*. Since both ttyS00 and ttyS01 seem to
 >>  work 
 >>  with the STB 4Com card IRQs you tell us about, it's a good guess that the 
 >>  prior settings caused some problem. But without knowing what the prior 
 >>  settings were, I can only guess wildly as to what it might have been.

The STB 4Com card came to me used, I have attempted to set the card up in a manner as such:

setserial /dev/ttyS04 baud_base 9600 irq 15 port 0x03E8 ^fourport ^skip_test
setserial /dev/ttyS03 baud_base 9600 irq 15 port 0x02F8 ^fourport ^skip_test
setserial /dev/ttyS02 baud_base 9600 irq 15 port 0x02E8 ^fourport ^skip_test
setserial /dev/ttyS01 baud_base 9600 irq 3 port 0x02A8 ^fourport ^skip_test
setserial -a /dev/ttyS01
setserial -a /dev/ttyS02
setserial -a /dev/ttyS03
setserial -a /dev/ttyS04

root@webby:root# ./serial.ports
/dev/ttyS01, Line 1, UART: 16550A, Port: 0x02a8, IRQ: 3
        Baud_base: 9600, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal

/dev/ttyS02, Line 2, UART: 16550A, Port: 0x02e8, IRQ: 15
        Baud_base: 9600, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal

/dev/ttyS03, Line 3, UART: 16550A, Port: 0x02f8, IRQ: 15
        Baud_base: 9600, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal

/dev/ttyS04, Line 4, UART: unknown, Port: 0x03e8, IRQ: 15
        Baud_base: 9600, close_delay: 50, divisor: 0
        closing_wait: 3000
        Flags: spd_normal

 >>  Second, when you connect the Linux and the Windows hosts (or the 2 serial 
 >>  ports on the Windows host), I assume you are using  a null-modem cable 
 >>  (since you say "pin 2 to pin 3 on the other end, that is all 
 >>  correct").  But there are several flavors of null-modem cables ... the
 >>  only 
 >>  commonalities among them is that they connect

 >>  pin 2   <--->   pin 3
 >>  pin 3   <--->   pin 2
 >>  pin 7   <--->   pin 7

I have constructed a null modem cable, I have tested it between COM1 and COM2 on my windows workstation, and between COM1 and /dev/ttyS00 successfully.  e.g. a 50K + test file with no apparent garabage or corruption using 9600 8 n 1.  I was successful in going from windows to linux and from linux to windows without issue on /dev/ttyS00.  /dev/ttyS00 is the motherboard serial port.

The cable pin out is db9:

2  -- 3
3 -- 2
4 --  6+1
5 -- 5
6+1 -- 4
7 -- 8
8 -- 7

 >>  Third, when you try and fail to communicate with a cable, what
 >>  applications 
 >>  are you using in the tests? How are they handling handshaking? Is this 
 >>  consistent with the cabling choice you made (and for that matter, are the 
 >>  two ends handling handshaking consistently)?

On windows I am using Terra Term Pro, a freeware serial/telnet client.  I have no flow control selected and 9600 8 n 1 as my settings.

On linux I have used term with term /dev/ttyS00 9600 8 n 1
I have used od -v /dev/ttyS00
I have used  stty -F /dev/ttyS00 raw -echo 9600 ; cat /dev/ttyS00 > /tmp/0.txt


 >>  Fourth, after you changed the IRQs on the STB 4Com card, did you use 
 >>  setserial to assign the appropriate IRQ and ioport values to ttyS02, 
 >>  ttyS03, and ttyS04 (and presumably ttyS05, though you didn't mention 
 >>  testing it)? If not, you might run setserial in probe mode (e.g., 
 >>  "setserial /dev/ttyS02") to see where each device expects to find its
 >>  UART.

root@webby:root# setserial /dev/ttyS01
/dev/ttyS01, UART: 16550A, Port: 0x02a8, IRQ: 3


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
