From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Setting EXTRAVERSION (was Re: Kernel error)
Date: Tue, 28 May 2002 18:32:28 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205281832280G.01212@unix.pa3gcu>
References: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH> <20020527165031.GA2875@cam.ac.uk> <m3ptzge0qn.fsf_-_@wobble.eth.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3ptzge0qn.fsf_-_@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, G Anna <drguruolai@eth.net>

On Tuesday 28 May 2002 15:44, G Anna wrote:
> > Date: Mon, 27 May 2002 17:50:31 +0100
> > From: Steven Smith <sos22@cam.ac.uk>
> > Subj: Re: Kernel error
>
> (snip)
>
> > My suggestion would be to compile a new kernel, and set
> > EXTRAVERSION.  If the new kernel is version 2.4.5<extra>, then put
> > the System.map in /boot/System.map-2.4.5<extra>.
>
> I installed RH 7.1.  It came with 2.4.2-2 kernel.  I then upgraded the
> kernel to 2.4.16.  While compiling the new 2.4.16 kernel I didn't not
> set the EXTRAVERSION in /usr/src/linux/Makefile. Will this cause any
> problem in the future?

Not in this instance, however if you recompile a 2.4.16 kernel again it will 
be a problem as the compile will overwrite modules in /lib/modules/2.4.16 or 
leave old modules lying around which will cause error messages like 
"unresolved sysbols" of which we see so many message here. It is then 
recomended to use the EXTRAVERSTION when compiling multiple copies of the 
same kernel version.

>
> What is the significance of this EXTRAVERSION?  Can I choose any value
> for this variable?  Also, should this value always start with -, by
> convention?

Just about any symbol or letter or number, about convention, cant say i have 
seen it documented but the acceped thing is a "-" for simple reasons as 
explained below.

2.4.16-1000001
2.4.16-anna123
2.4.16-anna1st-try

If you do not use a - sign and say only a "1" then your kernel version number 
will look like,
2.4.161 or 2.4.16anna123

> Thank you all for your time.
>
> Cheers,
> anna

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
