From: Peter <heisspf@skyinet.net>
Subject: Re: Can't Print (fwd)
Date: Sun, 02 May 2004 14:59:09 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040502065909.56AB020933@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

>heisspf@skyinet.net said:
> > On a standalone PC with no modem and therefore no Internet connection 
> > and RH 9.0 installed I am unable to get the printer to work.
>
> > I have not an onboard parport but a singel parallel PCI card with chipset
> > NM9805CV.

ray@comarre.com said:
> but I **think** you also need the module parport_pc to use a parallel
> printer.

I have done that: insmod parport_pc io=0x378 irq=7

then I get in dmesg 2 warnings and the message parport 0x378: "you gave this 
address, but there is probably no parallel port there!"

After insmod parport_pc there is no more error message about 'cannot open 
'/dev/lp0' 'No such device or address'

Doing lpr file gives some rumbling on the hd and lpq shows job done yet 
nothing has been printed.

io=0x378 and irq=7 I got from the instructions on how to install the printer 
card.

In bios onboard paraport is disabled.

"more /proc/pci" should give me the io and irq addresses of the card, it does 
not. Could that mean that the card has not been detected at all by the system?

Kudzu does not indicate that it had found new hardware after the card was 
installed.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
