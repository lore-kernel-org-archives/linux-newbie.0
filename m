From: Guoqing Liu <lgqgood@gmail.com>
Subject: Re: Early boot debigging
Date: Sun, 30 Nov 2014 01:24:12 +0800
Message-ID: <CAMLw+SEuNC6KG74y7KqU2zcCsEXbigJA2f1TBxFt6wod=UZRKQ@mail.gmail.com>
References: <CANCZXo7R046PsjGS3HSE3XvHcJtmzbySfWpULhkvQ2f6FJPt9w@mail.gmail.com>
	<CAMLw+SH6owptQOMjbd35Jr2w36PB-T3ZFj8kz=ra72=9V6fyeg@mail.gmail.com>
	<CANCZXo63rTNT9L+LZUvYaUT25Hoq=aowRSbv5rK-jqZsfit+kw@mail.gmail.com>
	<CAMLw+SHd6SfsLfnacARpnoK2EgkQ_A5r+VH+7J0LTRUQ0QR4ig@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SzgpyUPA2QWXZSqBApvtswoaRtA9HKZlXOOPvIB/v9Y=;
        b=WRfwmHSXcI2RsbsU3f6/9wzy0wn+p03kG4RNXRfuBgO0TxmdrHd0GWeRFsm8zJoIHp
         Z3S76XKTx3j/ZsoEVsgB7PTesBSU+AlIBsgjHYhx9rqD0RJnN4eygo9qinPTMALLgfWx
         dLcv21xy1kBeM9hYE8lz9CirF8hLzhawWZUFXIqqzqz4n3zvxJ9KnhkqS4YbZG9WoyGN
         bFak11YyfsnWE+QrD9XjE52cs3WuBayPORgzFBbSHfhmLimPySiArDNjSssQCAF1ZgAR
         5p2MyB1ICLGwYn2XLQQxJO3RMoQH3pKPKfeRVuTinWz5HHJVkqcLcamrrCKGUx7cDgAR
         6QaQ==
In-Reply-To: <CAMLw+SHd6SfsLfnacARpnoK2EgkQ_A5r+VH+7J0LTRUQ0QR4ig@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Kuleshov <kuleshovmail@gmail.com>
Cc: linux-newbie@vger.kernel.org

On Sun, Nov 30, 2014 at 1:07 AM, Guoqing Liu <lgqgood@gmail.com> wrote:
> HI  Alexander
>   I also meet some problem when using my system efi grub.
>   I think if you just care about the kernel start process, you can
> skip the grub.
>   you can use follow cmd to emulate the kernel
>   "qemu-system-x86_64 -kernel arch/x86_64/boot/bzImage -hda
> linux-0.2.img -append root=/dev/sda"
>   I do't know whether can solve your problem.
>
> good luck.
>
> Guoqing
>
> On Sat, Nov 29, 2014 at 7:26 PM, Alexander Kuleshov
> <kuleshovmail@gmail.com> wrote:
>> Hello, thank you for reply,
>>
>> yes, previously my plan was grub2 + vmlinuz/initrd + qemu.
>>
>> I built disk with following instructions:
>>
>> dd if=/dev/zero of=disk.img count=163840 bs=4096
>> fdisk fdisk (created one partition)
>> sudo losetup /dev/loop0 disk.img
>> sudo losetup /dev/loop1 disk.img -o 1048576
>> sudo mke2fs /dev/loop1
>> sudo mount /dev/loop1 /mnt
>> sudo grub-install --root-directory=/mnt --no-floppy --modules="normal
>> part_msdos ext2" /dev/loop0
>>
>> Than i copied vmlinuz and initrd from my /boot directory to /mnt/boot
>> and created grub.cfg for grub:
>> and Added to the /mnt/boot/grub/grub.cfg following:
>>
>> menuentry "My custom Linux" {
>>         set root=(hd0,1)
>>         linux /boot/vmlinuz-3.18.0-rc4+ root=/dev/sda1
>>         initrd /boot/initrd.img-3.18.0-rc4+
>> }
>>
>> And reinstalled grub with previous command. Now i'm trying to run it
>> in qemu with:
>>
>> qemu-system-x86_64 disk.img
>>
>> I see grub menu, but after pressing on it only black screen without
>> any errors/logs and etc: http://tinypic.com/r/i2pugh/8
>>
>> Can't understand what's wrong here
>>
>> Thank you.
>>
>> 2014-11-29 14:35 GMT+06:00 Guoqing Liu <lgqgood@gmail.com>:
>>> Hi  Alexander
>>>   I think  you can try qemu, I think it's better.
>>>
>>> good luck.
>>>
>>> On Sat, Nov 29, 2014 at 2:41 PM, Alexander Kuleshov
>>> <kuleshovmail@gmail.com> wrote:
>>>> Hello all,
>>>>
>>>> How can i debug early kernel booting, even before early_printk
>>>> (x86_64). I'm interesting in part which starts to execute right after
>>>> bootloader (https://github.com/torvalds/linux/blob/master/arch/x86/boot/header.S#L297).
>>>> How to do it better? Write grub and vmlinuz to disk with
>>>> losetup/grub-install and connect with gdb, or there is something
>>>> another way to do it?
>>>>
>>>> Thank you.
>>>> --
>>>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>>>> the body of a message to majordomo@vger.kernel.org
>>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>> Please read the FAQ at http://www.linux-learn.org/faqs
>>>
>>>
>>>
>>> --
>>> good life
>>
>>
>>
>> --
>> _________________________
>> 0xAX
>
>
>
> --
> good life


and follow is my debug log:
################################################################
ingocn@apple:/opt/source/kernel/out$ gdb vmlinux
GNU gdb (Ubuntu 7.7-0ubuntu3.1) 7.7
Copyright (C) 2014 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from vmlinux...done.
(gdb) target remote localhost:1234
Remote debugging using localhost:1234
0x0000000000000000 in irq_stack_union ()
(gdb) l
1 /*
2 *  linux/arch/x86_64/kernel/head.S -- start in 32bit and switch to 64bit
3 *
4 *  Copyright (C) 2000 Andrea Arcangeli <andrea@suse.de> SuSE
5 *  Copyright (C) 2000 Pavel Machek <pavel@suse.cz>
6 *  Copyright (C) 2000 Karsten Keil <kkeil@suse.de>
7 *  Copyright (C) 2001,2002 Andi Kleen <ak@suse.de>
8 *  Copyright (C) 2005 Eric Biederman <ebiederm@xmission.com>
9 */
10
(gdb) l
11
12 #include <linux/linkage.h>
13 #include <linux/threads.h>
14 #include <linux/init.h>
15 #include <asm/segment.h>
16 #include <asm/pgtable.h>
17 #include <asm/page.h>
18 #include <asm/msr.h>
19 #include <asm/cache.h>
20 #include <asm/processor-flags.h>
(gdb) l
21 #include <asm/percpu.h>
22 #include <asm/nops.h>
23
24 #ifdef CONFIG_PARAVIRT
25 #include <asm/asm-offsets.h>
26 #include <asm/paravirt.h>
27 #define GET_CR2_INTO(reg) GET_CR2_INTO_RAX ; movq %rax, reg
28 #else
29 #define GET_CR2_INTO(reg) movq %cr2, reg
30 #define INTERRUPT_RETURN iretq
(gdb) l
31 #endif
32
33 /* we are not able to switch in one step to the final KERNEL ADDRESS SPACE
34 * because we need identity-mapped pages.
35 *
36 */
37
38 #define pud_index(x) (((x) >> PUD_SHIFT) & (PTRS_PER_PUD-1))
39
40 L4_PAGE_OFFSET = pgd_index(__PAGE_OFFSET)
(gdb) l
41 L3_PAGE_OFFSET = pud_index(__PAGE_OFFSET)
42 L4_START_KERNEL = pgd_index(__START_KERNEL_map)
43 L3_START_KERNEL = pud_index(__START_KERNEL_map)
44
45 .text
46 __HEAD
47 .code64
48 .globl startup_64
49 startup_64:
50 /*
(gdb) bt
#0  0x0000000000000000 in irq_stack_union ()
#1  0x0000000000000000 in ?? ()
(gdb) help
List of classes of commands:

aliases -- Aliases of other commands
breakpoints -- Making program stop at certain points
data -- Examining data
files -- Specifying and examining files
internals -- Maintenance commands
obscure -- Obscure features
running -- Running the program
stack -- Examining the stack
status -- Status inquiries
support -- Support facilities
tracepoints -- Tracing of program execution without stopping the program
user-defined -- User-defined commands

Type "help" followed by a class name for a list of commands in that class.
Type "help all" for the list of all commands.
Type "help" followed by command name for full documentation.
Type "apropos word" to search for commands related to "word".
Command name abbreviations are allowed if unambiguous.
(gdb) c
Continuing.
################################################################
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
