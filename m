From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: very newbie
Date: Tue, 17 Sep 2002 15:23:49 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0209171523490B.03392@unix.pa3gcu>
References: <0E253E40DC78F4499CEDDE9223099F43039CB6D6@xcgva040.northgrum.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0E253E40DC78F4499CEDDE9223099F43039CB6D6@xcgva040.northgrum.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Yelland, Michael" <MYelland@northropgrumman.com>, "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

On Monday 16 September 2002 21:53, Yelland, Michael wrote:
> I installed RHS 7.1 but ifconfig has no idea where my 3Com eth III
> is...what to do ?  I'm learning unix quickly :)


Is this card an ISA ethernet card as desribed in the Configure.help file in 
the kernel source.?
3c509/3c529 (MCA)/3c579 "EtherLink III"  support
???

If so do you know the addresses of the card. IRQ and I/O ??
Most problems with ISA cards happen not to be linux not finding the card but 
because one did not resurve an IRQ for it in the motherboards BIOS.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
