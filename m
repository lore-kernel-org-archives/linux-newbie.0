From: =?UTF-8?B?SmF5cmFtIETDqXNocGFuZMOp?= <jaydesh9@gmail.com>
Subject: mapping memory reserved by "memmap" kernel boot param into user space
Date: Sun, 31 Mar 2013 22:11:56 -0700
Message-ID: <CAGj4Cuci1+tk55bSAVONT1O+Z+7kBce9CJ=7gspGXseGhsyaeQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=iFgmjb00HK16N2QBEFQNuHuIQ5VsdWqMafPEm0EMu+o=;
        b=XR7xxs+EuI/YF3ZveQ92rWdOuYgb2rzDkLsuTKyuEPOd2OkumrQr0Ijiezn6dAcBcl
         BE3fvfFwDxjCuv28j39GjR+uapNlcm8XplCZdetmMe16M/Y5F1WOtnZHmoOPRAqIMKNT
         LIIlcvvp37vnYgW3AugQJEEtnQUArbEUWVq6W86dGjuNxneBypg+/XmncrFKeTF1+Mr9
         eGYl5KuDTBSNyOKjaJhzHs+0PtO4qfS2tymZPVvtdgOlKKydzo8G6X8EecZLJKStG1Ch
         LP31Q90g22iDgRirqNZzhgC6TSLkEwOcfP7zVmn6mHtk2nOaK67C83jyIKBuZM4rdtpt
         ASCg==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello ,

As discussed in this[1] discussion, i am reserving a memory chunk at the
boot time using a kernel boot parameter memmap=8G$64G

I have written a character driver [2] kernel module which , during
initialization does a ioremap of this reserved memory chunk. As explained
here , in my driver mmap all i need to do is remap_pfn_range for this
memory chunk pointer returned by the ioremap.

I am running this on 3.x linux kernel. My user space application opens this
memory chunk as a device mounted by the driver. When i do mmap from the use
space application i see a system hang. my dmesg don't provide me much
information.

So questions are :

1 ) Does  remap_pfn_range function have some upper limit on the size of the
memory that can be remaped to ? Note that i am trying to reserve a
comparatively large chunks of memory at the boot time of the order of 64GB
to about 150GB. The system can have 128 to 256 GB of ram.

2) I tried by disabling the ioremap from the initialization and thus
directly doing the page frame numbers remapping in the mmap ioctl routing.
But that also results in a hang.


3) I tried with a page-fault handler , but that doesn't seem to help either.




Regards,
-Jay


P.S. code can be found here [4]


[1] http:// stackoverflow.com/q/1911473/143897
[2] http:// pete.akeo.ie/2011/08/writing-linux-device-driver-for-kernels.html
[3] http:// www.
linuxquestions.org/questions/linux-kernel-70/mmap-of-several-gb-of-reserved-memory-using-805818/#post3972954
[4] http:// stackoverflow.com/questions/12790382/mapping-memory-reserved-by-mmap-kernel-boot-param-into-user-space
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
