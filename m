From: Javier Domingo <javierdo1@gmail.com>
Subject: Re: Question on Memory management unit
Date: Mon, 10 Dec 2012 16:01:59 +0100
Message-ID: <CALZVapn=9j7=53Zktg_udaCPaKbmxVNJWGRjdt--pEJjS8bKzg@mail.gmail.com>
References: <CALyraeP41AEZFD=cHZT_PYgUZ+nrvDfTMQ1t9qtuFJ-cOEssiQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=nJ+RfFyOFrwIrtu2c01TmRLEOqYS8lASxqLK998BBJQ=;
        b=gufDhn1t1q60Vcf5ad4aBQYEbLLGt/blg95bZWIklYNjScdqlirsnJBQmW0/ELl1eZ
         QBjAemgZCvKUFk45z+8RBnZFeeJNBcODVaU6QyCCjqk46cSiCHTmUgjqOP6ZwGwtIiQP
         Yp1BcOKmm9KgS/wm9PiuKTwtZuHpglb2x/k0/G0LfVsJZ6HImtPr/Kj5iUt+6f7R4Nfx
         umLy1ak+3XRTTZN7oeEJoTt4QaTEcUFcX2+1uls+pXQJflWFQwdAad+r17t9PJZS0Ni0
         oK3g6eADlDf3tXadUCodMF51XXeU2+SFlE4ghUqhczati434PqROihrAdBXRbwX5/0NA
         FIuw==
In-Reply-To: <CALyraeP41AEZFD=cHZT_PYgUZ+nrvDfTMQ1t9qtuFJ-cOEssiQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Cc: linux-newbie@vger.kernel.org, linux-kernel-mail <linux-kernel@vger.kernel.org>

I will just refer you to this link:

http://stackoverflow.com/questions/116343/what-is-the-difference-between-vmalloc-and-kmalloc

Is as much as I know about that. You will find links that refer to
other places, where they discuss/explain that.

Javier Domingo


2012/12/9 Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>:
> Hi Guys,
>
> I have question on memory management in linux kernel.
>
> From my understanding memory is divided into 3GB and 1GB for 32-bit
> architectures. 1GB is allocated to kernel space and 3GB is allocated
> to user space.
>
> To access any memory in kernel space, it should be mapped in to kernel
> virtual address space.
>
> My question is how do we know kernel address space (virtual address).
> Can we recognize a range of addresses, if so what is that range of
> kernel virtual address?
>
> What function returns kernel virtual address. Or do we need to map to
> get kernel virtual address.
>
> I know kmalloc returns logical address and vmalloc returns virtual address.
> And all these addresses should go through MMU to access physical
> memory. So there will be page mappings in kernel for these addresses.
> Is this true?
>
> Thanks in advance.
> --
> Regards,
> Sri.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
