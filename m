From: Rahul Iyer <idlisambar@gmail.com>
Subject: Re: Issuing BIOS interrupts in Linux
Date: Fri, 04 Aug 2006 18:20:33 -0700
Message-ID: <1154740833.11701.1.camel@uranium.hq.netapp.com>
References: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0608040400m7c644503p6d40bc8faea8a80a@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

In a single sentence,
"you cannot".
The reason is that bios interrupts can only be used in real mode and not
in protected mode. Linux runs in protected mode, and so this would not
be possible.

What is it you are trying to do? Maybe there's a better way to do it...
(by using the block device subsystem, for instance)
-rahul

On Fri, 2006-08-04 at 16:30 +0530, Rajat Jain wrote:
> Hi List,
> 
> I want to issue BIOS interrupts in Linux (both user space & kernel
> space are fine). More specifically I want to issue BIOS interrupt 13h
> for accessing disk using the BIOS routines. How can I do so (issue the
> BIOS interrupt)?
> 
> In the file /proc/interrupts on my system, the interrupt 13 h (19
> decimal) is used by some USB driver:
> 
>  16:          0        Phys-irq  uhci_hcd:usb1, uhci_hcd:usb4
>  17:          2        Phys-irq  peth0
>  18:     637572        Phys-irq  eth1
>  19:          0        Phys-irq  uhci_hcd:usb2
>  20:    1275249        Phys-irq  uhci_hcd:usb3
> 
> So will I be able to use the BIOS routine in this case?
> 
> TIA,
> 
> Rajat
> 
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
