From: pericles@v35.com
Subject: Subject: Hardware Modem
Date: Thu, 30 May 2002 05:29:00 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205300517.g4U5H4432430@ns2.easy-pages.com>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Sridhar wrote:

> Something offtopic, but one question, what is a hardware
> modem and what is a software modem?

More experienced Linux users will have better answers, but
let me try to answer. Older modems connected to i286, i386,
i486, etc., and older machines, via an RS-232 serial interface.
These modems did all of the work necessary to modulate and
demodulate date over the plain old analog telephone line.
These modems were external devices in their own small box
and were usually powered by small AC transformer power
supplies.

Later, modems became cards that plugged into ISA slots.
They derived their power from the motherboard's bus, and
for economy, began performing less of their own work.
They relyied on the motherboard's CPU to do some of the
work that the external, hardware modems did for themselves.

At the same time, Microsoft and the manufacturers of these
internal, bus card modems, reached agreement whereby the
source code for the drivers for these modems would be
proprietary and not open.

From the standpoint of the so-called hardware modem
doing its own work without burdening the system's CPU,
and especially from the standpoint of open-source code
being unavailable to Linux programmers, the hardware modem
is considered by Linux to be the only "true modem."

The card modems are generally referred to as "Winmodems,"
or devices that plug into an ISA slot and have proprietary
non-open-source driver code.

Some excellent Linux-centric websites discuss this issue
at length as well as list modems by their Linux compatibility.
I am sorry I don't have the link. Someone in this group will
send it, I am sure. Otherwise, do a Google search with
search terms something like "modem linux." Look for a site
that is listed as stating something like why Winmodems are
not modems :-)

Best regards,
John E. Jay Maass, K7JKZ
suburban Philadelphia
pericles@v35.com
http://jaywire.members.tripod.com
using Steven Darnold's BasicLinux Ver. 1.61
 
 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
