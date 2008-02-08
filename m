From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: Use of IRQF_DISABLED along with IRQF_SHARED
Date: Fri, 8 Feb 2008 22:40:41 +0800
Message-ID: <804dabb00802080640i1921ef14k1b2c916f5717fd28@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B07A66D47@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=XpfqpwmT4MorIp2MrQx0sNSvUlq4Rd82sAgxS8XQgA8=;
        b=BSTxv+vENLojdGgVxNQkNQTbQXKQ0ZQIImeObREztyFs1oPuxctA1faLNUR5yFhgSihXoRFHSW3q5kU3vdYmj/rD9bIa7+jhosZtjRII5z02osViABXFP9RHdQeucoLBjkGPbeRExP0BEJLFOI/U6KdxeeEvvMJ/q+xhyEgUwtQ=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B07A66D47@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

sorry, i am also quite confused....

the caller of your function handle_IRQ_event() is __do_IRQ(), which is thus:

                if (likely(!(desc->status & IRQ_DISABLED))) {
                        action_ret = handle_IRQ_event(irq, desc->action);
                        if (!noirqdebug)
                                note_interrupt(irq, desc, action_ret);
                }

so what it means that only when IRQ_DISABLED is NOT SET, then
handle_IRQ_event() will be called, simulating a software-based IRQ.

and so the above function WILL ALWAYS BE CALLED WITH IRQ_DISABLED NOT
SET (assuming there is no other caller of handle_IRQ_event()).

errhhhh?? Am i right?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
