From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: ethernet nic install
Date: Thu, 5 Aug 2004 16:37:24 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200408051637.24198.pa3gcu@zeelandnet.nl>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> pa3gcu wrote:
> > Another indication that your BIOS is setup for PnP and NOT PCI or shared.
> >
> >>I shall have another go at the BIOS (It is the strangest I have ever
> >>seen) and maybe come back to you.
> >
> >
> > Yes, they are somewhat differnet to todays BIOS's.
>
> Perhaps you could help me with the settings:
> PCI Slot Number: I think even I can manage that one.
> Function Number of Device: Dunno (1-7)

Without knowing what type of bios you have i cant really say, however is there 
not some sort of help in the bios, where it says, 1 = pci 2 = legacy etc 
etc.?

> Device Function: Presumably I choose Enabled (Enabled/Disabled)

I would imagen so yes.

>
> IRQ Level for INTA Pin and ditto for INTB, INTC, INTD has me thrown.

Just leave those alone, choose default.

Old BIOS's can be a pian in the butt, but all you need to do is set the IRQ 
which you ISA nic uses too ISA and leave the PCI to PnP.

Another way to get more information on a BIOS is go to the manufactures web 
site, they may well have a FAQ sheet for you to review.

Sorry i'm vauge but as i said without knowing the bios manufacture it would be 
hard for anyone to advise.


>
> TIA,
>
> Andrew
-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
