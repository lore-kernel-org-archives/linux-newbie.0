From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: grub doesn't load
Date: Sat, 19 Jun 2004 17:43:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <851bbd852696.852696851bbd@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for the replies.

I rescued it using the disk. On undoing what I had done (which screwed up grub), Grub still didn't recover (I am sure that I undid correctly, as I had only changed one parameter in grub.conf - 'default'). So I reinstalled grub from the disk.
But the problem still remains of changing the boot order.

Anyone?

Thanks,
Anshuman

----- Original Message -----
From: pa3gcu <pa3gcu@zeelandnet.nl>
Date: Saturday, June 19, 2004 3:56 am
Subject: Re: grub doesn't load

> On Saturday 19 June 2004 02:33, Anshuman Singh Rawat wrote:
> > Hi,
> > I have a dual boot system with grub as the loader.
> > I wanted to change the default from WinXP to linux.
> > So I changed the 'default' from 1 to 0 in grub.conf.
> > 1 = Win (the second entry in grub.conf. linux was the first).
> >
> > Now the big problem is grub doesn't load any of the 2 OSes. Infact,
> > it doesn;t even reach that startup screen. It just freezes!!
> >
> > Any clue how to fix this without a rescue disk (this PC doesn't 
> have a
> > floppy drive) ?
> 
> One must presume you installed via a cdrom then as you have no floppy,
> so use your install cdrom as a rescue medium.
> Most distro's have a rescue option.
> You made no mention of which distro so i cant say.
> 
> > A quick help will really be appreciated!
> 
> To get proper help one needs to know _details_ of course you 
> forgot the 
> details so the reply's may well be quick but if they are helpful 
> is another 
> matter.
> 
> > Thanks.
> > Anshuman
> 
> -- 
> If the Linux community is a bunch of thieves because they
> try to imitate windows programs, then the Windows community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-
> newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
