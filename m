From: kernel kernel <unix.hacker@gmail.com>
Subject: Re: Unable to make kernel 2.6.8 up
Date: Wed, 20 Oct 2004 09:22:43 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <104ee7a5041019205249198045@mail.gmail.com>
References: <104ee7a50410190917496bc175@mail.gmail.com>
	 <200410192136.58935.pa3gcu@zeelandnet.nl>
Reply-To: kernel kernel <unix.hacker@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200410192136.58935.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Richard Adams <pa3gcu@zeelandnet.nl>, newbie <linux-newbie@vger.kernel.org>

Hi  Richard,
Thanks for your fast response.

I am furnishing the following details.
Motherboard : Intel 865
Processor    : P4 2.4GHz
SCSI           : Samsung Hard disk

I am trying to use 2.6.8 kernel from the GNU (downloaded from kernel.org)

Thanks 
Amrith



On Tue, 19 Oct 2004 21:36:58 +0200, Richard Adams <pa3gcu@zeelandnet.nl> wrote:
> On Tuesday 19 October 2004 18:17, kernel kernel wrote:
> > Hi all
> > While booting with 2.6.8 kernel. giving error no ata_piix module found.
> 
> Unless you have an Intel SATA contoler on your mobo, (and possably SATA disks)
> then i would imagen you could ignore this message, if you do have the above
> then "please" supply the needed info in your next reply.
> 
> What motherboard.
> What chipsets does it have.
> What disks do you have, make and model numbers please.
> Name of distro would also help.
> 
> It all comes down you you forgetting to include support for Intel SATA
> contolers which is to be found under;
> SCSI low-level drivers
> sub section;
> CONFIG_SCSI_SATA
> When chosing the above you will automaticly get the following "option";
> CONFIG_SCSI_ATA_PIIX
> 
> >
> > How to solve it.
> >
> > Thank
> > kh
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
