From: Haines Brown <brownh@hartford-hwp.com>
Subject: boot floppy (mkbootdisk)
Date: Sun, 11 Aug 2002 10:04:09 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208111404.g7BE49u19713@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I had a nice bootable floppy that was self-contained (held a kernel),
but I inadvertantly overwrote it and need to create another. 

I used mkbootdisk <kernelVersion>, and it works in the sense that it
holds a kernel that boots my machine and loads my operating system
from hd.

However, I want to have it load a shell from which I can
run various utilities I have placed on another diskette, such as
fdisk. However, the diskette created by mkbootdisk instead
automatically goes directly to the root partition on my hard disk and
loads the operating system there. If I try to boot a Windows machine
with it, for example, it just loops back to BIOS and starts again.

The mkbootdisk floppy holds four files, one of which is
syslinux.cfg. It is a loader:

  default linux
  prompt 1
  display boot.msg
  timeout 100
  label linux
	kernel vmlinuz
	append initrd=initrd.img root=/dev/sda6

Is there any way to can change this so that instead of going to
/dev/sda6 (root) it instead loads a shell (presumably located on
the same diskette and thus less than 600 Kb)? My bash file would just
fit, but can it run independently?

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
