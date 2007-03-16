From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: How does boot loader tell the kernel, the location of initrd?
Date: Fri, 16 Mar 2007 10:42:30 +0530
Message-ID: <b115cb5f0703152212y2e7bd01chf1e7fa7bf8d2f08c@mail.gmail.com>
References: <b115cb5f0703142358j6a422262qe1ad1c6cfcfcdd22@mail.gmail.com>
	 <20070315161718.GB16545@ba.sec>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=kfnUQk9BzgxG2cu/VVcdMYuZYY4i3Wp0QpRthfQ4Tb1a6tmp4rkfm926JWn2otPJi4Z1DvTmwoLgl2CyadU0TLb1oi9ORsBcuGml5nOtOgSktW/0DXAW/Ze68ml3rXQ16oNn2xOV75LeCeCvsfuGWmaoJqMGg5TJkhiQCRSjDug=
In-Reply-To: <20070315161718.GB16545@ba.sec>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Thierry Reding <thierry@gilfi.de>, Thiemo Seufer <ths@networkno.de>
Cc: kernelnewbies@nl.linux.org, newbie <linux-newbie@vger.kernel.org>, linux-mips@linux-mips.org

> > I am experimenting with initrd and my initrd fails to mount. My
> > bootloader (U-BOOT) coorectly loads the initrd into RAM as I can see.
> >
> > I am wondering how does the kernel get to know the address at which
> > the initrd is loaded by boot loader? How does the boot loader
> > communicate this to the kernel?
> >
> > Any code references will be appreciated.
>
> Perhaps lib_mips/mips_linux.c in the U-Boot tree is what you are looking for.
> That code sets up environment parameters that are parsed by the Linux kernel
> later on (see rd_start_early() and friends in arch/mips/kernel/setup.c in the
> Linux tree).

Thanks! That is exactly what I was looking for. However, I noticed
that U-BOOT passes these parameters in environment variables, where as
Linux kernel expects them as command l ine arguments. It wasn't
working for me untill I made changes in U-BOOT to pass them in command
line arguments.

Why is this discrepancy in U-BOOT and the kernel? Are other people
working on the (linux+U-BOOT) combo making the changes that I did?

Thanks,,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
