From: Adam Luchjenbroers <adam@luchjenbroers.com> (by way of Adam
	Luchjenbroers <adam@luchjenbroers.com> by way of Adam Luchjenbroers
	<adam@luchjenbroers.com>)
Subject: Re: Large FTP transfers
Date: Mon, 30 Sep 2002 23:25:31 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209302325.31923.adam@luchjenbroers.com>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> The last 2 messages above say resource collisions, either you have 2 cards
> sharing one IRQ (see that with cat /proc/interruts) and one or the other is
> misbehaving, or there is a wire lose in the cable plug.

$ cat /proc/interrupts/

           CPU0
  0:     168834          XT-PIC  timer
  1:       1111          XT-PIC  keyboard
  2:          0          XT-PIC  cascade
  5:       7592          XT-PIC  usb-uhci, usb-uhci, eth0, es1371
  9:          0          XT-PIC  acpi
 11:      91995          XT-PIC  nvidia
 12:      59739          XT-PIC  PS/2 Mouse
 14:      13718          XT-PIC  ide0
 15:          5          XT-PIC  ide1
NMI:          0
LOC:     168800
ERR:         86
MIS:          0

> Check all the simple things before pointing a finger at the card.
> Things like this can have many causes, at least the messages all point to
> 00:09.0 which we are presuming is the ethernet card, lspci will tell you
> what 00:09.0 is.

00:09.0 Ethernet controller: 3Com Corporation 3c905B 100BaseTX [Cyclone] (rev
24)
	Subsystem: 3Com Corporation 3C905B Fast Etherlink XL 10/100
	Flags: bus master, medium devsel, latency 32, IRQ 5
	I/O ports at d000 [size=128]
	Memory at e7000000 (32-bit, non-prefetchable) [size=128]
	Expansion ROM at <unassigned> [disabled] [size=128K]
	Capabilities: <available only to root>

Yep, it is.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
