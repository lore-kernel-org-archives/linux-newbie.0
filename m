From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: self-made potato driver-1.bin
Date: Mon, 26 Aug 2002 10:58:28 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020826105828.A205@lnx2.w8mch.ampr.org>
References: <1030305001.695.18.camel@highflyer> <02082521025301.02211@unix.pa3gcu> <3D69FEFB.7BFB85FB@ihug.co.nz> <02082606284803.02211@unix.pa3gcu>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <02082606284803.02211@unix.pa3gcu>; from pa3gcu@zeelandnet.nl on Mon, Aug 26, 2002 at 06:28:48AM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: FWIW we "wimps" <grin-to-Steven> have used SMC-Ultra ISA
cards exclusively for years and they are on every one of our
machines, Slackware 3.XX thru 8.0 and we've only had to invoke
'modprobe smc-ultra' for perfect results as long as the jumper was on
0x300, irq 10.. On some machines with PCI problems we had to use
SMC's Dos software to flash the cards eprom to another irq..

Since the new moboards have NO ISA slots we're concerned that,
possibly in the future, we wont be able to use our thin net coax
cable lashup.. Come to think of it we're still using a WD8003 in one
machine.. Hey it's 10mbs..:^)

Interesting thread.

Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
	       haltec@iceweb.net | w8mch@iceweb.net..

On Mon, Aug 26, 2002 at 06:28:48AM +0000, pa3gcu wrote:
> On Monday 26 August 2002 10:12, ichi@ihug.co.nz wrote:
> > pa3gcu wrote:
> > > On Monday 26 August 2002 08:20, ichi@ihug.co.nz wrote:
> > > > -----------
> > > > insmod 8390
> > > > insmod wd
> > > > -----------
> > >
> > > And because you said mpdporbe 8390 i suspect its an
> > > 8 bits card as well.
> 
> I typed modprobe but i meant to type insmod, my fault...
> 
> >
> > Yup, she's 8 bits.  However, even if I ran depmod on my
> > system (which I don't), I would never say "modprobe 8390".
> > All that would be necessary is:
> > -----------
> > modprobe wd
> > -----------
> 
> The above is what i said in my reply to the smc-ultra question,
> 
> However you say you dont use depmod, but i bet it was ran once tho' and you 
> have a file called modules.dep in /lib/modules/kernel-version-number.
> 
> Anyway its all OT for the question on hand and your card is not a smc-ultra.
> You have a WD-8003
> 
> >
> > Cheers,
> > Steven
> >
> > _________________________________________________
> > Modprobe is for wimps.  Real penguins use insmod.
> >
> 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> -
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
