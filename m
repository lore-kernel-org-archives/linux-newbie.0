From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: TLB Question
Date: Wed, 6 Feb 2008 22:24:32 +0800
Message-ID: <804dabb00802060624v7feb36e1xb45e4ba5db5d547d@mail.gmail.com>
References: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
	 <d94614c90802042308r6c918cf1id2e815ad2105c807@mail.gmail.com>
	 <f284c33d0802050345n2d9e764cs339da8b1362dbafb@mail.gmail.com>
	 <d94614c90802050429j4e97c833q704a352d8a1ece1f@mail.gmail.com>
	 <7d9e0bf80802050832j643d4934j90df4651a4bdeb90@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=wZJ6VWrt/6eWIQ9sXDeYPS9boGjc2seXCRcMsl3+9XY=;
        b=NQ5jmYu6VJ4EC+rZ0BWkGOPwWCdBvNol2Pb9xsJhbq/ZU/Kut/OfXqcXz3SHz8NLFWCc689NiWNRdURnSTRZqIqY7QwDEIF21g8DeFVxjKs4T9sS5DmLBHY7OOFxNw+do3XKYOgaA6G0EySOHPm7S2+9ezc3ad7CQU4VffxZpbM=
In-Reply-To: <7d9e0bf80802050832j643d4934j90df4651a4bdeb90@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: mahaveer darade <mah.darade@gmail.com>
Cc: sahlot arvind <asahlot@gmail.com>, Mulyadi Santosa <mulyadi.santosa@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

I found one header file for x86 that implement the TLB flushing -
include/asm-x86/tlbflush.h (the different implementation are used are
used because of the diff generation of x86:

static inline void __native_flush_tlb(void)
{
	write_cr3(read_cr3());
}

(my questions:   WHAT IS THE DIFF BETWEEN FLUSH VIA flush_tlb() above
vs flush_tlb_global() below?)

static inline void __native_flush_tlb_global(void)
{
	unsigned long cr4 = read_cr4();

	/* clear PGE */
	write_cr4(cr4 & ~X86_CR4_PGE);
	/* write old PGE again and flush TLBs */
	write_cr4(cr4);
}

(question:   what is this single - does it flush only ONE SINGLE ENTRY
IN THE TLB that map this particular addr value?)

static inline void __native_flush_tlb_single(unsigned long addr)
{
	__asm__ __volatile__("invlpg (%0)" ::"r" (addr) : "memory");
}
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
