From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: LI -lilo booting problem
Date: Fri, 26 Jul 2002 06:10:51 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02072606105100.00370@unix.pa3gcu>
References: <3D36DDA3.FA0F073C@gmx.net> <02072506225706.04469@unix.pa3gcu> <3D406BBB.E208E07B@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D406BBB.E208E07B@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

On Thursday 25 July 2002 21:20, Chuck Gelm wrote:
> Howdy, Y'all:
>
>  Where can I find help with 'lilo'.

/usr/doc/lilo-21.7.5 (slackware-8.0)

> When I try to boot from hard disk, I get:
>
> LI

From the README of lilo

   LI   The first stage boot loader was able to load the second stage boot
    loader, but has failed to execute it. This can either be caused by a
    geometry mismatch or by moving /boot/boot.b without running the map
    installer.

>
>  This happens with several hard disks, usually large ones of
> 8 gigabytes or larger. The drives are partitioned with
>  partition 1 <= 1024 cylinders,
>  partition 2 is some swap, and
>  partition 3 is 'the rest'.
> Partition 1 is '/' and contains the entire distribution
> install (Slackware v8.0).
>
>  I've read some help files and it mentions drive geometry
> problems and the 1024 cylinder limit.  I usually keep
> trying different hard drives until I get one that will
> boot and then I make it /dev/hda.

I cant remember if the following concerns lilo-21.7.5 however
lilo does not have that > 1023 cyls limit anymore.

>
> The system boots fine from CD-ROM (Slackware8.0 Install)
> or pre-install boot disk or post-install created lilo floppy.

Then use the cdrom to boot mount /dev/hda1 somewhere, possably /mnt
You will need to link /mnt/etc/lilo.conf to /etc 
ln -s /mnt/etc/lilo.conf /etc/lilo.conf

Make sure /mnt/etc/lilo.conf is correct and the image is in the correct place
then execute lilo with the -t(est) option, if all is ok then excute without 
options.


>
> :-|
>
> Regards, Chuck

> Please read the FAQ at http://www.linux-learn.org/faqs

I belive this one is in the above FAQ.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
