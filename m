From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: LI -lilo booting problem
Date: Sat, 27 Jul 2002 08:08:55 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02072708085502.00307@unix.pa3gcu>
References: <3D36DDA3.FA0F073C@gmx.net> <02072606105100.00370@unix.pa3gcu> <3D41BCFB.390F2750@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D41BCFB.390F2750@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

On Friday 26 July 2002 21:19, Chuck Gelm wrote:
> Hi, Ray, Richard, & Ramzez:
>
>  I use
> /usr/src/linux/# make install
>  and
> # lilo
>  (/sbin/lilo ?) to try to install a bootable system.

I pointed you to my home-page in my last mail, i will suggest it once more, i 
can assure you it will help you.

>
> Thanks.  I found the mention of adding lba32
> to lilo.conf, although README.common.problems
> does NOT show the syntax of the line.  :-|

lba32 is, i belive "not" your problem, /dev/hda1 starts and ends within the  
larger as1023 limit. (If applicable in your lilo version that is)
As i mentioned, the cyl limit is not a problem anymore in presant day lilo 
versions.

>
>  However, I'll plug 'lba32' & 'lilo' into google
> or whatever and see if I can find an example.
>
>  I can install Slackware8.0, compile a new kernel,
> and boot from floppies, either lilo or bzdisk,
> yet I cannot boot from either of two hard drives.

Ray pointed out that you have boot = /dev/hda1 in /etc/lilo.conf
have you tryed changing it to boot = /dev/hda
??

I always advise against the use of 'make install' when installing a new 
kernel because one has problems like you are encountering.

I will update the kernel.htm in my home page and explain more about the 
use/missuse of make options and what they do/can do, help/ or hinder.


>
> :-|
>
> Here is the partition structure of the last two
> HDs that I've tried to boot.
>
> Device	Boot	Start	End	Blocks	Id	System
> /dev/hda1 *	1	240    1927768	83	Linux system
> /dev/hda2	241	256	128520	82	Linux swap
> /dev/hda3	257	2491 179526378	83	Linux system
>
> I tried this one in Primary master also:
>
> Device	Boot	Start	End	Blocks	Id	System
> /dev/hda1 *	1	128    1028128	83	Linux system
> /dev/hda2	129	131	 24097	82	Linux swap
> /dev/hda3	132    1048    7365802	83	Linux system
>
> In all cases(2) system was:
>
> (1)	/dev/hda1 mounted as /
> 	/dev/hda3 mounted as /usr
>
> (2)	/dev/hda1 mounted as /
> 	/dev/hda3 mounted as /share
>
>  So, / (/boot) was always within the first 1024 cylinders.
>
> :-|
>
> I'm off to find "lba32".
>
> Thanks again, Chuck
>
> pa3gcu wrote:
> > On Thursday 25 July 2002 21:20, Chuck Gelm wrote:
> > > Howdy, Y'all:
> > >
> > >  Where can I find help with 'lilo'.
> >
> > /usr/doc/lilo-21.7.5 (slackware-8.0)
> >
> > > When I try to boot from hard disk, I get:
> > >
> > > LI
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
