From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: Why "high memory" in x86?
Date: Tue, 1 Aug 2006 15:23:23 +0530
Message-ID: <b115cb5f0608010253ja11135ag7a3301f1f0ff8d03@mail.gmail.com>
References: <b115cb5f0607312248p6e05f2f2je8c6a352f7856a9a@mail.gmail.com>
	 <20060801090248.4aad8a39@thomas.toulouse>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060801090248.4aad8a39@thomas.toulouse>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Thomas Petazzoni <thomas.petazzoni@enix.org>, chauhan_ait@yahoo.co.in, clucas@rotomalug.org
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 8/1/06, Thomas Petazzoni <thomas.petazzoni@enix.org> wrote:
> Hi,
>
> Le Tue, 1 Aug 2006 11:18:16 +0530,
> "Rajat Jain" <rajat.noida.india@gmail.com> a =E9crit :
>
> > I recently read that the concept of "High Memory" was introduced
> > because certain architectures are capable of physically addressing
> > larger amounts of memory than they can virtually address (physical
> > address space > virtual address space). I also read that nowadays
> > "high Memory" exists only in x86.
> >
> > 1) Why is virtual memory > 896 MB on x86 designated as high memory?
> > AFAIK x86 has 4 GB of virtual address space (=3Dphysical address sp=
ace?)
> >
>
> If you're talking about CONFIG_HIGHMEM, then no, it's not really
> designed for when you have more physical memory than it's possible to
> virtually access. It's because the Linux kernel decided to split all
> 4GB virtual address spaces into two parts: 3 GB for the application, =
1
> GB for the kernel. The 1 GB for the kernel is an identity mapping of
> the physical memory, which allows the kernel to access very simply al=
l
> the physical memory.
>
> However, it has the drawback that when having more than 1 GB of
> physical memory, things get harder. CONFIG_HIGHMEM allows to access
> more than 1 GB of physical memory. It does it by mapping temporarly
> physical pages that are above 1 GB. In fact, it's not 1 GB that is
> identically-mapped, but 896 MB, the rest (1 GB - 896 MB) is used for =
the
> temporary mappings needed to access pages above 896 MB.
>
> My explanation might be a bit confusing (it's early in the morning,
> here). I'd suggest you to read =AB Understanding the Linux Virtual Me=
mory
> Manager =BB,
> http://www.phptr.com/content/images/0131453483/downloads/gorman_book.=
pdf
>
> > 2) Has the "high Memory" concept got anything to do with PAE (Page
> > Address Extention) feature of x86?
>
> I don't think so.
>
> > 3) Do any other architectures than x86 have the concept of high
> > memory?
>
> 64 bits architecture, no. Other 32 bits architecture, maybe, but I'm
> not sure.
>
> Sincerly,
>
> Thomas
> --

Thanks every one. But perhaps I could not make my doubt very clear. My
very first doubt is that since kernel and each of the user process
have its own seperate virtual address space, why does the VIRTUAL
address space has to be split up betwen kernel and user process? Why
is the kernel limited to using only 1 GB of the available 4 GB virtual
address space? What is the limitation to overcome which, the temporary
mapping solution was proposed (Can't we map all of 4 GB permanently)?

My second doubt is whether the lowest 1 GB (0->1 GB) or the highest 1
GB (3->4 GB) physical addresses are mapped to kernel virtual
addresses? If the highest 1 GB addresses are permanently identity
mapped, shouldn't the "high memory" exist below 3 GB virtual addresses
(rather than above 896 MB virtual addresses)?

What am I missing?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
