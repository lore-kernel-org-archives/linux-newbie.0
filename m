From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Kernel error
Date: Mon, 27 May 2002 15:18:27 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02052715182704.01212@unix.pa3gcu>
References: <A1F41DE771DCD5119FE30060089343500A58C6@NET-ARCH> <m3n0um5hsy.fsf@wobble.eth.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3n0um5hsy.fsf@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 27 May 2002 04:35, G Anna wrote:
> > Date: Sun, 26 May 2002 07:57:59 -0700
> > From: Shaun Bryant <sbryant@ThePit.org>
> > Subj: RE: Kernel error
>
> (snip)
>
> > depmod: *** Unresolved symbols in
> > /lib/modules/2.4.5/kernel/arch/i386/kernel/microcode.o.gz
> > depmod: *** Unresolved symbols in
>
> (snipped depmod error listing)
>
> I am just guessing.  While compiling the kernel did you do
>
> $ make mrproper
>
> before anything else?  I had a similar problem and it was because of
> not making the above mentioned target.

I can assure you that is not his/her problem.

Unresolved symbols are caused by many things, one is using the wrong 
System.map another is trying to load module "b" before module "a" is loaded, 
why,? because module b is dependant on module a and b will barf at you if 
module a is not loaded.

>
> Of any help?
>
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
