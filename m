From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: Use of IRQF_DISABLED along with IRQF_SHARED
Date: Mon, 11 Feb 2008 10:42:03 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B07A934B5@GDCMX01.igglobal.com>
References: <804dabb00802080640i1921ef14k1b2c916f5717fd28@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <804dabb00802080640i1921ef14k1b2c916f5717fd28@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

----Original Message----
From: Peter Teoh [mailto:htmldeveloper@gmail.com]
Sent: Friday, February 08, 2008 8:11 PM
To: Rajat Jain
Cc: kernelnewbies@nl.linux.org; linux-newbie@vger.kernel.org
Subject: Re: Use of IRQF_DISABLED along with IRQF_SHARED

> sorry, i am also quite confused....
> 
> the caller of your function handle_IRQ_event() is __do_IRQ(), which
> is thus: 
> 
>                 if (likely(!(desc->status & IRQ_DISABLED))) {
>                         action_ret = handle_IRQ_event(irq,
>                         desc->action); if (!noirqdebug)
>                                 note_interrupt(irq, desc, action_ret);
>                 }
> 
> so what it means that only when IRQ_DISABLED is NOT SET, then
> handle_IRQ_event() will be called, simulating a software-based IRQ.
> 
> and so the above function WILL ALWAYS BE CALLED WITH IRQ_DISABLED NOT
> SET (assuming there is no other caller of handle_IRQ_event()).
> 
> errhhhh?? Am i right?


Hi Peter,

I think you are mistaken between IRQ_DISABLED & IRQF_DISABLED. My question was about IRQF_DISABLED.

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
