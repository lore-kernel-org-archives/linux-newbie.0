From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Can't Print (fwd)
Date: Sun, 9 May 2004 09:55:21 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200405090955.21494.pa3gcu@zeelandnet.nl>
References: <20040509071627.2213F333ED@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040509071627.2213F333ED@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>, Linux-newbie@vger.kernel.org

On Sunday 09 May 2004 09:16, Peter wrote:
> Hi,
>
> I have made a new installation of RH9.0 2.4.20-9 where I have a parallel
> printer card. The system is now discovering the card.
>
> Doing: "more /proc/pci" I am told that the printer card is using irq 5 and
> the io=0xd400.
> This is the first number to show. There are some more io.
>
> Only to this io does the printer react, meaning it makes that sound when
> the print head moves somewhat and only giving this io will lpq give an
> information about the print queue. It is a dot matrix printer.
>
> That printer react comes when I do: insmod parport_pc io=0x400 irq=5.
> After this lpq gives the usual information about the print queue. There is
> always an old queue around either as 'done' or now as an 'error too many
> tries'.
>
> Now if I want to print something 'lpr file' the keyboard totally freezes
> and I have to do a dirty reboot.

Name model and make of the card, chipset nr, if possable, 
what does the system log have to say about the printer and if anything what 
does it say about the command used to print.


> Any help appreciated.

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
