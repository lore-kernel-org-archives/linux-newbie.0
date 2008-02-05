From: "mahaveer darade" <mah.darade@gmail.com>
Subject: Re: TLB Question
Date: Tue, 5 Feb 2008 22:02:17 +0530
Message-ID: <7d9e0bf80802050832j643d4934j90df4651a4bdeb90@mail.gmail.com>
References: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
	 <d94614c90802042308r6c918cf1id2e815ad2105c807@mail.gmail.com>
	 <f284c33d0802050345n2d9e764cs339da8b1362dbafb@mail.gmail.com>
	 <d94614c90802050429j4e97c833q704a352d8a1ece1f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=9H9Ohc1Toe964VJC6QdJaCAG0/g+K8E23eQolEvvLTM=;
        b=KDSDQ3UZumBAissQIBlFTfYchEvWdP9Z8h46SeI+z+gVel5kgV5P31go8cHYETCouTP8vDqIPNKl+HbcLuFFtPYbE/QOS6UW6CsNin4bnHAcVSqHe2MS42Rmre+UvIZZwnQzjSgJ40b91KXl13JTLz6jhoV37aFvnzkhL7MwUbA=
In-Reply-To: <d94614c90802050429j4e97c833q704a352d8a1ece1f@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: sahlot arvind <asahlot@gmail.com>
Cc: Mulyadi Santosa <mulyadi.santosa@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

hadling tlb is architecture specific thing, so its better to search
the manuals of corresponding processor to find out appropriate
instructions to manipulate TLB entries.
AFAI can recall INVLPG is used to invalidate specific pte in TLB.

regards,
mahaveer darade

On 2/5/08, sahlot arvind <asahlot@gmail.com> wrote:
> >AFAIK, by using certain instructions...you can manually insert
> >entry/entries to TLB. Same thing to deleting TLB entries.
>
> Yes you can insert/delete entries in TLB manually. Though I am not sure but
> AFAIK, linux kernel does do this.
> Please correct if I am wrong.
>
> Regards
>
>
> On 2/5/08, Mulyadi Santosa <mulyadi.santosa@gmail.com> wrote:
> >
> > Hi...
> >
> > On 2/5/08, sahlot arvind <asahlot@gmail.com> wrote:
> >
> > > TLB entries are filled by H/W and not explicitly by kernel. Whenever MMU
> > > translates VA to PA it caches that translation into TLB. If TLB is full
> > then
> > > MMU uses its own algorithms to replace some entry in TLB e.g. MMU might
> > > consider TLB as circular buffer and replace first entry once TLB is
> > full.
> >
> > AFAIK, by using certain instructions...you can manually insert
> > entry/entries to TLB. Same thing to deleting TLB entries. This kind of
> > technique is used for example on security related software such as
> > PaX/grsecurity
> >
> > regards,
> >
> > Mulyadi.
> >
>


-- 
---------------------------
Thanks & Regards,
Mahaveer Darade
mah.darade@gmail.com
Mobile - 9970365267


--- Dream it , Code it.

---The "silly question" is the first intimation of some totally new development
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
