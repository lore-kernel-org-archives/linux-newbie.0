From: Ray Olszewski <ray@comarre.com>
Subject: Re: commport settings
Date: Sun, 22 Dec 2002 17:31:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021222171343.020bc430@celine>
References: <200212230108.gBN18368001576@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212230108.gBN18368001576@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

This is a bit hard to follow, Heimo, but let's see what I can do.

First, the normal way to change the settings of a serial (ttyS*) device is 
with setserial. So that part of what you are doing is good. This is how I 
always did it in Slackware, and it is how I would do it if I needed to now 
in Debian. I'm afraid I cannot figure out what "restrictedly efficient" 
means ... but if it is a criticism of this method, I think it a misguided one.

Oh, one clarification ... setserial changes are transient -- they do not 
survive a reboot. To make these changes every time you reboot, add the 
appropriate setserial command to an init file (whatever equivalent you use 
to the olden-days rc.local file).

Second, when you write "this one works only from/in X (Mandrake installs), 
and is not available at all in the Debian install", what "this one" are you 
talking about? A typical Debian install will install the setserial program, 
and it should work in Debian much the same as it works in Mandrake.

Third, devices are not usually listed in /proc/irq (not irqs) and 
/proc/ioports (not IOports) until they are used. Before you attempt to use 
the modem, it should not have entries present. After you do, it should.

Fourth, when you write, "There's no means to have the modem 
activated/available in console mode" ... well, I do not know what 
applications you have installed, so I cannot guess what you might expect to 
be available that is not. Before you made the change to the modem's 
settings, what console apps did you use to access the modem? How do they 
fail now?

Fifth, when you write:

         NOTE: with booting, the BIOS sure "sees" it at the right address, and
         so does the Linux boot sequence; only that this one stubbornly
         insists on assigning it IRQ 3 - which is the reason for the
         whole nuisance.

... what is the "it" in "assigning it"? Is it a different "it" from the 
"it" that "the BIOS sure 'sees'" at the "right address"? The BIOS (and the 
Linux kernel) can find serial ports just fine, but neither of them 
automatically changes the assignments in the /dev/ttyS* devices ... for 
that you need to use setserial.

Finally, you can use setserial to verify that you have successfully set the 
device to the values you want, and that it points to a real device. Just 
run "setserial /dec/ttyS3" and see if it returns the irq you expect, the 
ioport you expect, and a UART type. The last result tells you that there 
really is a serial port at that irq/ioport setting.

At , Heimo Claasen wrote:
>For some reason which have nothing to do with the following, I had to
>change the connection of the (external) modem from its original
>placement on the motherboard's COM2 / 2f8 (with IRQ 3) to an UART on an
>ISA card at COM4 / 2e8 and IRQ 7.
>
>I could not find any means, with "linuxconf" for instance, to have the
>system accept the new setting. Only - restrictedly efficient - measure
>is doing "setserial /dev/ttyS3 port 0x02e8 irq 7".
>
>This allows at least to use "kppp" (which accepts the new "device"
>setting to /dev/ttyS3 in its setup) then - but this one works only
>from/in X (Mandrake installs), and is not available at all in the
>Debian install (I use exchangeable HDs for running the one or other
>system). There's no means to have the modem activated/available
>in console mode - if I don't go into X, start kppp from there, then
>log in with a root console again: definitely not very elegant; and
>impossible on the Debian install as there is no kppp there.
>
>Running "setserial" doesn't seem to insert the relevant information
>either into the system's tables: neither /proc/IOports nor /proc/irqs
>show any sign of the modem.
>
><besides> Rather obscure, logically, that with the re-login to a
>console from X it's possible to use the modem _IF IT HAS BEEN ACTIVATED_
>by kppp in X before - in the Mdk install, even "ifup ppp0" _does_
>work _then_, even if kppp has just been called and used only to query
>the modem, and has been closed again without having actually done a
>connection.</besides>
>
>So how do I get the dang system to accept the new settings of the
>modem ?!
>NOTE: with booting, the BIOS sure "sees" it at the right address, and
>so does the Linux boot sequence; only that this one stubbornly
>insists on assigning it IRQ 3 - which is the reason for the
>whole nuisance.
>
>Gransking all those HOWTOs and mans didn't give any better hint than
>precisely that to use "setserial"; but _no_ answer on the question how
>the initial setting of a system installed, defined at the time with the
>system installation, is to be changed.



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
