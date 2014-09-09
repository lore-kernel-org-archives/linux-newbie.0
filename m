From: Rajat Jain <rajatjain@juniper.net>
Subject: RE: x86_64_defconfig and i386_defconfig: What is the difference?
Date: Tue, 9 Sep 2014 17:51:43 +0000
Message-ID: <d4633e14d4634539948ca737778bbac9@DM2PR05MB671.namprd05.prod.outlook.com>
References: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
            <540F094F.3040904@gmail.com>
 <75730.1410272873@turing-police.cc.vt.edu>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <75730.1410272873@turing-police.cc.vt.edu>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: "Valdis.Kletnieks@vt.edu" <Valdis.Kletnieks@vt.edu>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@kernelnewbies.org>

Hi,

> -----Original Message-----
> From: Valdis.Kletnieks@vt.edu [mailto:Valdis.Kletnieks@vt.edu]
> Sent: Tuesday, September 09, 2014 7:28 AM
> To: Matthias Brugger
> Cc: Rajat Jain; linux-newbie@vger.kernel.org; kernelnewbies
> Subject: Re: x86_64_defconfig and i386_defconfig: What is the difference?
> 
> On Tue, 09 Sep 2014 16:06:07 +0200, Matthias Brugger said:
> 
> > > Can someone tell me if the i386 one is to be used when we want to
> > > build for a 32bit machine and the x86_64 is to be used for 64 bit machine?
> >
> > You can build the kernel with any architecture for any architecture.
> > This is called cross-compiling. The homepage [0] should explain you
> > how to do that.
> 
> Right, but you still need to use a .config appropriate for the target machine,
> which is what I think Rajat was asking about.

Right.

I'm trying to generate x86 images for someone else to test, who's going to test it on a standard / generic x86 machine:

https://lkml.org/lkml/2014/9/9/35

What I was not sure is that which config should I use to generate an image for a "standard x86 machine". Now I do understand (I provided him 2 images - 1 for the 32 bit (using i386_defconfig) and another for 64 bit (using x86_64_defconfig).

Thanks,

Rajat


> 
> A defconfig is usually only known verified to boot on a few (possibly one)
> examples of that architecture hardware.  For embedded ARM, it may be one
> specific development board or hardware device.  For x86, I think they try to
> keep it "will probably kind of sort of boot on generic PC hardware with a
> common distro, but anything fancylike a webcam or better graphics than "vga
> tty emulation" may not work".
> 
> A defconfig is pretty much just a proof of concept starting point for an actual
> working config for a given hardware system.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
