From: Rajendra <rajendra_mishra@solidcore.com>
Subject: Re: How does boot loader tell the kernel, the location of initrd?
Date: Thu, 15 Mar 2007 13:56:25 +0530
Message-ID: <45F90331.4060107@solidcore.com>
References: <b115cb5f0703142358j6a422262qe1ad1c6cfcfcdd22@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <b115cb5f0703142358j6a422262qe1ad1c6cfcfcdd22@mail.gmail.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>

Every bootloader has different mechanism for loading the kernel
image. I am talking of Grub boot loader here. Grub uses something
called a multiboot specification. The specification documents the
mechanism for passing data to and from the kernel image.
Search for multiboot specification and i think u will get all ur answers.

U can also look at arch/i386/boot/bootsect.S for the linux kernel
multiboot header related info.

regards,
~rpm

Rajat Jain wrote:
> Hi,
>
> I am experimenting with initrd and my initrd fails to mount. My
> bootloader (U-BOOT) coorectly loads the initrd into RAM as I can see.
>
> I am wondering how does the kernel get to know the address at which
> the initrd is loaded by boot loader? How does the boot loader
> communicate this to the kernel?
>
> Any code references will be appreciated.
>
> Thanks,
>
> Rajat
>
> PS: I am not using initramfs (emebedding root filesystem into kernel 
> image).
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>


--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

