From: Prashant Batra <prashant0100@gmail.com>
Subject: Fwd: kernel 3.0-rc4 booting issue
Date: Mon, 10 Oct 2011 13:00:53 +0530
Message-ID: <CAG+XuE4=caiGxHDu=v6qzDXJoyoJaFN6=Amvmu9JWJnfKBxqvg@mail.gmail.com>
References: <CAG+XuE7LgNbXnHN3m+HbfSVYK6Rgs4Q8sjSyBDVfLZX0Gv99=A@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=2OiegjPUxolrcYHtdIWaJqlMO+WJVTeFJbBZpLth3nQ=;
        b=jBao8u1pu0ZDS6hzvafkHo51qfHCwQd9e3xxKNnNgpyBC5ZQyUliCyptytFRd1A5UD
         ldoVnXtwsmFn4H+xFTF31OXIjnuXW2SM/XxoRaz8FyV8mA3wOoK+axjKKO9e2shnH6Xy
         TL5waaLeg8HmEMDjBqG9wbkpDxETuzVH77uYE=
In-Reply-To: <CAG+XuE7LgNbXnHN3m+HbfSVYK6Rgs4Q8sjSyBDVfLZX0Gv99=A@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I am trying to build linux kernel 3.0-rc4 for a x86 server.
I am using the default config for x86, and the compilation goes fine.

But when I try to boot this kernel, it simply hangs at "Booting
kernel" prompt after uncompressing the image.
I suspected that some drivers may not have been included, so did "make
allyesconfig", to include everything in the kernel itself.
But same thing happened.

I followed the following steps -

make allyesconfig ARCH=i386
cp arch/x86/boot/bzImage /boot/vmlinuz-3.0-rc4.
make modules_install ARCH=i386.
initrd is not required as everything is in the kernel.


Can someone point what the issue may be.

Regards,
Prashant.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
