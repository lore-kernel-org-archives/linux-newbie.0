From: kernel kernel <unix.hacker@gmail.com>
Subject: Re: Unable to make kernel 2.6.8 up
Date: Thu, 21 Oct 2004 09:27:36 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <104ee7a5041020205740020828@mail.gmail.com>
References: <104ee7a50410190917496bc175@mail.gmail.com>
	 <200410192136.58935.pa3gcu@zeelandnet.nl>
	 <104ee7a5041019205249198045@mail.gmail.com>
	 <200410200740.47957.pa3gcu@zeelandnet.nl>
Reply-To: kernel kernel <unix.hacker@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200410200740.47957.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: newbie <linux-newbie@vger.kernel.org>

Hi Richard,
I was able to build it. 
But while, boot up it is giving the error message init not found.

Thanks
Amrith


On Wed, 20 Oct 2004 07:40:47 +0200, Richard Adams <pa3gcu@zeelandnet.nl> wrote:
> On Wednesday 20 October 2004 05:52, kernel kernel wrote:
> > Hi  Richard,
> > Thanks for your fast response.
> >
> > I am furnishing the following details.
> > Motherboard : Intel 865
> > Processor    : P4 2.4GHz
> > SCSI           : Samsung Hard disk
> >
> > I am trying to use 2.6.8 kernel from the GNU (downloaded from kernel.org)
> 
> You said your problem was;
> 
> "While booting with 2.6.8 kernel. giving error no ata_piix module found"
> 
> Now you say you have a SCSI disk, the two are completly different,
> With SCSI its now the disk type which needs a driver but your SCSI controler.
> It will also need to be compiled into the kernel and NOT as a module.
> 
> Simply choose the needed driver with 'make config' or 'make menuconfig'
> recompile the kernel install it and update your bootloader then reboot.
> 
> You are being to vauge to help precisely, please learn to explain your
> problem(s) better.
> 
> > Thanks
> > Amrith
> 
> --
> 
> 
> If the Linux community is a bunch of thieves because they
> try to imitate windows programs, then the Windows community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
