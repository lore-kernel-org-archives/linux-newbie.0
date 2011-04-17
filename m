From: ratheesh kannoth <ratheesh.ksz@gmail.com>
Subject: /proc/kallsyms
Date: Sun, 17 Apr 2011 12:09:44 +0530
Message-ID: <BANLkTimgRBVi4xovbGSS1E7a7ArFAsSsAg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=iUEU56SJu5CXZCLVkiWmOQFnIG+PUOMlRNOlVthWeYA=;
        b=ClotsWKd202NVRlYvRjLIzA7xlUDSk8dYGCNZpBRu/zATwHiKJzEhqAXUAxPEVnIIc
         guEB6uTJ/la0bq7TyspddkY+QZIxrkqS7jCLYKhLtODDEsY+jPe6gRj2MEIiOFKnMTqz
         I9sUrJhAx2T97OtC3bL2V+rngqYs81UzmhEU8=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

cat /proc/kallsyms shows below output. Wat is the second column
represents. I could see- D, d, t, T, r etc on the second coumn.



0000000000004000 D per_cpu__gdt_page
0000000000005000 d per_cpu__exception_stacks
000000000000b000 d per_cpu__idt_desc
000000000000b010 d per_cpu__xen_cr0_value
000000000000b018 D per_cpu__xen_vcpu
000000000000b020 D per_cpu__xen_vcpu_info
000000000000b060 d per_cpu__mc_buffer

ffffffff81866397 t init_trace_printk
ffffffff8186eb4b T printk_all_partitions
ffffffff818bdbd8 t __setup_str_setup_early_printk
ffffffff818f0c00 t __setup_setup_early_printk
ffffffff818f1800 t __initcall_init_trace_printkearly
ffffffff818f1bd8 t __initcall_init_trace_printk_function_export5
ffffffff81992fc0 b printk_buf
ffffffffa01955a0 r __ksymtab_v4l_printk_ioctl	[videodev]
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
