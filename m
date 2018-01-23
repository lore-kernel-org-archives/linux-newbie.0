From: Rongwei Wang <wangrongwei.kernel@gmail.com>
Subject: linux kernel debug in qemu with gdb
Date: Wed, 24 Jan 2018 02:25:27 +0800
Message-ID: <CAKqmuHk17oJE+H5P3fOCDvMax7QEMNZL7VjO13mJqnD5d34_9Q@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/wu3m+I0DP9YeFLEXZNdOZ6H1yGDqpLlvxp79hptmgw=;
        b=f7v4P1lolJQ0DQnxwWisiZrp4OEnP51M+huF2a/aDtYeE+qHWuLefwcTp2tNUzMCi1
         XlAMClUT7tGCmzxp7SBtvRaZTfNo4/s0XpopJQYfPF3HVNx/m0NhwrNwcI3VNPcRRRMa
         zCNw9gFWl9ElmwfNbuuXNVy1AVTBcbjUGxobmuJwEcaCd/VeigXRwJNvJQ6vFBWEBznw
         B8wISsXChxTC9sAQJhOqc3JbZ7UoJfadCKdvT0ccWvXjThW6gV7p6pzbT28s9768TRyT
         653S/w0w3vxiwTHS86soJRzOzmc/2rCfjYqUSJhYIQHkC7tlM5ljXY02wNYV/fcP9tvL
         MF8A==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Hi
     i am a newbie, i just want debug linux kernel(x86_64), and i make
configure with x86_64_deconfig, then configure with debuginfo by make
menuconfig.
 this is my step below:
1.qemu-system-x86_64 -s -S -kernel ../staging/arch/x86_64/boot/bzImage -m 1024
2.gdb --tui vmlinux(in staging)
3.target remote localhost:1234
4.b start_kernel
5.c
but, when i input this 'c' , the system will run until kernel panic,
not stop in start_kernel, could you please give me some idea?

Thanks.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
