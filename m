From: Ray Olszewski <ray@comarre.com>
Subject: Re: Can't Print (fwd)
Date: Sun, 02 May 2004 07:50:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040502073017.01efcfc0@celine>
References: <20040502065909.56AB020933@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040502065909.56AB020933@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:59 PM 5/2/2004 +0800, Peter wrote:
> >heisspf@skyinet.net said:
> > > On a standalone PC with no modem and therefore no Internet connection
> > > and RH 9.0 installed I am unable to get the printer to work.
> >
> > > I have not an onboard parport but a singel parallel PCI card with chipset
> > > NM9805CV.
>
>ray@comarre.com said:
> > but I **think** you also need the module parport_pc to use a parallel
> > printer.
>
>I have done that: insmod parport_pc io=0x378 irq=7
>
>then I get in dmesg 2 warnings and the message parport 0x378: "you gave this
>address, but there is probably no parallel port there!"
>
>After insmod parport_pc there is no more error message about 'cannot open
>'/dev/lp0' 'No such device or address'
>
>Doing lpr file gives some rumbling on the hd and lpq shows job done yet
>nothing has been printed.
>
>io=0x378 and irq=7 I got from the instructions on how to install the printer
>card.
>
>In bios onboard paraport is disabled.
>
>"more /proc/pci" should give me the io and irq addresses of the card, it does
>not. Could that mean that the card has not been detected at all by the system?
>
>Kudzu does not indicate that it had found new hardware after the card was
>installed.


This troubleshooting report is a bit of a hodgepodge of information, so a 
hodgepodge of suggestions is probably a proper response to it.

1. In the BIOS, do you have "PnP OS" set to NO? Or (if it is YES) do you 
have RH set up to do PnP for you? (I can't advise you as to how, since my 
practice is to let the BIOS handle PnP.) If I were to guess at this point, 
it would be that you have this setting wrong.

2. Does the BIOS report seeing the PCI card? BIOS information formats vary 
a lot, but usually there is a screen briefly displayed just before boot 
starts that shows IRQ info. With Linux, it will show up just before (and at 
first , right above) the LILO: prompt.

3. Look at your BIOS screens to see what IRQs it is set to assign to the 
various PCI slots. IRQ 7 is unlikely to be there by default (since it would 
normally be used by the mobo parport, the one you've disabled). Also check 
to see if you'ce reserved any IRQs for "legacy" use (which in this context 
means an ISA slot, if your mobo has one). With the details depending on 
your mobo and BIOS, there should *some* way to select IRQ 7 for the slot 
you have yoyur PCI card in.

4. If lpq shows the jobs as done, then lpd has managed to print them 
somewhere  (from its perspective, anyway). So if you check 
/proc/interrupts, you should find some IRQ associated with the lp0 device, 
and in /proc/ioports some I/O base.

5. I prefer "/sbin/lspci" to "more /proc/pci", but that's just style, not 
substance. In either case, not finding an entry there does suggest the 
system is not detecting the card. This is almost surely a BIOS issue (or 
failure of the card itself), not a Linux issue.

6. If you just "insmod parport_pc", without forcing an IRQ and I/O base, 
what happens?

7. You said in an earlier message that all of this worked with Slackware. 
Were you referring to a Slackware install on this hardware, or to using 
this parport card in a different host that ran Slackware? (It's relevant to 
all this speculation I'm doing about BIOS problems.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
