From: whitnl73@juno.com
Subject: Re: mandrake installation
Date: Sun, 9 Mar 2003 10:34:29 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030309.104108.8.0.whitnl73@juno.com>
References: <5.1.1.6.0.20030308080205.00a73ac8@mail.dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20030308080205.00a73ac8@mail.dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: dave@dpomeroy.com
Cc: linux-newbie@vger.kernel.org

On Sat, 8 Mar 2003, Dave Pomeroy wrote:

> My old scsi cdrom will not boot.  I'm installing from my windows hard
> drive.  I've made a boot floppy and all goes as it should when I boot, it
> asks me for the location of the files and I tell it the path to my windows
> drive where the files for disk 1 are stored.  It never asks where disk 2 is
> stored and when it needs the files off that it can't find them. I guess I'm
> asking where do you put the "RPMS2" and "RPMS3" packages so the install
> program can find them?  Thanks for all your help.
>
>
> Dave Pomeroy K7DNP South East Washington

Bear in mind that I don't use _any_ distro installer, so I may be all
wet.  By the time you have installed all you want from RPMS, you should
have installed a kernel, a libc, a bootloader, a filesystem, the basic
system utilities such as mount, mkdir, tar, cpio, gzip, bzip2,...and the
rpm binary.

just boot your new system, (make [some] convenient mount point[s]),
mount RPMS2,... and use rpm to install what you like, disk space
permitting.

man rpm is long, but it's not all that bad to read.

Lawson

 --
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
