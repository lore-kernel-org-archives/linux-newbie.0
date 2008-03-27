From: =?ISO-8859-1?Q?Roar_Bj=F8rgum_Rotvik?= <roarbr@tihlde.org>
Subject: Re: What's the deal with 1/3G separation between kernel
 address space and user address space?
Date: Thu, 27 Mar 2008 12:46:01 +0100
Message-ID: <47EB88F9.8070808@tihlde.org>
References: <f8b4363d0803262201i514a168dk614808b2f001df3d@mail.gmail.com> <f8b4363d0803262202k221c8b51x2ced4d6c6832b581@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <f8b4363d0803262202k221c8b51x2ced4d6c6832b581@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

Antino Kim wrote:
> Hi all,
>=20
> I was looking into Linux kernel documentation, and I ran into one ver=
y
> fundamental question: Why does Linux divide virtual address space int=
o
> 1/3G between kernel and user address space?
> Please note that I'm not asking "why 1/3G? why not 2/2G?". I was able
> to find some discussion online about this matter. However, my questio=
n
> is more basic - naive, some may say.
>=20
> Why is there a division at all? As I understand, there occurs a
> context switch between user-level process and the kernel when syscall
> is made. Then why are we reserving 1G for kernel? Why isn't it
> possible to give full 4G address space to the user process, and kerne=
l
> gets full 4G space when switched in?

I'm no expert on this either, but will try to explain it shortly.

Since userspace applications calls kernel functions (read(), open() and=
 so on), those=20
kernel functions used must be mapped in the address space that an appli=
cation may see,=20
i.e. the userspace and kernel space must share the address range. For 3=
2-bit this gives=20
4GB address space in total.

=46or linux the split is 1GB for kernel and 3GB for userspace as you no=
ticed. In those 1GB=20
the kernel code and data structures must be contained, including the vi=
rtual mappings for=20
physical memory.

Please see chapter "Memory mapping and DMA" from Linux Device Drivers (=
LDD) version 2 or=20
3, available online.
http://lwn.net/Kernel/LDD2/ (HTML + PFD versions of chapters)
http://lwn.net/Kernel/LDD3/ (only PDF version of chapters)

Here is a link to the pfd version from LDD3: http://lwn.net/images/pdf/=
LDD3/ch15.pdf

This chapter explains memory management in linux, including this memory=
 split, address=20
types, high and low memory, page tables. I think it should cover most o=
f your questions,=20
and perhaps other experts may give additional info.

--
Roar Bj=F8rgum Rotvik
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
