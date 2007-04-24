From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: PCI config space doubt
Date: Tue, 24 Apr 2007 16:08:37 +0530
Message-ID: <b115cb5f0704240338p2cf5b5e0jd21ac86e30e0890@mail.gmail.com>
References: <b115cb5f0704232333u13a27802ycf025724be8f59a3@mail.gmail.com>
	 <20070424094151.GB20230@gateway.home>
	 <b115cb5f0704240250y6360d82ev6dfff657dad7188d@mail.gmail.com>
	 <20070424102733.GD20230@gateway.home>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=LKUJCOZcI+QiwYThb15fLkcv4IXW9syBzrPBqJ4kA/QKHYZinb2WdqgxHTwuY6km5BndK2REJ3KPnUcaVuR0+q6I2+nchCNF6iHCHqfsWk20950DoSL02FM/HkOZpzOU8QD+kLCGIqyxuM4JNvAau6WjTl4+sqgWyfvTKgQo7f4=
In-Reply-To: <20070424102733.GD20230@gateway.home>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Erik Mouw <mouw@nl.linux.org>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On 4/24/07, Erik Mouw <mouw@nl.linux.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On Tue, Apr 24, 2007 at 03:20:01PM +0530, Rajat Jain wrote:
> > >On Tue, Apr 24, 2007 at 12:03:32PM +0530, Rajat Jain wrote:
> > >> Does Linux assign the resources to PCI devices? Or is it done by PCI
> > >> firmware?
> > >
> > >Yes.
> >
> > I'm sorry but I could not understand your "Yes" very well ... so Which
> > one of the following assigns the resources to PCI devices?
>
> Sorry, forgot to remove the remaining question.
>
> > - Linux Kernel?
>
> Kernel.
>
> > - PCI firmware?
>
> Modern BIOSes usually only initialise the devices needed for boot:
> disk and video card. With older BIOSes you can control that by the
> "PnP OS" option, even older BIOSes initialise every device.
>

Thank You,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
