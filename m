From: manish regmi <regmi.manish@gmail.com>
Subject: Re: physical or virtual address
Date: Fri, 8 Oct 2004 11:43:37 +0545
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <652016d3041007225816aa4351@mail.gmail.com>
References: <20041008054742.42568.qmail@web52901.mail.yahoo.com>
Reply-To: manish regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041008054742.42568.qmail@web52901.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 8 Oct 2004 06:47:42 +0100 (BST), Ankit Jain
<ankitjain1580@yahoo.com> wrote:
> in this file i have a doubt if this is the physical
> address
> it basically looks from 00000000-ffffffff
> 
> which is 0-4294967295
> 
> i feel after that there is a mapping for physical
> address
> 
> if somebody can explain me this
> 
> thanks
> 
> ankit
> [ankit@Ankit ankit]$ cat //proc/iomem
> 00000000-0009fbff : System RAM
> 0009fc00-0009ffff : reserved
> 000a0000-000bffff : Video RAM area
> 000c0000-000c7fff : Video ROM
> 000f0000-000fffff : System ROM
> 00100000-077effff : System RAM
>  00100000-00250d5b : Kernel code
>  00250d5c-0034ac43 : Kernel data
> 077f0000-077f2fff : ACPI Non-volatile Storage
> 077f3000-077fffff : ACPI Tables
> 10000000-100003ff : Intel Corp. 82801DB ICH4 IDE
> e0000000-e7ffffff : Intel Corp. 82845G/GL
> [Brookdale-G] Chipset Integrated Graphics Device
> e8000000-ebffffff : Intel Corp. 82845G/GL
> [Brookdale-G] Chipset Host Bridge
> ed000000-ed0003ff : MYSON Technology Inc SURECOM
> EP-320X-S 100/10M Ethernet PCI Adapter
>  ed000000-ed0003ff :
> ????????a??N??<??G??R??P??g??q??x??p??v??m??V??Dm?
> O?J?Q?M?!2Z<)ee000000-ee07ffff : Intel Corp.
> 82845G/GL [Brookdale-G] Chipset Integrated Graphics
> Device
> ee080000-ee0803ff : Intel Corp. 82801DB USB EHCI
> Controller
>  ee080000-ee0803ff : ehci-hcd
> ee081000-ee0811ff : Intel Corp. 82801DB AC'97 Audio
>  ee081000-ee0811ff : ich_audio MMBAR
> ee082000-ee0820ff : Intel Corp. 82801DB AC'97 Audio
>  ee082000-ee0820ff : ich_audio MBBAR
> fec00000-ffffffff : reserved
> 
> 

Of course that is a physical address.
Remember Adress(physical address) does not necessarily mean RAM. It
can be Ram, ROM, and I/O mapped to Physical Memory ( i mean memory
mapped I/O)

regards manish
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
