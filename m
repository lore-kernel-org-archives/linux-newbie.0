From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: self-made potato driver-1.bin
Date: Mon, 26 Aug 2002 06:28:48 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02082606284803.02211@unix.pa3gcu>
References: <1030305001.695.18.camel@highflyer> <02082521025301.02211@unix.pa3gcu> <3D69FEFB.7BFB85FB@ihug.co.nz>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D69FEFB.7BFB85FB@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ichi@ihug.co.nz, linux-newbie@vger.kernel.org

On Monday 26 August 2002 10:12, ichi@ihug.co.nz wrote:
> pa3gcu wrote:
> > On Monday 26 August 2002 08:20, ichi@ihug.co.nz wrote:
> > > -----------
> > > insmod 8390
> > > insmod wd
> > > -----------
> >
> > And because you said mpdporbe 8390 i suspect its an
> > 8 bits card as well.

I typed modprobe but i meant to type insmod, my fault...

>
> Yup, she's 8 bits.  However, even if I ran depmod on my
> system (which I don't), I would never say "modprobe 8390".
> All that would be necessary is:
> -----------
> modprobe wd
> -----------

The above is what i said in my reply to the smc-ultra question,

However you say you dont use depmod, but i bet it was ran once tho' and you 
have a file called modules.dep in /lib/modules/kernel-version-number.

Anyway its all OT for the question on hand and your card is not a smc-ultra.
You have a WD-8003

>
> Cheers,
> Steven
>
> _________________________________________________
> Modprobe is for wimps.  Real penguins use insmod.
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
