From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: boot floppy
Date: Sun, 11 Aug 2002 22:08:10 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208120208.g7C28AH23608@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Ray,

Thanks, but no progress yet. I used dd to copy to an unmounted
ext2-formatted floppy the files created by mkbootdisk: boot.msg,
initrd.msg, ldlinux.sys, syslinux.cfg, and vmlinuz. I also copied lsh
(Little Shell, which I can run and get a "C" type prompt). The
syslinux.cfg files was edited as follows:

label linux
	kernel vmlinuz
	append initrd=initrd.img root=/dev/fd0 init=/lsh

I stuck the diskette into a (SCSI) Windows machine, and after the
machine's SCCI BIOS loaded, the diskette is accessed and I get:

Loading.......................................................
Unpacking. Loading kernel

Hoever, instead of starting lsh, it simply resets the machine and I'm
in a boot loop.

Since runing ./lsh does lead to a prompt, I assume that binary is
workable. Therefore, something may be wrong with the script
above. I don't understand init, but why the forward slash in
init=/lsh? 

Haines Brown 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
