From: Ray Olszewski <ray@comarre.com>
Subject: Re: Introduction and Scanner Help
Date: Tue, 23 Apr 2002 11:33:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020423183336.00f952e8@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Staci <spiritlover666@yahoo.com>
Cc: linux-newbie@vger.kernel.org

Since you only replied to me privately, I added the list back in and left
your reply unedited.

If everything you report is correct, my best guess is that you have an
unsupported scanner. In your first message, you identified the scanner as a
"Microtek Scanport 3000, connects thru USB". 

1. I can't find an entry for "Microtek Scanport 3000" on the list of USB
scanners supported by SANE (at URL
http://www.buzzard.org.uk/jonathan/scanners-usb.html). It does list several
Microtek "Scanmaker" models as supported. This may be why sane-find-scanner
comes up empty.

2. The listing there is consistent with the one for scanners supported by
the kernel's USB drivers, in /usr/src/linux/Documentation/usb/scanners.txt
(for Linux 2.4.17 on Debian Sid, which I run here on my main Linux
workstation -- this documentation is present only if you have installed the
kernel source tree).

3. The dmesg output you quote below does indicate that the kernel is
detecting a scanner on the USB port, but it apparently misidentifies it as a
"Microtek Scanmaker X6 USB scanner" and loads the Microtek driver for that.
So you may have the right usb driver (usbscanner) but the wrong
scanner-protocol driver (microtekX6).

4. Just as a check, I took a quick look at the source for this driver. It
lists these entries for supported scanners ...

tytso 1.1     | {
tytso 1.1     |         { "Phantom 336CX",      mts_sup_unknown},
tytso 1.1     |         { "Phantom 336CX",      mts_sup_unknown},
tytso 1.1     |         { "Scanmaker X6",       mts_sup_alpha},
tytso 1.1     |         { "Phantom C6",         mts_sup_unknown},
tytso 1.1     |         { "Phantom 336CX",      mts_sup_unknown},
tytso 1.1     |         { "ScanMaker V6USL",    mts_sup_unknown},
tytso 1.1     |         { "ScanMaker V6USL",    mts_sup_unknown},
tytso 1.1     |         { "Scanmaker V6UL",     mts_sup_unknown},
tytso 1.1     | };

... again suggesting that your scanner is unsupported.

5. Finally, Microtek actually lists your scanner under "third-party support"
at its Web site, and not with the rest of the Windows scanners. So I
strongly suspect it is sufficiently different from the Scanmaker series that
those drivers will not work with it.

6. The proc filesystem is a set of pseudo-file entries that actually point
to locations in the kernel, letting you get kernel information as though it
were kept in ordinary text files. From what you wrote, I can't tell if the
/proc filesystem itself (as distinct from /proc/usb) is present on your
system or not. It is a compilation option, but I'd be surprised if Slackware
stock kernels did not support it. On a quick search, the only place I can
find information about the /proc filesystem is in the same kernel
Documentation directory I referred to earlier.

At 10:33 AM 4/23/02 -0700, Staci wrote:
>
>--- Ray Olszewski <ray@comarre.com> wrote:
>> If the scanner does not work in either Windows or
>> Linux, the first thing to
>> consider is the possibility that the device itself
>> is defective. We can't
>> help you much with that part. Since the manufacturer
>> probably supports
>> Windows installations, I'd suggest your getting its
>> tech support either to
>> make that work or to identify the actual scanner as
>> bad. That's probably a
>> more useful approach than writing a "very nasty
>> letter".
>
>I'm not sure I can get support, it's over 90 days and
>they only offer support for 90 days. 
>But according to what I just told the customer service
>person, I only *just* tried to install it. ;)
>
>> If the device itself is OK ... well, to help you
>> with Linux specifics, we
>> need to hear more than that "somehow SANE can't see>
>it".
>
>> First, what dmesg "stuff" are you referring to when
>> you write "It LOOKS from
>> the dmesg stuff that Linux DOES know that there's
>> something plugged in"?
>> (Quote the relevant parts, please.)
>usb.c: registered new driver hub
>PCI: Assigned IRQ 5 for device 00:06.0
>usb-ohci.c: USB OHCI at membase 0xc8802000, IRQ 5
>usb-ohci.c: usb-00:06.0, Acer Laboratories Inc. [ALi]
>M5237 USB
>usb.c: new USB bus registered, assigned bus number 1
>hub.c: USB hub found
>hub.c: 2 ports detected
>PCI: Assigned IRQ 10 for device 00:14.0
>usb-ohci.c: USB OHCI at membase 0xc8804000, IRQ 10
>usb-ohci.c: usb-00:14.0, Acer Laboratories Inc. [ALi]
>M5237 USB (#2)
>usb.c: new USB bus registered, assigned bus number 2
>hub.c: USB hub found
>hub.c: 2 ports detected
>usb.c: registered new driver usbscanner
>scanner.c: 0.4.6:USB Scanner Driver
>usb.c: registered new driver microtekX6
>microtek.c: v0.4.3:Microtek Scanmaker X6 USB scanner
>driver
>
>(The second one is my usb-connected PDA which doesn't
>work either. :/)
> 
>> Second, how do you actually try to use the scanner
>> and how does that attempt
>> fail? (What app are you using? What errors onscreen?
>> What log entries?)
>
>I haven't actually attempted to *use* it yet. 
>In order to try to use it, I have to configure
>xscanimage and the other sane front-ends.
>And they dont see it.  
>
>root@nowhere:/home/staci/sane-frontends-1.0.7#
>sane-find-scanner
># Note that sane-find-scanner will find any scanner
>that is connected
># to a SCSI bus and some scanners that are connected
>to the Universal
># Serial Bus (USB) depending on your OS. It will even
>find scanners
># that are not supported at all by SANE. It won't find
>a scanner that
># is connected to a parallel or proprietary port.
> 
># If your scanner uses SCSI, you must have a driver
>for your SCSI
># adapter and support for SCSI Generic (sg) in your
>Operating System
># in order for the scanner to be used with SANE. If
>your scanner is
># NOT listed above, check that you have installed the
>drivers.
>root@nowhere:/home/staci/sane-frontends-1.0.7#
> 
>See that empty space, the break in the middle? I think
>that's where the scanner info would go if it was
>found.
>
>> Third, what entries are in /proc/usb?
>
>There is no /proc/usb. (might be a slack thing)
>Could you give me a quick lesson on what that dir is
>and what a proc is...?  
>
>> And BTW, what kernel are you using ("uname -a")? And
>> what version of Slackware?
>
>Slack 8, kernel 2.4.18
> 
>> To be honest, I've never run a scanner on Linux, 
>That's okay.
>I'm sorta at the end of my rope, I may be soon looking
>to sell the dumb thing to someone who uses windows. :(
>
>sl
>
>=====
>**************************
>In cyberspace nobody can hear you scream.
>
>__________________________________________________
>Do You Yahoo!?
>Yahoo! Games - play chess, backgammon, pool and more
>http://games.yahoo.com/
>

--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
