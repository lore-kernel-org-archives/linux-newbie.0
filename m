From: Sonal Bhushan <sonal.bhushan@Colorado.EDU>
Subject: problems with putting an rtlinux kernel on a 686 on a PC104 board
Date: Tue, 3 Dec 2002 16:42:48 -0700 (MST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.GSO.4.40.0212031641350.21291-100000@ucsu.colorado.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


hi,

I'm trying to install a linux kernel on a 686 on a PC 104 board (it is
intended to fly on a UAV). it has a 33MB Flash Disk (which is the only
hard disk on the computer). i compile the kernel on a host machine (which
has red hat 7.3 , with rt linux on top of it), and then make a bzdisk. so
far so good. when i try to boot the pc104 machine with the floppy though,
it comes up with the following error:

hda3: bad access: block=2, count=2
end_request: I/O error, dev 03:03 (hda), sector 2
EXT3-fs: unable to read superblock
hda3: bad access: block=2, count=2
end_request: I/O error, dev 03:03 (hda), sector 2
EXT3-fs: unable to read superblock
hda3: bad access: block=64, count=2
end_request: I/O error, dev 03:03 (hda), sector 64
EXT3-fs: unable to read superblock
isofs_read_super: bread failed, dev=03:03, iso_blknum=16, block=32
Kernel panic: VFS: Unable to mount root fs on 03:03


I tried looking up this error on mailing list archives, and it seems a
possible solution is to try passing "ide=reverse" as a kernel option. i'm
not sure when to do that though, because the pc104 is booting directly
from the bzdisk, and does not give me a chance to enter any command line
options.

i'm a newbie when it comes to compiling kernels, so any help would be
appreciated!

thanks,
sonal

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
