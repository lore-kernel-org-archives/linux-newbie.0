From: G Anna <drguruolai@eth.net>
Subject: Re: char-major-6
Date: 20 Apr 2002 18:26:26 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m34ri6wmth.fsf@wobble.eth.net>
References: <m3662o5ol0.fsf@wobble.eth.net> <0204191440500C.04062@unix.pa3gcu>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0204191440500C.04062@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org


> Date: Fri, 19 Apr 2002 14:40:50 +0000
> From: Richard Adams <pa3gcu@zeelandnet.nl>
> Subj: Re: char-major-6

[snip]

> I've only seen one reply to this mail, i will try and explain whats
> happening and possably shed some light on the other discussion about
> devices not being found.

That supposedly mean that I should have got one more mail on this.
But I haven't.  Yours was the only mail I got and it had all the help
I needed.  Thanks.

> The above message is saying that the program modprobe cannot find a
> module called "lp" which is char-major-6 (to answer your question),
> now either you configured your kernel without lp support or the
> needed modules were not installed beforehand, those are; parport and
> parport_pc if those are loaded (can be seen with the command
> 'lsmod') then you did not configure your kernel with lp module
> support.

I set the CONFIG_PARPORT, CONFIG_PARPORT_PC, CONFIG_PARPORT_PC_CML1
and CONFIG_PRINTER to 'm' and recompiled the kernel.  Now everything
is working fine.  ;-)

Thank you very much for the help.

> Or it could be that IRQ 7 is in use by some other device, check that
> with the command 'cat /proc/interrupts'.

Thankfully, my problem wasn't that difficult!

(much snipped away)

Cheers,
anna

-- 

Get your free e-mail account at http://www.linuxmail.org

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
