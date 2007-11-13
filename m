From: "Rajeh kuri" <rajeshkuri@gmail.com>
Subject: Re: kernel module
Date: Tue, 13 Nov 2007 17:53:11 +0530
Message-ID: <c26b6f110711130423s753b915wc2c001087a42d1fd@mail.gmail.com>
References: <c26b6f110711120559l2c9f9be3wb729a3a770b13ffd@mail.gmail.com>
	 <20071113094052.GB10096@berith>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=qcN53/kkY0n5vHApEeDNCFwMJb5wkVc/GwxAbhsLifg=;
        b=sFOEDRI73EDdA2Mm6isEbmeojpsI1i+OjWt7ZmmI6prAdPV9AfL58fH0k0cWFdMwo2Ze+q+J9m92Gkve9R/Hd4poVJvB1/8fXmBkn4aWL5Qrx5Yi1kckBo+PfEGewg9LCMhFGrinmA5BaTHc966CbzlDcOnydGuM3AIm6KS+Mn8=
In-Reply-To: <20071113094052.GB10096@berith>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kristof Provost <Kristof@provost-engineering.be>
Cc: linux-newbie@vger.kernel.org

Well it means there is no way to achieve compiled kernel calling
compiled kernel module. OR The direction of communication from kernel
to kernel module can not be possible?

I believe there must be a way around to get this work.
If i find it will update here.

--Regards,
rajesh
On Nov 13, 2007 3:10 PM, Kristof Provost <Kristof@provost-engineering.be> wrote:
> Hi,
>
> On 2007-11-12 19:29:17 (+0530), Rajeh kuri <rajeshkuri@gmail.com> wrote:
> > Hi,
> >
> > Is there any ways to invoke/call the function (kernel module
> > functions) from compiled base kernel. Well that statement sounds
> > strange.
> >
> > I will try to simplify that statement, with problem I faced.
> > I have written a kernel module but it is of no use till I call one of
> > its function from kernel, and hence i modified the kernel source to
> > call this function and then compiled the kernel. Now the problem is
> > obliviously 'linker cannot resolve the symbol. Because I'm trying to
> > call the function which is available only after I insert the kernel
> > module.
> The problem is that you're calling code compiled as a module from code
> compiled into the kernel. That means you either compile both parts as a
> module, or compile both of them into the kernel.
> Kbuild/Kconfig has supports this type of dependency because it's quite
> common.
>
> Kristof
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
