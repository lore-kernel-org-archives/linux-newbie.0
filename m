From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: problem mounting cdrom
Date: Sun, 18 Aug 2002 13:24:44 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <35e5a4362792.36279235e5a4@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

hi,
thanks for the quick response.
i think, i had done what u recommended in ur "guess", but i would check it again.
another thing i just noticed is that, modeprobe does report something missing while booting...
dunno if it says the same thing u r ....
i use RHL 7.3 .
and yeah,  hdc is the right /dev device for the cdrom ( or atleast i think it is, coz i was able to mount it under the original kernel).
also in my original kernel, i get an error "/usr/bin/python has crashed (segmentation fault)", when i close my X-windows system(?) ... i use Gnome windows manager here...
any idea y that wud be happenning?

thanks
anshu

----- Original Message -----
From: Ray Olszewski <ray@comarre.com>
Date: Sunday, August 18, 2002 12:41 pm
Subject: Re: problem mounting cdrom

> At 12:22 PM 8/18/02 -0400, Anshuman Singh Rawat wrote:
> >hi,
> >recently, installed the kernel sources (v2.4.18) and compiled 
> them to 
> >create my own kernel.
> >Everything seems to be fine except that i can no longer mount my 
> cdrom. 
> >The mount command returns an error "hdc driver not found.". i had 
> enabled 
> >'Loadable kernel module support' during configuration.
> >I thought this mite have soemthing to do with the problem, so i 
> tried with 
> >that option disabled, but the error didn't change.
> >what am i doing wrong?
> 
> Your description is a bit too sketchy for me to be sure ... but I 
> would 
> *guess* from what you wrote that you did not compile ide-cd either 
> into the 
> kernel or as a module. Or possibly you are missing support for the 
> iso9660 
> filesystem.
> 
> To fix the first, in kernel configuration, go to "IDE, ATA and 
> ATAPI Block 
> devices" and select "Include IDE/ATAPI CDROM support".
> 
> To fix the second, go to "File Systems" and select "ISO 9660 CDROM 
> file 
> system support".
> 
> (The directions above are for the "make menuconfig" method; if you 
> use one 
> of the others, adapt as needed.)
> 
> If you did compile these choices as modules, then for some reason 
> your 
> system is not loading them. Module loading methods vary a bit from 
> distro 
> to distro, so I can't help you here, since you don't say what 
> distro you 
> are using. If you think they are present but not loading, test 
> this (as 
> root) by modprobe'ing the relevant module names. (I don't know 
> what they 
> are, since I compile these options directly into my kernels, but 
> if you 
> look around in /lib/modules/2.4.18/kernel/drivers, you should find 
> them 
> without too much trouble.)
> 
> There are some hidden assumptions in my suggestions, such as that 
> hdc is 
> the right /dev device for your CD and that it is standard ATAPI. 
> The need 
> to make such assumptions follows from the sketchy nature of your 
> description.
> 
> --
> -------------------------------------------"Never tell me the 
> odds!"--------
> Ray Olszewski                                	-- Han Solo
> Palo Alto, California, USA                          ray@comarre.com
> -------------------------------------------------------------------
> ------------
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
