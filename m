From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: need for 3G/1G split
Date: Thu, 22 Mar 2007 12:05:34 +0530
Message-ID: <b115cb5f0703212335k579ce76et4c4f87d10131885f@mail.gmail.com>
References: <7783925d0703202115j11dbf254nc916252e4cd98e8a@mail.gmail.com>
	 <1174473501.9500.12.camel@localhost>
	 <fe291c8c0703212241o7d6909aj3acca12da7294260@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=aEdqC4aRVKfxvV48xPA46mZsXDcv6osK1Bi0LX1zK/xXxwqMoCa+zrHWv67kLV6v4xXBzZbgicPnfL03CPjils6Wp/8HkIupnZAKR1KbUn/cNdHOfstfjW9o9MDJAMqL0utLqh7JGvafcr9s/+W171EsbHn+t3W+Zk+66Xozb4c=
In-Reply-To: <fe291c8c0703212241o7d6909aj3acca12da7294260@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Prasad Joshi <prasadjoshi124@gmail.com>
Cc: vivekutal@gmail.com, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On 3/22/07, Prasad Joshi <prasadjoshi124@gmail.com> wrote:
>  3/21/07, Vivek <vivekutal@gmail.com> wrote:
> > > Why is kernel restricted to use virtual addresses of only 1 GB? Or
> > > what is the need to split up the virtual address space into user
> > > addresses and kernel addresses?
> >
> > We can have 4GB for kernel and 4GB for userspace but this has a overhead
> > of flushing of tlb for every syscall.
> > You can also make the split 2/2GB but this has a problem of having less
> > user address space.
> > 3/1 is a better choice.
>
> Does TLB size change 4, 3, or 2 GB virtual addresses are used? I
> though it would be same irrespective of whether virtual addresses are
> 4 or 1 GB.
> If the TLB size is at all same for any number of virtual addresses
> then what difference it make while flushing the TLB?
>

The difference is that the TLB needs not be flushed for the kernel
virtual addresses because it remains the same for each processes. The
bigger the kernel virtual address space the better it is (but lesser
virtual memory for user space).
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
