From: James Miller <jamtat@mailsnare.net>
Subject: Re: booting from USB drive (without BIOS support)
Date: Wed, 7 Jul 2004 09:37:05 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407070850540.1337@debian-emach>
References: <Pine.LNX.4.58.0407060808130.1337@debian-emach>
 <200407070023.52950.eric@cisu.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200407070023.52950.eric@cisu.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Thanks for your feedback, Eric.  I was hoping someone would jump in on
this, since I have limited time (and ability!) for puzzling these things
out on my own.

On Wed, 7 Jul 2004, Eric Bambach wrote:

> On Tuesday 06 July 2004 08:37 am, you wrote:
> > limit.  The patch causes the kernel to wait some longer period of time
> > before giving the error or failure message regarding the root filesystem.
> > Do I understand that part correctly?
>
> Yes. Thats correct. I know nothing about the patch, but your description
> sounds accurate. The patch is needed to let the USB subsystem initialize the
> disk. Something akin to sleep(10) or some number, before trying to move into
> the root fs. My SCSI disks have the same issue as your USB disk would have.
> It takes several seconds before the kernel detects and initializes all the
> disks on the controller. The difference between this and your USB system is
> that the kernel will wait until intializing the SCSI bus is complete before
> moving on. You need a patch to accomplish the same thing.

Just for reference, here's the code for the patch:

--- linux-2.4.14-pre8-ext3/fs/super.c.orig      Fri Nov 16 00:59:18 2001
+++ linux-2.4.14-pre8-ext3/fs/super.c   Fri Nov 16 01:07:26 2001
@@ -1009,11 +1009,13 @@
                 * Allow the user to distinguish between failed open
                 * and bad superblock on root device.
                 */
-               printk ("VFS: Cannot open root device \"%s\" or %s\n",
+               printk ("VFS: Cannot open root device \"%s\" or %s,
retrying in 1s.\n",
                        root_device_name, kdevname (ROOT_DEV));
-               printk ("Please append a correct \"root=\" boot
option\n");
-               panic("VFS: Unable to mount root fs on %s",
-                       kdevname(ROOT_DEV));
+
+               /* wait 1 second and try again */
+               current->state = TASK_INTERRUPTIBLE;
+               schedule_timeout(HZ);
+               goto retry;
        }

        check_disk_change(ROOT_DEV);

I've found some information on the 'net about how to apply it as well.  I
suppose it does not work on 2.6.x kernels.

> Initrd should only be needed if you compile support for your usb
> disk/controller as a module. If you can just compile it in, then initrd isnt
> needed.
>
> Initrd has one purpose, helping the kernel get the rootfs. Really the biggest
> thing it does is modules...I know of no other use, other than POSSIBLY aiding
> network booting, which you are not doing.

This has been my common-sense deduction as well. Yet virtually
*everything* I've read on the web about this talks about using an initrd.
They don't say why, of course, or talk about the relative merits of one
method over the other.  If it's possible, I would certainly prefer
compiling in the modules I need (though that could involve alot of time
for experimentation and some guesswork) over using an initrd.  What I'm
trying to do at the moment is just understand whether I should even invest
the time and effort in compiling a kernel in case - for whatever reason -
that solution to running Linux from USB storage media might not be
feasible.  But it's beginning to look like it is feasible.

> Again, no you wouldn't need an initrd. Just configure /dev/sd(x) as the root,
> as USB hard drives are given a SCSI device name like that. Once you give the
> USB system enough time to initialize the disks, /dev/sd(x) will be available
> and read/writeable like any other hard disk.

As a way of testing out how this works, I've been trying to boot various
kernels - some of which are supposed to be built for running from USB
media - and directing them to the USB disk, realizing that, since there's
no Linux system installed there, they will panic at some point.  None of
these kernels have thus far "found" /dev/sdax.   Looking at the final
output before the panic, I see that at least one of them is initializing
the USB stuff.  But it seems like the key point of failure for all of them
is at the following line: "kmod: failed to exec /sbin/modprobe -s -k
block-major-8, errno = 2".  I suppose the initrd would have an /sbin
directory with the modprobe binary in it, so that's an additional function
the initrd would perform.  I'm still trying to work out what module it's
trying to load.

> Just make sure you understand the pitfalls of USB! The mapping of the actual
> hard disk to a /dev entry is predictable, but not at all stable depending on
> what other devices you might put into your system. And the obligitory dont
> unplug the rootfs while its running ;)

Yes, I do understand those pitfalls.  In this particular instance, running
Linux from USB mass storage is attractive because the machine I'm thinking
of doing this on has no real HD: it's one of those ThinkNIC, thin client
thingies that's supposed to run its OS from CD/RAM.  The only "HD" is
actually a little 4MB flash chip on an IDE connector where system settings
are supposed to get saved.  As you might guess, the machine does have USB.
I'm hoping to get a windowsy-looking distro installed on a USB drive so my
wife can use it when she needs to access the 'net and such like.  I don't
think I would ever plug any other USB device into it.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
