From: kernel kernel <unix.hacker@gmail.com>
Subject: Re: Unable to make kernel 2.6.8 up
Date: Thu, 21 Oct 2004 12:10:40 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <104ee7a50410202340180a28ba@mail.gmail.com>
References: <104ee7a50410190917496bc175@mail.gmail.com>
	 <200410200740.47957.pa3gcu@zeelandnet.nl>
	 <104ee7a5041020205740020828@mail.gmail.com>
	 <200410210753.02042.pa3gcu@zeelandnet.nl>
Reply-To: kernel kernel <unix.hacker@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200410210753.02042.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: newbie <linux-newbie@vger.kernel.org>

Hi Richard.

I had a kernel patch and i need to test in the latest kernel.
Before that i am trying to bring the kernel 2.6.x up and running.
That is all i want to do.

By the way 
vmlinux -- is the kernel 
vmlinuz --- is the boot sector. 

Why initrd is needed ? 
While mkinitrd, I am getting the error /dev/mapper not found, But
still it makes the initrd image.

Thanks
Amrith


On Thu, 21 Oct 2004 07:53:02 +0200, Richard Adams <pa3gcu@zeelandnet.nl> wrote:
> On Thursday 21 October 2004 05:57, kernel kernel wrote:
> > Hi Richard,
> > I was able to build it.
> > But while, boot up it is giving the error message init not found.
> 
> This could be cause by many things, but considering you mentioned SATA and
> then SCSI leads me to belive your new kernel is looking for a partition on a
> differently named drive than you think it is.
> For example, some SATA drivers use scsi (emulation) meaning your old system
> has disks defined as /dev/hdX and the new kernel with SCSI or SATA devices
> looks for /dev/sdX
> 
> Without knowing what you are doing no one can really say what you need to do.
> I can point you to a search engine use "google.com/linux" as the address and
> type, "no init found" in the search engine, you will get a lot of information
> which may help you.
> 
> 
> 
> > Thanks
> > Amrith
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
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
