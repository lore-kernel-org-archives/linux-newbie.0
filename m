From: Eric Bambach <eric@cisu.net>
Subject: Re: booting from USB drive (without BIOS support)
Date: Wed, 7 Jul 2004 22:34:44 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407072234.44993.eric@cisu.net>
References: <Pine.LNX.4.58.0407060808130.1337@debian-emach> <200407070023.52950.eric@cisu.net> <Pine.LNX.4.58.0407070850540.1337@debian-emach>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407070850540.1337@debian-emach>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

On Wednesday 07 July 2004 09:37 am, you wrote:
> Just for reference, here's the code for the patch:
>
> --- linux-2.4.14-pre8-ext3/fs/super.c.orig      Fri Nov 16 00:59:18 2001
> +++ linux-2.4.14-pre8-ext3/fs/super.c   Fri Nov 16 01:07:26 2001
> @@ -1009,11 +1009,13 @@
>                  * Allow the user to distinguish between failed open
>                  * and bad superblock on root device.
>                  */
> -               printk ("VFS: Cannot open root device \"%s\" or %s\n",
> +               printk ("VFS: Cannot open root device \"%s\" or %s,
> retrying in 1s.\n",
>                         root_device_name, kdevname (ROOT_DEV));
> -               printk ("Please append a correct \"root=\" boot
> option\n");
> -               panic("VFS: Unable to mount root fs on %s",
> -                       kdevname(ROOT_DEV));
> +
> +               /* wait 1 second and try again */
> +               current->state = TASK_INTERRUPTIBLE;
> +               schedule_timeout(HZ);
> +               goto retry;
>         }
>
>         check_disk_change(ROOT_DEV);
>
> I've found some information on the 'net about how to apply it as well.  I
> suppose it does not work on 2.6.x kernels.

Im no kernel hacker, but this is such a small easy change it would take only a 
small amount of time to adapt it to 2.6.x. But apply cleanly as is....no way.

Let me know if you want a patch for 2.6, I can give it a shot. Just have a 
fire extinguisher handy ;)
>......
> But it seems like the key point of failure for all of them
> is at the following line: "kmod: failed to exec /sbin/modprobe -s -k
> block-major-8, errno = 2".  I suppose the initrd would have an /sbin
> directory with the modprobe binary in it, so that's an additional function
> the initrd would perform.  I'm still trying to work out what module it's
> trying to load.

That usually indicates that it cant find the module for the filesystem on the 
root fs. Does the device actually have  a filesystem? If it doesnt then the 
kernel might be getting confused and trying to mount it as some strange 
partition type. Its trying to fall back to an initrd here before giving up 
entirely.If it has a partition, then you need the correct FS support compiled 
in. A common mistake is ppl use initrd but forget ext2 support, which most 
distros format their initrd as so this error message is a common question in 
support forums.

The other trick to making this work would be the bootloader. The bootloader 
needs to give the kernel a valid rootfs. So you need to find out what your 
disk will end up as....MOST likely sda1, (if its formatted and partitioned) 
and configure the bootloader accordingly. You can also play wiht the rootfs= 
kernel option such as
rootfs=/dev/sda1

> > Just make sure you understand the pitfalls of USB! The mapping of the
> > actual hard disk to a /dev entry is predictable, but not at all stable
> > depending on what other devices you might put into your system. And the
> > obligitory dont unplug the rootfs while its running ;)
>
> Yes, I do understand those pitfalls.  In this particular instance, running
> Linux from USB mass storage is attractive because the machine I'm thinking
> of doing this on has no real HD: it's one of those ThinkNIC, thin client
> thingies that's supposed to run its OS from CD/RAM.  The only "HD" is
> actually a little 4MB flash chip on an IDE connector where system settings
> are supposed to get saved.  As you might guess, the machine does have USB.
> I'm hoping to get a windowsy-looking distro installed on a USB drive so my
> wife can use it when she needs to access the 'net and such like.  I don't
> think I would ever plug any other USB device into it.

It was more of a joke, but cool to know what you;re doing. Sounds interesting.

Here is the DMESG from attaching my flash disk to my computer. If you can get 
the kernel to spit something similiar to this out you're 90% of the way 
there. Again, I think the only thing that was holding you back with the 
usb-enabled kernels was the lack of a filesystem on your disk or lack of 
support for it in the kernel.

scsi1 : SCSI emulation for USB Mass Storage devices
  Vendor: Generic   Model: STORAGE DEVICE    Rev: 1.25
  Type:   Direct-Access                      ANSI SCSI revision: 02
SCSI device sde: 512000 512-byte hdwr sectors (262 MB)
sde: assuming Write Enabled
sde: assuming drive cache: write through
 sde: sde1
Attached scsi removable disk sde at scsi1, channel 0, id 0, lun 0
Attached scsi generic sg4 at scsi1, channel 0, id 0, lun 0,  type 0
USB Mass Storage device found at 4
-- 

-EB
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
