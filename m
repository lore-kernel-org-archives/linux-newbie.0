From: Heimo Claasen <hammer@revobild.net>
Subject: commport settings
Date: 23 Dec 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212230108.gBN18368001576@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: "e.a./CC" <linux-newbie@vger.kernel.org>

For some reason which have nothing to do with the following, I had to
change the connection of the (external) modem from its original
placement on the motherboard's COM2 / 2f8 (with IRQ 3) to an UART on an
ISA card at COM4 / 2e8 and IRQ 7.

I could not find any means, with "linuxconf" for instance, to have the
system accept the new setting. Only - restrictedly efficient - measure
is doing "setserial /dev/ttyS3 port 0x02e8 irq 7".

This allows at least to use "kppp" (which accepts the new "device"
setting to /dev/ttyS3 in its setup) then - but this one works only
from/in X (Mandrake installs), and is not available at all in the
Debian install (I use exchangeable HDs for running the one or other
system). There's no means to have the modem activated/available
in console mode - if I don't go into X, start kppp from there, then
log in with a root console again: definitely not very elegant; and
impossible on the Debian install as there is no kppp there.

Running "setserial" doesn't seem to insert the relevant information
either into the system's tables: neither /proc/IOports nor /proc/irqs
show any sign of the modem.

<besides> Rather obscure, logically, that with the re-login to a
console from X it's possible to use the modem _IF IT HAS BEEN ACTIVATED_
by kppp in X before - in the Mdk install, even "ifup ppp0" _does_
work _then_, even if kppp has just been called and used only to query
the modem, and has been closed again without having actually done a
connection.</besides>

So how do I get the dang system to accept the new settings of the
modem ?!
NOTE: with booting, the BIOS sure "sees" it at the right address, and
so does the Linux boot sequence; only that this one stubbornly
insists on assigning it IRQ 3 - which is the reason for the
whole nuisance.

Gransking all those HOWTOs and mans didn't give any better hint than
precisely that to use "setserial"; but _no_ answer on the question how
the initial setting of a system installed, defined at the time with the
system installation, is to be changed.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-12-22
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
