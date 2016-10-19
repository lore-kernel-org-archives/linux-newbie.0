From: =?UTF-8?B?5ZC05ZGo6L6J?= <wuzhouhui250@gmail.com>
Subject: [HELP] asm language explanation about callq
Date: Wed, 19 Oct 2016 10:20:32 +0800
Message-ID: <CA+AdbF9O8xvmE+5JpS5p-T1kSjCDQ_Xug18jV7Vr_Cf0F4OwxA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=L1lPbITUsfF1jR0r6yvdqqu5WukfQcAq1l/0yah1GXI=;
        b=FfZAHaIbx+0HxldeVaQQgilA4QFhtd+PXz0zfOR6c4js2rn47yuJ5a4UAivuYhGBJC
         yJDUME/reKHnveIxlVCYjJlWDPzXD/rSh1gn0kjLPF8tbCTP9NreoPvh6ECePODKLcjw
         kOrJXAwu9n/eYxh5CrhT/zrHykABI+Us2Jclc050YsW+YfyV1/Jqou7pYG/2QxvbloXE
         rZFrpPEgDajaisbSY7BZViVNPG5lhTiSZxasUrT5h6HbtO+cgHG/P7BceW6BA2L+HwVQ
         ToXLeWe0Ccf6P00JbNnc+ssZgc+YqrHb4tDodY15cRH7SdSkkkMdAx5WzLq3kk9TmOu7
         3nvw==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I wrote following C program:

#include <linux/module.h>
#include <linux/init.h>

static int param = 4096;
static unsigned long int addr = 0xffff88080984b000;
module_param(param, int, S_IRUGO);
module_param(addr, ulong, S_IRUGO);

static int test_init(void)
{
    memset((void *)addr, 0, param);

    return(-1);
}

static void test_exit(void)
{
}

module_init(test_init);
module_exit(test_exit);

MODULE_LICENSE("GPL");

Then, I compile it, and objdump -d test.o:

test.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cleanup_module>:
   0:    55                       push   %rbp
   1:    48 89 e5                 mov    %rsp,%rbp
   4:    e8 00 00 00 00           callq  9 <cleanup_module+0x9>
   9:    c9                       leaveq
   a:    c3                       retq
   b:    0f 1f 44 00 00           nopl   0x0(%rax,%rax,1)

0000000000000010 <init_module>:
  10:    55                       push   %rbp
  11:    48 89 e5                 mov    %rsp,%rbp
  14:    e8 00 00 00 00           callq  19 <init_module+0x9>
  19:    48 63 15 00 00 00 00     movslq 0x0(%rip),%rdx        # 20
<init_module+0x10>
  20:    48 8b 3d 00 00 00 00     mov    0x0(%rip),%rdi        # 27
<init_module+0x17>
  27:    31 f6                    xor    %esi,%esi
  29:    e8 00 00 00 00           callq  2e <init_module+0x1e>
  2e:    b8 ff ff ff ff           mov    $0xffffffff,%eax
  33:    c9                       leaveq
  34:    c3                       retq
  35:    90                       nop
  36:    90                       nop
  37:    90                       nop

Can someone explain what the meaning of three "callq" instruction in objdump's
output, especially the arguments of "callq".

Thanks.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
