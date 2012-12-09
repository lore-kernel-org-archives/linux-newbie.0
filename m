From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Subject: Question on Memory management unit
Date: Sat, 8 Dec 2012 19:08:08 -0500
Message-ID: <CALyraeP41AEZFD=cHZT_PYgUZ+nrvDfTMQ1t9qtuFJ-cOEssiQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=IF8B/d5zTJCYq/sC+Wbi+4rCpG69XPA7ePHOBbF8DmI=;
        b=pPbp7zyqxeBOzpz6RHa7e9orVcOpFp2Ntg1T21izKgaLcE/Dq0F97hPBCs9daqxGje
         BcsoLwXrffFZIdAtKbLoprOAFAKWUHTSjKWCOBtAdJvoqyGBLLpABdmTgrg5rE/DgNUb
         nAT1WYVFiXgOzG1Q+2NAEvvOqxBhPeu7diCKACZopldE+m7AvHFfXfxBU8Tt5bzsWE9S
         HT7RkTHAx8lLM/WJMzLpYQBANeX058k0Dbb6fFDFWO2CCGTQ+DWgTR/IjU2b19MPLVmS
         WrCEcClgj5Nc49BYaL+xJiPqi3QTqIREIbwaQIxGczlmcS74ZBj+c45PBn3kqKhLIcb7
         95hA==
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, linux-kernel-mail <linux-kernel@vger.kernel.org>

Hi Guys,

I have question on memory management in linux kernel.

From my understanding memory is divided into 3GB and 1GB for 32-bit
architectures. 1GB is allocated to kernel space and 3GB is allocated
to user space.

To access any memory in kernel space, it should be mapped in to kernel
virtual address space.

My question is how do we know kernel address space (virtual address).
Can we recognize a range of addresses, if so what is that range of
kernel virtual address?

What function returns kernel virtual address. Or do we need to map to
get kernel virtual address.

I know kmalloc returns logical address and vmalloc returns virtual address.
And all these addresses should go through MMU to access physical
memory. So there will be page mappings in kernel for these addresses.
Is this true?

Thanks in advance.
-- 
Regards,
Sri.
