From: "Peter H." <heisspf@skyinet.net>
Subject: Re: Can't Print
Date: Sun, 09 May 2004 18:19:31 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040509101931.66AE23339C@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-newbie@vger.kernel.org

Thanks for any help! I solved the problem. I installed the kernel of 
slackware9.1  2.4.22 and my good old Epson LX-800 came to live. This is not 
the first time this kernel 2.4.20-20.9 did mess-up things. How much time 
wasted by Richard and myself on account of an apparent defective kernel from 
Krud-Linux.
What did Ray say or similar, by his experience, with slackware most things 
work better and smoother. Darn true!

Peter said:
> Hi,
> I have made a new installation of RH9.0 2.4.20-20.9 where I have a parallel
> printer card. The system is now discovering the card.

> Doing: "more /proc/pci" I am told that the printer card is using irq 5 and
> the  io=0xd400. This is the first number to show. There are some more io.

> Only to this io does the printer react, meaning it makes that sound when the
> print head moves somewhat and only giving this io will lpq give an
> information  about the print queue. It is a dot matrix printer.

> That printer react comes when I do: insmod parport_pc io=0x400 irq=5. After
> this lpq gives the usual information about the print queue. There is  always
> an old queue around either as 'done' or now as an 'error too many  tries'.

> Now if I want to print something 'lpr file' the keyboard totally freezes and
> I  have to do a dirty reboot.

> Any help appreciated. --  Peter 



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
