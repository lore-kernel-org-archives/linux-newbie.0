From: James Miller <jamtat@mailsnare.net>
Subject: Re: booting from USB drive (without BIOS support)
Date: Sat, 17 Jul 2004 20:57:27 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407131124430.1337@debian-emach>
References: <Pine.LNX.4.58.0407060808130.1337@debian-emach>
 <200407070023.52950.eric@cisu.net> <Pine.LNX.4.58.0407070850540.1337@debian-emach>
 <200407072234.44993.eric@cisu.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200407072234.44993.eric@cisu.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Bambach <eric@cisu.net>
Cc: linux-newbie@vger.kernel.org

On Wed, 7 Jul 2004, Eric Bambach wrote:

> On Wednesday 07 July 2004 09:37 am, you wrote:
> > Just for reference, here's the code for the patch:
> >
> > --- linux-2.4.14-pre8-ext3/fs/super.c.orig      Fri Nov 16 00:59:18 2001
> > +++ linux-2.4.14-pre8-ext3/fs/super.c   Fri Nov 16 01:07:26 2001
> > @@ -1009,11 +1009,13 @@
> >                  * Allow the user to distinguish between failed open
> >                  * and bad superblock on root device.
> >                  */
> > -               printk ("VFS: Cannot open root device \"%s\" or %s\n",
> > +               printk ("VFS: Cannot open root device \"%s\" or %s,
> > retrying in 1s.\n",
> >                         root_device_name, kdevname (ROOT_DEV));
> > -               printk ("Please append a correct \"root=\" boot
> > option\n");
> > -               panic("VFS: Unable to mount root fs on %s",
> > -                       kdevname(ROOT_DEV));
> > +
> > +               /* wait 1 second and try again */
> > +               current->state = TASK_INTERRUPTIBLE;
> > +               schedule_timeout(HZ);
> > +               goto retry;
> >         }
> >
> >         check_disk_change(ROOT_DEV);
> >
> > I've found some information on the 'net about how to apply it as well.  I
> > suppose it does not work on 2.6.x kernels.
>
> Im no kernel hacker, but this is such a small easy change it would take only a
> small amount of time to adapt it to 2.6.x. But apply cleanly as is....no way.
>
> Let me know if you want a patch for 2.6, I can give it a shot. Just have a
> fire extinguisher handy ;)

Yes, that would be interesting.  At the moment, I'm considering older
kernels, since the root filesystem for this install has to be pretty small
(< 120MB).  The patch as is also doesn't work for the 2.2.26 kernel to
which I've tried applying it (results in a "rejected hunk" message).  I
think maybe this is because the line number specifications aren't right
for this kernel.  Just a guess though: I have little experience compiling
kernels and none in patching them.  If you (or anyone else onlist) could
offer tips for applying this patch to the 2.2.26 kernel, I'd be very
appreciative.

On a related, though more generic, note, I'm a bit confused by the patches
that accompany kernel source at www.kernel.org .  It seems that, for every
2.2.x kernel source file there, there is a corresponding 2.2.x-patch file.
What are these?  Is one supposed to download, along with the kernel one
wants, also a patch and immediately apply it?

As further follow up on this whole issue, I've discovered that the initrd
method of booting/running from USB is an entirely different option than
the kernel patch option.  If one sets up an initrd, one can use just a
stock kernel.  One simply introduces a delay for mounting the root
filesystem into the file linuxrc in the initrd.  So the FAQ item really
should say something like:

"There are basically 2 options for "booting" from USB: BIOS-supported and
non-BIOS-supported.  The first of these does involve actual booting Linux
- as well as running it - from the USB device.  The second uses other
media for the initial boot, but subsequently runs Linux from the USB
device.  Some key details follow.

If you want to really boot from a USB drive, you'll need a BIOS that
supports booting from USB devices.  Additionally, you'll need either: 1) a
kernel patched to delay loading of the root filesystem; or 2) a
non-patched kernel that boots using an initrd in which the file linuxrc
contains a delay argument (e.g., "sleep 4") for mounting the root
filesystem.  Either of the two will work if your BIOS supports booting
from USB devices and if you either compile needed USB and scsi modules
into your kernel or make them available to the kernel in your initrd.

A second option exists as well.  While this option does not really involve
"booting" from the USB device, the final result is virtually
indistinguishable from the BIOS-supported method described above.  In this
scenario, booting happens from some other medium (e.g., a floppy disk)
where the kernel and/or initrd is/are located.  The kernel is booted with
an argument pointing it to the root filesystem on the USB device.  Using
loadlin as an example, something like: loadlin vmlinuz initrd=initrd.gz
root=/dev/sda1.  So, though one has booted from some other medium, once
the kernel finds and mounts the root filesystem on the USB device, Linux
runs from it in essentially the same way it would have had the USB device
been booted to from the system's BIOS.  In this scenario, either the
patched kernel mentioned above or the normal kernel with initrd are also
required - just as in the BIOS-supported option.

In all cases (BIOS-supported and non-BIOS-supported), the delay is
required either by means of a kernel patch, or by means of a "sleep"
argument in the requisite initrd file owing to the extra time it takes for
the kernel to load modules for and initialize the USB device.  Once the
kernel has been delayed for the needed interval, it finds and mounts the
root filesystem, running from it just as it would any more typical
mass-storage device (e.g., an IDE drive)."

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
