From: Ray Olszewski <ray@comarre.com>
Subject: Re: LI -lilo booting problem
Date: Sun, 28 Jul 2002 14:15:31 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020728140342.0228b3c0@celine>
References: <3D36DDA3.FA0F073C@gmx.net>
 <02072506225706.04469@unix.pa3gcu>
 <3D406BBB.E208E07B@gelm.net>
 <02072606105100.00370@unix.pa3gcu>
 <5.1.0.14.1.20020726164536.02296360@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D444FC2.354744E5@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

Chuck -- I assume your sending this to me personally was just a typo, so 
Iave added the list back into my reply.

At 04:10 PM 7/28/02 -0400, Chuck Gelm wrote:
>Hi, Ray et allia:
>
>  I tried /dev/hda1 = /boot.

I trust this is just a typo in the e-mail, since it is neither correct LILO 
usage nor anything I suggested. But I can't gues what it is a typo *for*.

>The result was the same as before; LI
>I've just been wondering about drive geometry, as you mention.
>I 'dmesg|grep hd' and found that it had 16,### cylinders.

Yes. As I said some messages back, big hard disks lie about their 
geometries in ways that I do not fully understand, but that can cause their 
CHS settings to look diferent to the BIOS than to Linux. You seem to have 
found that this is true of the disk you were working with (Linux fdisk will 
proably tell you that this same drive has 1048 cylinders).

>I did some math and decided that '/' needed to be no larger
>than the old 528 MB, 1024 cylinders * 16 heads * 63 sectors
>* 512 bytes = 528,482,304.
>
>  So, I've just re-fdisk'ed /dev/hda
>(the 8.6 gigabyte drive) to
>part    boot    device  start   stop    size    mount
>1       *       /hda1   1       64      528M    /
>2               /hda2   65      96      257M    swap
>3               /hda3   96      1048    7.9G    /usr

You may find it inconvenient to have this small a root (/) partition on 
your system. I know I would, This is why I suggested earlier making hda1 
even smaller and mounting it as /boot, then having a later hda* partition 
be your system root.

>Ray Olszewski wrote:
> >
> > Chuck -- You are trying to write the bootloader itself to a partition, You
> > should at least try writing it to the Master Boot Record to see if that
> > fixes your problem. To do that, you change the line that reads
> >
> >          boot = /dev/hda1
> >
> > to read
> >
> >          boot = /dev/hda
> >
> > Second, you are not *explicitly* putting the kernel image in /boot . You
> > are pointing to it with this line:
> >
> >          image = /vmlinuz
> >
> > Now this is *probably* OK; typically, /vmlinux is a symlink to
> > /boot/linux_something_or_other (the exact name used for the real kernel
> > image can vary a lot, and I don't recall Slackware's practice here). But
> > you might double check it. ALso double check that /boot/boot.b (the
> > second-stage bootloader) is present.
>
>On my new install
>/vmlinuz
>resides in / and there are no links in /.
>Boot.b is a link, but it resides in /boot
>and it links to a file, boot-menu.b, which also resides
>in /boot. :-|
>
>  I gotta go. Many thanks.
>#lilo -V
>21.7-5.
>
>Regards, Chuck

[old stuff deleted]



--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
