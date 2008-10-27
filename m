From: "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH 00/12] x86: Cleanup idt, gdt/ldt/tss structs
Date: Mon, 27 Oct 2008 07:34:49 -0700
Message-ID: <4905D189.9080306@zytor.com>
References: <1224904532-9586-1-git-send-email-ice799@gmail.com> <20081027105559.GA13895@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20081027105559.GA13895@elte.hu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ingo Molnar <mingo@elte.hu>
Cc: Joe Damato <ice799@gmail.com>, linux-x86_64@vger.kernel.org, linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Jeremy Fitzhardinge <jeremy@goop.org>, Vegard Nossum <vegard.nossum@gmail.com>

Ingo Molnar wrote:
> 
> Small detail, the syntactic form you chose:
> 
> +       if (!cpu->arch.idt[num].p)
> 
> is not very readable because it's not obvious at first sight that ".p" 
> intends to mean "present bit". If then idt[num].present would have 
> been the better choice - but it's even better to not do bitfields at 
> all but an idt_present(desc *) helper inline function.
> 

There is, however, some benefit to use the field names that are in the 
official documentation, which include P.

	-hpa
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
