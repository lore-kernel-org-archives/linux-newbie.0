From: Harm Smits <harmsmitsdev@gmail.com>
Subject: How does Linux not pagefault when jumping to the decompressed bzImage
 in x86_64?
Date: Wed, 16 Mar 2022 15:10:04 +0100
Message-ID: <CAO64rh6iYkLMfPnykJJ9VqVK2HUP+=9e9RVd1j5b7OpLAMEfiA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Nc7BSxuiQ/DOD3oqRhcfUpg4yrmug+1Czp9bicKY9pw=;
        b=G6u/hUnFE6CgaCULYMUvIWqjcCSMipok/LJ/H4Tg8NZM5chzrAo6qVEPqKfU4JIftt
         sWgV46z5DtMqpdRVlkihkoNbrfa+WxRPULbGYBwEnzU30AGwl+1YkDNnHnyVZR8j9AHH
         smEh7iWKLBbO7g/mpP56hIWkDiLkFJDE5bW1GbdTza74X8TpaUpypFpF4O1qukVq0kIe
         l92t28deyUDFgVQyCeq99x7ATO24PvLMzL7osY2iaM0EnMWc+EgpORm0uJb7S/wkIAXZ
         2vBeuP+bD9FlG5pTpBrHpNDpNL6wUye83LZyi7cwncmMfQE96MsoL0qrCqbzDq5P327y
         FeJw==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello!

For the past few weeks I have been trying to figure out how Linux
boots in its entirety as I found it rather interesting. However, I
have now come to a point where I am nothing short of confused.

As we can see in the linking script (vmlinux.lds.S), it is offset to a
certain address, namely __START_KERNEL. This define resolves to
__START_KERNEL_map + __PHYSICAL_START. So the entire 'kernel image' is
(from as far as my understanding goes) shifted by __START_KERNEL_map,
which holds a value of 0xffffffff80000000.

Now, when decompression has finished, it dereferences the first few
bytes of bzImage to get the address of `startup_64`, and it jumps to
the defined address and resumes execution while still in physical
address space. But how can they execute code that is compiled to be
run at a completely different address space, without causing page
faults? When I attempt to do the same, writing to the descriptor of
the temporary GDT causes it to have an access violation at address
0xffffffff8141d0a0
(https://github.com/torvalds/linux/blob/56e337f2cf1326323844927a04e9dbce9a244835/arch/x86/kernel/head64.c#L616)

Any help or resources on this would be greatly appreciated.

-- 
Kind regards,
Harm Smits
