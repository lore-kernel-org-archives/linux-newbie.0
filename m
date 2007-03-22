From: "Prasad Joshi" <prasadjoshi124@gmail.com>
Subject: Re: need for 3G/1G split
Date: Thu, 22 Mar 2007 11:11:38 +0530
Message-ID: <fe291c8c0703212241o7d6909aj3acca12da7294260@mail.gmail.com>
References: <7783925d0703202115j11dbf254nc916252e4cd98e8a@mail.gmail.com>
	 <1174473501.9500.12.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ef20OwqdXoAWlpYU5E4yl0lghyaB6bruQQcQNHoRtCp1//zOY+npoixHvrf2A9ci8u1mofSEytD6j8lI/DMeDH4b1XNwZ8TXHWUJMFW7bquJPE9o10boMF0Mq5LO95gMN2Usq4AtFamzORiGsRCoTBS9GBZApchvxVUdfEy+Hr8=
In-Reply-To: <1174473501.9500.12.camel@localhost>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: vivekutal@gmail.com
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

 3/21/07, Vivek <vivekutal@gmail.com> wrote:
> > Why is kernel restricted to use virtual addresses of only 1 GB? Or
> > what is the need to split up the virtual address space into user
> > addresses and kernel addresses?
>
> We can have 4GB for kernel and 4GB for userspace but this has a overhead
> of flushing of tlb for every syscall.
> You can also make the split 2/2GB but this has a problem of having less
> user address space.
> 3/1 is a better choice.

Does TLB size change 4, 3, or 2 GB virtual addresses are used? I
though it would be same irrespective of whether virtual addresses are
4 or 1 GB.
If the TLB size is at all same for any number of virtual addresses
then what difference it make while flushing the TLB?

>
> --
> Vivek Kutal
>
>
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
