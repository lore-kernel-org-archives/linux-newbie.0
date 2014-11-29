From: Guoqing Liu <lgqgood@gmail.com>
Subject: Re: Early boot debigging
Date: Sat, 29 Nov 2014 16:35:25 +0800
Message-ID: <CAMLw+SH6owptQOMjbd35Jr2w36PB-T3ZFj8kz=ra72=9V6fyeg@mail.gmail.com>
References: <CANCZXo7R046PsjGS3HSE3XvHcJtmzbySfWpULhkvQ2f6FJPt9w@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=p7LLODvF8BERaTXTpE5pNALvd14Z8cjOu6k6AVZuTFM=;
        b=l3WEGZy+c3uKx872pRf/HpSo3N6xafxQJbaw08Ccaq5k0EOZ11urKcIe8uhyP7Iur1
         C33fPT1T+D4CDMGnTtK6Q11Uc49nlhWQLun9Yg114gJe8v8LEyl5cOi5O1k/N22Ikm/2
         4uAjfzmqdBi/IRkWj6uBPN/YDNUvqoJFTRBZKJkUiRnOZZGc7Urwa93tiwLm8zPW5zw3
         WEo90WKFIOodcq0i1DlnuXN+euPN+4QtoyXvW3N847rPYjJVX+FNUHH2tJ0djKgxmnss
         AjNBkJYEuVcNuK/m5nd95XUS4+ISXf8Yj+icaEUEq1LFMVUVI/vcDhez89QAPy95zig1
         lsKA==
In-Reply-To: <CANCZXo7R046PsjGS3HSE3XvHcJtmzbySfWpULhkvQ2f6FJPt9w@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Kuleshov <kuleshovmail@gmail.com>
Cc: linux-newbie@vger.kernel.org

Hi  Alexander
  I think  you can try qemu, I think it's better.

good luck.

On Sat, Nov 29, 2014 at 2:41 PM, Alexander Kuleshov
<kuleshovmail@gmail.com> wrote:
> Hello all,
>
> How can i debug early kernel booting, even before early_printk
> (x86_64). I'm interesting in part which starts to execute right after
> bootloader (https://github.com/torvalds/linux/blob/master/arch/x86/boot/header.S#L297).
> How to do it better? Write grub and vmlinuz to disk with
> losetup/grub-install and connect with gdb, or there is something
> another way to do it?
>
> Thank you.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs



-- 
good life
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
