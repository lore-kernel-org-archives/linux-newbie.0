From: Alexander Kuleshov <kuleshovmail@gmail.com>
Subject: Early boot debigging
Date: Sat, 29 Nov 2014 12:41:47 +0600
Message-ID: <CANCZXo7R046PsjGS3HSE3XvHcJtmzbySfWpULhkvQ2f6FJPt9w@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=FpRnZNinllu1ExHHkaiVr4Si5EphoAyHOFEDZ0dMapY=;
        b=Xlg7y6zbJmlpYKQNPMFfu/Z9W/l9Zrz9IuP342LlIp9xDa5qNDghe6UgQCCdXZaiTD
         GV7JqpA4d3CGstU1p2o0a5LPqjL+4rFYfkprjEOFyqFTK0iCubhA+jmustbAy5Dc9Brd
         sX9Y9w5wFEGdjgD4nY57meJt+vGfMuOh1EpztqfBuwX8y/7QphITIcov2SJlO1lT3UAj
         jb5fMIfYXHK+eb4XYihmpBP1yL/UKs1qBGOJml6epHjZpqg3Utysu8R/3P9cy3UDvZaH
         mOLmDdzUyAZ/9kYmj9lF2+yAkZn/zQuWkF9SNRiLOem4ona5dOOfyILlcvAmF3Q/XwAU
         kfSA==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello all,

How can i debug early kernel booting, even before early_printk
(x86_64). I'm interesting in part which starts to execute right after
bootloader (https://github.com/torvalds/linux/blob/master/arch/x86/boot/header.S#L297).
How to do it better? Write grub and vmlinuz to disk with
losetup/grub-install and connect with gdb, or there is something
another way to do it?

Thank you.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
