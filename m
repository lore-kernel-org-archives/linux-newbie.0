From: Rene Herman <rene.herman@keyaccess.nl>
Subject: Re: PCI interrupt queries
Date: Wed, 20 Aug 2008 20:04:59 +0200
Message-ID: <48AC5CCB.6060302@keyaccess.nl>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com> <48AB2E3C.2070600@keyaccess.nl> <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 20-08-08 06:50, Rajat Jain wrote:

>> On 19-08-08 07:11, Rajat Jain wrote:
>>
>>> I want to understand who decides the IRQ number that a agiven PCI
>>> card will use. I understand that from a PCI device drivers point of
>>> view, it'll find the IRQ vector that it needs to attach by reading
>>> it from the configuration space of the device.
>> Actually, a quick look at struct pci_dev suggests you should
>> be using pci_dev->irq. Note sure why that is; maybe odd
>> bridged setups.
> 
> Where in source code is pci_dev->irq getting populated? I tried but
> could not exactly locate it...

pci_read_irq() it seems.

> OK. But who does it in an embedded environment (PPC for eg) where
> there is no POST software. The first piece of code that gets executed
> is U-boot and then the kernel. So who writes the LINE value into the
> config space?

If anything, the kernel and specifically that bit of the kernel that 
sets up the routing (if there is anything to setup; might ofcourse be 
fully hardwired there).

The "if anything" might be the reason for needing to use pci_dev->irq as 
per the comment. As said, don't know. Makes sense though; why would you 
write it back to config space if you can just supply it as part of pci_dev.

Rene.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
