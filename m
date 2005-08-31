From: Rajat Jain <rajat.noida.india@gmail.com>
Subject: Re: How to change PCI Configuration space?
Date: Wed, 31 Aug 2005 10:05:39 +0900
Message-ID: <b115cb5f0508301805528e4bf0@mail.gmail.com>
References: <b115cb5f0508292147de16584@mail.gmail.com>
	 <431487C2.6050107@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <431487C2.6050107@gelm.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck@gelm.net
Cc: linux-newbie@vger.kernel.org

On 8/31/05, chuck gelm <chuck@gelm.net> wrote:
> Rajat Jain wrote:
> > Hi List,
> >
> > I want to change the PCI Configuration space of a particular device in
> > my system. I am trying to use the "pcitweak" utility to do so, but am
> > not suceeding. I would appreciate if some body could provide me any
> > pointers in how to do so.
> >
> > In this case, I want to change the value at offset 64:
> >
> > $ pcitweak -r 5:9:1 64
> > 0x01000001                 //original value
> >
> > $ pcitweak -w 5:9:1 64 0x02000002      //new value
> >
> > $ pcitweak -r 5:9:1 64
> > 0x01000001                //no change?
> >
> > TIA,
> >
> > Rajat Jain
> 
> Dear Rajat Jain:
> 
>  'man pcitweak' indicates that it requires root privileges.
> the '$' prompt in your console indicates 'user' privileges.
> My 'root' prompt is a '#'.
> I suggest that you do not have 'root' privileges when
> executing  a '-w' (write) command.
> 
> HTH, Chuck
> 
> "Pcitweak  is  a  utility  that  can  be used to examine or
>  change registers in the PCI configuration space.  On  most
>  platfoms pcitweak can only be run by the root user."
> 


Un ... I'm sorry ... I put that "$" prompt manually here in this mail.
I AM the root and working on the "#" prompt. I would appreciate if
somebody can tell me any other commands than "pcitweak" and "setpci"
to change PCI configuration space.

Thanks & Regards,

Rajat Jain
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
