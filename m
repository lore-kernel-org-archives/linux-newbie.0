From: ichi@ihug.co.nz
Subject: Re: self-made potato driver-1.bin
Date: Mon, 26 Aug 2002 10:12:11 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D69FEFB.7BFB85FB@ihug.co.nz>
References: <1030305001.695.18.camel@highflyer> <3D69E4CB.3E26269E@ihug.co.nz> <02082521025301.02211@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

pa3gcu wrote:
> 
> On Monday 26 August 2002 08:20, ichi@ihug.co.nz wrote:
> > -----------
> > insmod 8390
> > insmod wd
> > -----------
>
> And because you said mpdporbe 8390 i suspect its an 
> 8 bits card as well.

Yup, she's 8 bits.  However, even if I ran depmod on my 
system (which I don't), I would never say "modprobe 8390".
All that would be necessary is:
-----------
modprobe wd
-----------

Cheers,
Steven

_________________________________________________
Modprobe is for wimps.  Real penguins use insmod.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
