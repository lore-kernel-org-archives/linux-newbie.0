From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: Howto set kernel makefile to use particular gcc
Date: Fri, 30 Dec 2005 11:57:26 +0530
Message-ID: <3AEC1E10243A314391FE9C01CD65429B2239A9@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: jimmy <jimmyb@huawei.com>
Cc: linux-newbie@vger.kernel.org

Jimmy,

I will try what you suggested.
I guess Linux provides a export variable which we can set to use a particular gcc while building the kernel.


Regards,
Mukund Jampala



> -----Original Message-----
> From: jimmy [mailto:jimmyb@huawei.com]
> Sent: Friday, December 30, 2005 11:50 AM
> To: Mukund JB.
> Subject: Re: Howto set kernel makefile to use particular gcc
> 
> 
> Mukund JB. wrote:
> > Dear Kernel mailers,
> > 
> > I have specific requirement of building kernel 2.6.11.12 
> with gcc- 3.3 over the FC4 dist. 
> > I have downloaded the gcc-3.3.
> > As FC4 comes with a default gcc-4.0, how do I set the 
> kernel Makefile to use the gcc-3.3 instead of gcc-4.0.
> > 
> > How do I achieve it? I know it is a very small issue and 
> searched google and I am unable to find it.
> > Please help.
> you can lookup man gcc to find how to use different versions 
> of gcc thru 
> the driver program.
> 
> i think it's gcc -v 3.3
> 
> Then try
> 
> $make CC="gcc -v 3.3"
> 
> for building the kernel. I'm not sure bout this part, but looks to be 
> the logical thing to do :-)
> 
> 
> -jb
> 
> > 
> > Regards,
> > Mukund Jampala
> > 
> > 
> > -
> > To unsubscribe from this list: send the line "unsubscribe 
> linux-kernel" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at  http://www.tux.org/lkml/
> > 
> 
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
