From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: need for mmap?
Date: Wed, 21 Mar 2007 08:30:19 +0100
Message-ID: <1174462219.1158.110.camel@laptopd505.fenrus.org>
References: <292693080703202107r7c8f914ch48f68abd8bf7d95d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080703202107r7c8f914ch48f68abd8bf7d95d@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>

On Wed, 2007-03-21 at 09:37 +0530, Daniel Rodrick wrote:
> Hi list,
> 
> I'm a newbie, and I just read about the mmap system call. I have a
> very basic confusion regarding why would a driver ever want to
> implement mmap.
> 
> 1) The purpose of mmap is to map the device memory to user space
> programs, right? Isn't that alreay available via /dev/mem?

no /dev/mem doesn't allow convenient access to scatter-gather memory etc
while your own mmap can make the memory look linear


> 2) Is it that mmapping /dev/mem works only for memory (RAM)? Are all
> physical addresses not available via /dev/mem?

 /dev/mem is a HORRIBLE interface, and it won't work in the future or
even today on some machines.
The reason for this is that this interface doesn't tell the kernel what
device you want to talk to, so there is no way the kernel can set up the
IOMMU correctly to allow access to the memory. Today only high end
machines have an IOMMU, but I suspect that within a few years all PCs
will have one as well....

-- 
if you want to mail me at work (you don't), use arjan (at) linux.intel.com
Test the interaction between Linux and your BIOS via http://www.linuxfirmwarekit.org

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
