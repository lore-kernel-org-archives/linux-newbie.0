From: Guoqing Liu <lgqgood@gmail.com>
Subject: Re: Early boot debigging
Date: Sun, 30 Nov 2014 01:07:35 +0800
Message-ID: <CAMLw+SHd6SfsLfnacARpnoK2EgkQ_A5r+VH+7J0LTRUQ0QR4ig@mail.gmail.com>
References: <CANCZXo7R046PsjGS3HSE3XvHcJtmzbySfWpULhkvQ2f6FJPt9w@mail.gmail.com>
	<CAMLw+SH6owptQOMjbd35Jr2w36PB-T3ZFj8kz=ra72=9V6fyeg@mail.gmail.com>
	<CANCZXo63rTNT9L+LZUvYaUT25Hoq=aowRSbv5rK-jqZsfit+kw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2mXBZ1WFqj7xCrN8XdBr8217eK2kGCRCrbc/gWF4WAE=;
        b=CPDI3Sci9tYFBnFu5Y2ChLD2IaP0NWFi5HwimqJw5Y9KRJnd4CavvqjhBVu9YYX4k0
         gjQscqTwyi1hrEH10J68NipweuhXwAQMLkxnqOvTSehxp5tAVTOGdvMh/FV/0n7Zjwyx
         WqerZN1iIK+XVfjjt4isQXEtIuWJNJCr3xzMOzTt6xlLXPyTw+uOCcZ1ttMU5tV5d65i
         ImJ/DrTRR93AVn6h8SHROb6DlWTrTs3+oUm/H4tLIu1g5tIDY0yT6/fJM8CINPENUbjG
         JddFqzImukBzlg1mst6kTsVN+WxMDRiyxdOvqr+1aCZi5G8Dvf4U/iS+QE7yGXxXL7MT
         xzXA==
In-Reply-To: <CANCZXo63rTNT9L+LZUvYaUT25Hoq=aowRSbv5rK-jqZsfit+kw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Kuleshov <kuleshovmail@gmail.com>
Cc: linux-newbie@vger.kernel.org

HI  Alexander
  I also meet some problem when using my system efi grub.
  I think if you just care about the kernel start process, you can
skip the grub.
  you can use follow cmd to emulate the kernel
  "qemu-system-x86_64 -kernel arch/x86_64/boot/bzImage -hda
linux-0.2.img -append root=/dev/sda"
  I do't know whether can solve your problem.

good luck.

Guoqing

On Sat, Nov 29, 2014 at 7:26 PM, Alexander Kuleshov
<kuleshovmail@gmail.com> wrote:
> Hello, thank you for reply,
>
> yes, previously my plan was grub2 + vmlinuz/initrd + qemu.
>
> I built disk with following instructions:
>
> dd if=/dev/zero of=disk.img count=163840 bs=4096
> fdisk fdisk (created one partition)
> sudo losetup /dev/loop0 disk.img
> sudo losetup /dev/loop1 disk.img -o 1048576
> sudo mke2fs /dev/loop1
> sudo mount /dev/loop1 /mnt
> sudo grub-install --root-directory=/mnt --no-floppy --modules="normal
> part_msdos ext2" /dev/loop0
>
> Than i copied vmlinuz and initrd from my /boot directory to /mnt/boot
> and created grub.cfg for grub:
> and Added to the /mnt/boot/grub/grub.cfg following:
>
> menuentry "My custom Linux" {
>         set root=(hd0,1)
>         linux /boot/vmlinuz-3.18.0-rc4+ root=/dev/sda1
>         initrd /boot/initrd.img-3.18.0-rc4+
> }
>
> And reinstalled grub with previous command. Now i'm trying to run it
> in qemu with:
>
> qemu-system-x86_64 disk.img
>
> I see grub menu, but after pressing on it only black screen without
> any errors/logs and etc: http://tinypic.com/r/i2pugh/8
>
> Can't understand what's wrong here
>
> Thank you.
>
> 2014-11-29 14:35 GMT+06:00 Guoqing Liu <lgqgood@gmail.com>:
>> Hi  Alexander
>>   I think  you can try qemu, I think it's better.
>>
>> good luck.
>>
>> On Sat, Nov 29, 2014 at 2:41 PM, Alexander Kuleshov
>> <kuleshovmail@gmail.com> wrote:
>>> Hello all,
>>>
>>> How can i debug early kernel booting, even before early_printk
>>> (x86_64). I'm interesting in part which starts to execute right after
>>> bootloader (https://github.com/torvalds/linux/blob/master/arch/x86/boot/header.S#L297).
>>> How to do it better? Write grub and vmlinuz to disk with
>>> losetup/grub-install and connect with gdb, or there is something
>>> another way to do it?
>>>
>>> Thank you.
>>> --
>>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>>> the body of a message to majordomo@vger.kernel.org
>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>> Please read the FAQ at http://www.linux-learn.org/faqs
>>
>>
>>
>> --
>> good life
>
>
>
> --
> _________________________
> 0xAX



-- 
good life
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
