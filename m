From: Jim Nelson <james4765@verizon.net>
Subject: Re: any way to find which pci driver uses what memory region & Any
 way to find which driver is attached to which device file
Date: Thu, 14 Oct 2004 18:11:09 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <416EF97D.9050401@verizon.net>
References: <025301c4b743$dd7a2d00$41c8a8c0@Eshwar>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <025301c4b743$dd7a2d00$41c8a8c0@Eshwar>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: eshwar <eshwar@moschip.com>
Cc: newbie <linux-newbie@vger.kernel.org>

eshwar wrote:

>HI,
>
> Is there any way to find which pci driver uses what memroy regions and any
>way to find which driver si attached to which device file
>
>  
>

"cat /proc/iomem".  That will list the memory addresses assigned to the 
various PCI devices.  Some kernels have PCI name support compiled in 
(most stock distro kernels do), but without it, you get the PCI bus 
location numbers, and have to do a bit of work with lspci to identify 
what each adapter is.

I don't understand why you need to know PCI memory address regions - 
they are remapped at device configuration time (unlike ISA) unless you 
have a seriously broken adapter card.

What do you mean "any way to find which driver is attached to which 
device file"?  You can use "cat /proc/devices" to get the major number 
assigned to each block and char driver, and then do a "ls -l 
/dev/[device file name]" to get the major and minor numbers assigned to 
that device.  From there, things get more driver-specific - different 
drivers use minor numbers in different ways.

More info about what you're actually trying to do would help.

Jim

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
