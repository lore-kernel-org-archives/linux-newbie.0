From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: self-made potato driver-1.bin
Date: Sun, 25 Aug 2002 21:02:53 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02082521025301.02211@unix.pa3gcu>
References: <1030305001.695.18.camel@highflyer> <3D69E4CB.3E26269E@ihug.co.nz>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D69E4CB.3E26269E@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ichi@ihug.co.nz, Michael Gruner <stockraser@yahoo.de>
Cc: linux-newbie@vger.kernel.org

On Monday 26 August 2002 08:20, ichi@ihug.co.nz wrote:
> Michael Gruner wrote:
> > It seems not to be possible to get debian potato to work
> > with smc-ultra NICs.
>
> I don't use Debian, but I do have an ISA smc-ultra NIC.
> It works fine in BasicLinux when I do:
> -----------
> insmod 8390
> insmod wd
> -----------

Then its NOT a true smc-ultra card period.
Simply a buggy old first one off the prodution line smc-ultra's by the sound 
of it.
And because you said mpdporbe 8390 i suspect its an 8 bits card as well.

>
> Cheers,
> Steven

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
