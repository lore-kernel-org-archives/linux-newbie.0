From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: Re[2]: mouse setup
Date: Wed, 3 Jul 2002 15:43:10 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020703154310.A533@lnx2.w8mch.ampr.org>
References: <50420696.20020703074009@sby.centrin.net.id> <200207031547.44350.pa3gcu@zeelandnet.nl> <155376841.20020704002151@sby.centrin.net.id> <200207031902.44210.pa3gcu@zeelandnet.nl>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200207031902.44210.pa3gcu@zeelandnet.nl>; from pa3gcu@zeelandnet.nl on Wed, Jul 03, 2002 at 07:02:44PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

FWIW - is the ps2 port broke because of the wrong connector, or is
the 6pin mini DIN on the moboard? I've noticed three types, so far,
of connectors used: 5 in line, 6 in line and 2x5, plugging into the
boards header..
The 5 in line plugged into the 6 in line header definately will not
work even with the proper pin #2 blank fill.. I just went thru that
reconfiging the clips after finding the pin outs on the Web.. For
some reason V+, data, clock and earth are not standard.. I found V+
and earth easily and took a 50% chance on data and clock.. I was
wrong the first time - OK the second..

Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
    haltec@iceweb.net | w8mch@iceweb.net.. A M$ free environment     

> On Wednesday 03 July 2002 17:21, adwin wrote:
> > Hello Richard,
> 
> Hello.
> 
> >
> > yes ... if I use my ps2 port..it will work..but unfortunatly .. my ps2
> > port is broken...so I cannot use any ps2 mouse anyomore...:(
> > so the choice is .. use my usb port. :)
> 
> What leads you to belive its broken, to be honest i have never seen or come 
> across a M/Board that had a broken ps/2 port, i would point fingers at a 
> disconneted plug or broken wird somewhere in its connector because to be 
> honest all a ps/2 port is is a resurved channel to IRQ12.
> Or have you setup your BIOS to allow other things/devices to use IRQ12.??
> 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
