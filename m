From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: self-made potato driver-1.bin
Date: Mon, 26 Aug 2002 13:39:42 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02082613394207.02211@unix.pa3gcu>
References: <1030305001.695.18.camel@highflyer> <02082520464300.02211@unix.pa3gcu> <1030362679.930.22.camel@highflyer>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1030362679.930.22.camel@highflyer>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Michael Gruner <stockraser@yahoo.de>, pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

On Monday 26 August 2002 12:09, Michael Gruner wrote:

> first i used the debian installer which loads the modules for the NICs,
> CDRoms... and gave the option io=0x300
> second i switched to the second console and did a "modprobe smc-ultra"
> third i switched to the second console and did a modprobe 8390 and a
> modprobe smc-ultra
> everytimes from a fresh booted potato install...you know the results.
>
> > Now i have a lot of experiance with smc nics, some "early ultra's" have
> > buggy firmware and will give you problems as you seem to be having, those
> > early type's (some) work with the module  "wd" (in most cases).
>
> will give that a try. The thing i don't understand is: trying to install
> SuSE and fli4l with that card always works fine by loading their
> smc-ultra-module...
>
> > Some cards may look like a smc-ultra but have a 8013 chip, the old wd had
> > 8003's or was called 8003 cant remember, but AFAIK they were 8 bit cards.
>
> on the chip there is "smc-ultra-chip" printed.

Ok then forget the "wd" stuff, you have a later model of the smc-ultra.

>
> > Now if the card is a true smc-ultra then you have 2 jumpers on the card.
> > With the card placed with component side up and the coax and RJ45
> > connectors on the righthand side there are jumpers at top left.
> > The first set of jumpers from left to right is numberd W1.
> > J1 = soft configurated (under linux not in use)
> > J2 = I/O=280 IRQ=3
> > J3 = I/O=300 IRQ=10
>
> I did set the that jumper to J3. the card I have here has the jumper for
> the ROM integrated to J1-J5, so you have J1 soft configurated, J2 for
> 280/3 without ROM J3 for 300/10 without ROM J4 280/3 with ROM and J5
> 300/10 with ROM.

I just took another look at a card here, its an old one and does not have the 
smc chip, so i may be wrong about the jumper settings.
However i have two working examples here, and i see that one has W2set to 
none/soft and the other has W2 set to D8000.

Anyway, the memory address should not cause problems that is AFAIK.

>
> > I have encounterd many problems with these cards, here are some hints, as
> > far as i can remember, its been a long time since i used them.
> >
> > Dont use IRQ 3 as it is normally used by serial ports.
> > Use the jumper settings above to avoid memory and I/O address problems.
> > Make sure your BIOS is set for ISA/PnP on IRQ 10 otherwise some systems
> > will quite possably assign irq10 to some PCI adaptor during the init
> > process and will produce the error message you mentioned above,
> > "  device or resource busy "
>
> a cat /proc/interrupts told me IRQ 3 and 10 are both unused and cat
> /proc/ioports told me that 0x300 must be free as well.

Yes but is your BIOS set to ISA/PnP if it is not then that may well cause you 
problems. Remember smc-ultra = 16 bits and therefor ISA.

insmod 8390
insmod smc-ultra io=0x300

Should work.

I have a true smc-ultra in a router at work and all that is used to init the 
card is;

modprobe smc-ultra 
(but depmod has been run so kmod should know about the 8390 dependancy).

All i can now offer is really what you have tryed, (as far as i can tell).
But please check your BIOS..
You could even try and see what options the debian potato uses to init the 
card.
If it works under deb, then it WILL work on any distro, that is a fact.

>
> > http://people.zeelandnet.nl/pa3gcu/
>
> off-topic: is that Newzeeland near australia?

O no, much closer to you that you think, note the ".nl"
Zeeland is a Province in The Netherlands.
zeelandnet.nl is our local provider, or at least that's what they call 
themselfs.

>
> micha

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
