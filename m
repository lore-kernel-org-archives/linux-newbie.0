From: Alan Womack <arwbackup@worldnet.att.net>
Subject: Trouble with serial ports
Date: Mon, 14 Oct 2002 21:31:22 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU0581Np7vX00000137@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

OK, made a loop back cable.  Works great on the windows box, fast and accurate.

On the linux box it's INCREDIBLY slow, makes 300 baud look blazing.  Take like 2 hours to print the whole dmesg:

cat dmesg (I have it saved to a file) >/dev/ttyS01

on second terminal

od -v /dev/ttyS01

nothing is dropped, but it is SLOW SLOW SLOW

So I connect a cable up between the two machines, nothing nada zip nat.  NOTHING comes over from either direction.

So I take the cable off the linux end, connect it to the windows workstation and swap the gender to go from com1 to com2.  I still get absolutely nothing.

Therefore I checked the cable, pin 2 to pin 3 on the other end, that is all correct.

I pulled my STB 4Com card out of the linux box, changed interrupts around to:

3 for port 1 on 02A8
12 for port 2 on 02E8
15 for port 3 on 02F8
15 for port 4 on 03E8

put the loopback on ttyS00, the motherboard serial port.  Works great, very fast.
put the loopback on the new TTYS01, finally got a quick response.

cabled between the two computers, nothing.

Put loopback on TTYS02, VERY SLOW
Put loopback on TTYS03, VERY SLOW
Put loopback on TTYS04, error
alan@webby:alan $ od -v -t a /dev/ttyS04
od: /dev/ttyS04: Input/output error
0000000


What baffles me the most is I don't get communications between windows com ports com1 and com2 with a cable, and the same with the linux machine.  That defies what I know of serial communcations.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
