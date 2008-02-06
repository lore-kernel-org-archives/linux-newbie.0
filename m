From: "Manish Katiyar" <mkatiyar@gmail.com>
Subject: Re: Copy-on-Write
Date: Wed, 6 Feb 2008 16:30:03 +0530
Message-ID: <ea11fea30802060300y73391357icfa2a94e3ff7971@mail.gmail.com>
References: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=E759ShbDk08Ww8WmO/3SOPteB75eBAQVxv1D6BxBUC0=;
        b=uJ6P4BtoMh7X1GLf85ghQOnS/Rrmiv5pVI0QtEQ7WQSHI7tH6MApMmli5vBVoxcwupYqLdHKaxJxqlF34SdcYOps6wSIUtN7nulCmfJ5gztAwuFBKrnss+YZzq9ReMfPtI+LeYDEnb5STrHpOoPROASJwqdJ9E+YDoprRgsgO/E=
In-Reply-To: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Feb 6, 2008 11:19 AM, Rick Brown <rick.brown.3@gmail.com> wrote:
> Hi,
>
> I had read that the operating systems that use copy-on-write mechanism
> for fork(), it is better if they deliberately allow the CHILD to run
> first.
>
> This would be better because in 99% of the cases child will call
> exec() and the new address space will be allocated. Instead if the
> parent is executes first, an unnecessary copy of the pages is made (if
> parents writes) and later on when child executes, a fresh address
> space is executed.
>
> So in linux, is a child run first or the parent? Can we rely on this
> information?

No with fork() it is not guaranteed.......however if you use vfork()
child is guaranteed to run first......

>
> TIA
>
> Rick
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>



-- 
Thanks & Regards,
********************************************
Manish Katiyar  ( http://mkatiyar.googlepages.com )
3rd Floor, Fair Winds Block
EGL Software Park
Off Intermediate Ring Road
Bangalore 560071, India
***********************************************
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
