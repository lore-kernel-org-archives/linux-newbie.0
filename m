From: "Little, John" <JOHN.LITTLE@okdhs.org>
Subject: RE: Problems installing nVidia drivers
Date: Fri, 19 Jul 2002 08:58:29 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <92091C60D5E2B74CB77C1FDB84F5FA76E5F7@s99mail02.okdhs.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "'adam@luchjenbroers.com'" <adam@luchjenbroers.com>, linux-newbie@vger.kernel.org

due to the nVidia drivers being closed source, we can't do a lot to help
you.  nVidia needs to be contacted for assistance.

> -----Original Message-----
> From: Adam Luchjenbroers [mailto:adam@luchjenbroers.com]
> Sent: Friday, July 19, 2002 6:54 AM
> To: linux-newbie@vger.kernel.org
> Subject: Problems installing nVidia drivers
> 
> 
> When I start up X using the nVidia drivers I get a blank 
> screen and the 
> machine locks hard.
> 
> I'll start off by giving the relevant hardware and software 
> configuration 
> information.
> 
> Hardware:
> Soltek SL-75DRV5 Mainboard
> Athlon 900Mhz CPU
> Winfast GeForce DDR 256 (AGP)
> 
> Software
> Linux Mandrake 8.1
> Kernel 2.4.18 (compiled from kernels.org source tree, unpatched)
> XFree 4.1.0
> nVidia Kernel module + GLX version 1.0-2960
> 
> Because I have a non standard kernel I have to download the 
> driver 'source', 
> which is a few C code and header files plus a chunk of 
> pre-compiled object 
> code that is the real driver.
> 
> I've built it using both
> 
> # make
> 
> and
> 
> # make SYSINCLUDE=/usr/src/linux-2.4.18
> 
> and the problem persists.
> 
> (GLX has also been compiled).
> 
> Using the nv driver I get no problems but I also don't get 
> the 3d performance 
> their drivers offer.
> 
> Analysis of the /var/log/XFree86.0.log file shows that it 
> stops immediatly 
> after loading the PCI module.
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
