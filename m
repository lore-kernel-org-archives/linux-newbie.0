From: Ray Olszewski <ray@comarre.com>
Subject: Re: Trouble with serial ports
Date: Mon, 14 Oct 2002 23:46:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021014232506.02131e10@celine>
References: <CPIMSSMTPU0581Np7vX00000137@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU0581Np7vX00000137@cpimssmtpu05.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org

Your style of reporting makes this hard to interpret. Here are a few thoughts.

Initially, a style note -- case counts in Unix/Linux, and the correct names 
are ttyS00, ttyS01, and so forth ... so TTYS02, TTYS03, and the like are 
not designators for serial ports on Linux systems.

Now the substantive reactions ...

First, you tell us what you changed the STB 4Com card interrupts *to*, but 
not what you changed them *from*. Since both ttyS00 and ttyS01 seem to work 
with the STB 4Com card IRQs you tell us about, it's a good guess that the 
prior settings caused some problem. But without knowing what the prior 
settings were, I can only guess wildly as to what it might have been.

Second, when you connect the Linux and the Windows hosts (or the 2 serial 
ports on the Windows host), I assume you are using  a null-modem cable 
(since you say "pin 2 to pin 3 on the other end, that is all 
correct").  But there are several flavors of null-modem cables ... the only 
commonalities among them is that they connect

                 pin 2   <--->   pin 3
                 pin 3   <--->   pin 2
                 pin 7   <--->   pin 7

(using the DB-25 pin numberings, not the different DB-9 numberings). So it 
is not meaningful to say "that all is correct", since there are several 
options for the other handshaking pins, and you have to tell us which ones 
your cable uses.

Third, when you try and fail to communicate with a cable, what applications 
are you using in the tests? How are they handling handshaking? Is this 
consistent with the cabling choice you made (and for that matter, are the 
two ends handling handshaking consistently)?

Fourth, after you changed the IRQs on the STB 4Com card, did you use 
setserial to assign the appropriate IRQ and ioport values to ttyS02, 
ttyS03, and ttyS04 (and presumably ttyS05, though you didn't mention 
testing it)? If not, you might run setserial in probe mode (e.g., 
"setserial /dev/ttyS02") to see where each device expects to find its UART.

At 09:31 PM 10/14/02 -0700, Alan Womack wrote:
>OK, made a loop back cable.  Works great on the windows box, fast and 
>accurate.
>
>On the linux box it's INCREDIBLY slow, makes 300 baud look blazing.  Take 
>like 2 hours to print the whole dmesg:
>
>cat dmesg (I have it saved to a file) >/dev/ttyS01
>
>on second terminal
>
>od -v /dev/ttyS01
>
>nothing is dropped, but it is SLOW SLOW SLOW
>
>So I connect a cable up between the two machines, nothing nada zip 
>nat.  NOTHING comes over from either direction.
>
>So I take the cable off the linux end, connect it to the windows 
>workstation and swap the gender to go from com1 to com2.  I still get 
>absolutely nothing.
>
>Therefore I checked the cable, pin 2 to pin 3 on the other end, that is 
>all correct.
>
>I pulled my STB 4Com card out of the linux box, changed interrupts around to:
>
>3 for port 1 on 02A8
>12 for port 2 on 02E8
>15 for port 3 on 02F8
>15 for port 4 on 03E8
>
>put the loopback on ttyS00, the motherboard serial port.  Works great, 
>very fast.
>put the loopback on the new TTYS01, finally got a quick response.
>
>cabled between the two computers, nothing.
>
>Put loopback on TTYS02, VERY SLOW
>Put loopback on TTYS03, VERY SLOW
>Put loopback on TTYS04, error
>alan@webby:alan $ od -v -t a /dev/ttyS04
>od: /dev/ttyS04: Input/output error
>0000000
>
>
>What baffles me the most is I don't get communications between windows com 
>ports com1 and com2 with a cable, and the same with the linux 
>machine.  That defies what I know of serial communcations.



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
