From: James Miller <jamtat@mailsnare.net>
Subject: booting from USB drive (without BIOS support)
Date: Tue, 6 Jul 2004 08:37:51 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407060808130.1337@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've been recently investigating booting Linux from USB drives.  From past
experience, this list is not the ideal place to pose USB related
questions, but I think at this stage my questions concern such fundamental
issues that I can pose some here just asking that others more
knowledgeable about Linux and computer operation offer corrections or
clarification of my understanding of what's involved.  Let me start by
pasting here an item on booting Linux from USB from the FAQ at
http://www.linux-usb.org/ :

"Q: Is it possible to boot off a USB Device?

A:There are (at least) three things you need for this to be able to
happen.

   1. BIOS Support to boot from USB
   2. Kernel support for USB Storage (including SCSI)
   3. A patch to delay boot process

The first of these is something outside your control, either your BIOS
supports it or not. However, you could put your kernel and initrd on a
floppy and then use a USB root file system to get around this.

In your boot kernel or initial RAM disk you need to include support for
all the needed items to support using a USB disk. These are documented in
the Linux USB User Guide.

You also need to patch this kernel to delay when it tries to open the root
file system, as the USB subsystem takes longer than is allowed to
initialise and make the device available to the kernel. You'll find a
patch suitable for 2.2 and 2.4 here (although the 2.4 patch could be put
in init/do_mounts.c:mount_block_root() instead of fs/super.c which would
be cleaner). A patch may be added to kernels later than 2.4.20 (latest
current released version as I type this) to remove the need for this
patch, but this hasn't happened yet." (hyperlinks removed in pasting)

First, the "three things . . . need(ed)" are not really all needed.  From
the explanation following the list, I understand that if you don't have
number 1, you might still be able to boot from USB with the aid of 2 and
3.  Am I correct in that understanding?  Doesn't the explanation seem to
imply this?

If so, then some further questions on that.  I can't understand from the
description whether the initrd is really necessary.  I think I understand
about the kernel patch: the kernel is written to give some error or
failure message if the root filesystem cannot be found within a certain
timeframe.  The time it takes for USB handling components to load or
initialize and for scsi emulation to start exceeds that built-in time
limit.  The patch causes the kernel to wait some longer period of time
before giving the error or failure message regarding the root filesystem.
Do I understand that part correctly?  If so, then the one remaining
unclarity concerns the initrd.  I know vaguely what an initrd is, and why
it could be helpful in booting from USB: it is some initial filesystem and
files that can be loaded into a ramdisk on bootup and that contains things
like loadable kernel modules that the kernel could use to get USB going.
Is that right?  In other words, there would be some USB module like
usb-storage there, so when the kernel began loading and found a USB mass
storage device, it could load the module in order to be able to use it.
Does this sound correct?  Assuming it is, I would just further like to ask
whether, given the right circumstances, the initrd is really necessary?
By "right circumstances" I mean the following: suppose I were to compile a
kernel for a particular system that I wanted to boot from USB, and that I
compiled it with all the necessary USB components (e.g., ohci,
usb-storage, usbcore - and whatever else might be relevant) *not* as
loadable modules, but as part of the kernel (i.e., select "y" instead of
"m" for those items in the kernel config).  Suppose I did that, as well as
applying the time-delay patch to the kernel.  Were I to do that, would I
really still need to have an initrd?  Feedback appreciated.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
