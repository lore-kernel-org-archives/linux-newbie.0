From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: re-setting up LILO?
Date: Tue, 18 Jun 2002 21:43:36 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02061821433600.05133@unix.pa3gcu>
References: <3D0F9506.3000408@adelphia.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D0F9506.3000408@adelphia.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mark Johnson <rmjohnson@adelphia.net>, linux-newbie@vger.kernel.org

On Tuesday 18 June 2002 20:16, Mark Johnson wrote:
> Hello all,
>     I recently installed Windows XP and reformatted to NTFS.  I then
> Installed my partition magic and bootmagic, and boot magic wouldn't
> install to the ntfs partition.  well, my problem is that boot magic said
> to not use lilo in the mbr so I told lilo to boot from ext2 partition
> and bootmagic booted lilo from the partition.  now that I don't have
> bootmagic I have to boot from floppy as Lilo doesn't come up.  I read
> through the man pages and the help from "lilo --help" and I can't figure
> out how to get Lilo to boot from the MBR again?  does anyone know which
> option tells LILO to boot from the MBR instaed of the ext2 partition?

Simpel;
In /etc/lilo.conf
boot=/dev/hda

Or is you have a SCSI disk;
boot=/dev/sda

A typical config for dual boot would be;

boot=/dev/hda
map=/boot/map
install=/boot/boot.b
prompt
timeout=50
message=/boot/message
linear

image=/boot/vmlinuz-2.4.19-pre9
        label=2.4.19-pre9
        vga=normal
        read-only
        root=/dev/hdb6

other=/dev/hda1
        optional
        label=dos

Make sure your lilo config file is ok with;

/sbin/lilo -t
and/or if you like a lot of verbose messages;
/sbin/lilo -t -v -v

If no errors are returned by lilo -t then do;
/sbin/lilo to install lilo onto the MBR.

>
> Thanks
>     -=Mark=-

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
