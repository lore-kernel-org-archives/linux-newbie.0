From: beolach@comcast.net
Subject: Re: error message interpretation help?
Date: Tue, 03 Feb 2004 08:56:51 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <020320040856.27329.7c84@comcast.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: jamtat@mailsnare.net
Cc: linux-newbie@vger.kernel.org

> 1) whether the /proc/partitions and /dev directory structure inconsistency
> could be related to renaming the fstab entry for the CD drive

Not directly.  Both could possibly be caused by devfs, which is what is almost
definetly causing the /proc/partition & /dev inconsistency, and might be the
reason you needed to rewrite the cdrom entry in fstab.  Both issues could be
caused by the changes in the naming scheme from non-devfs to devfs.

The /proc/partitions file major and minor numbers & the number of blocks for
each partition on your computer.  The /dev directory should contain a special
device file for each partition with the same name as that in /proc/partitions.
The partition names in /proc/partition will be based on either the older
non-devfs naming scheme, which would be something like:

hda
hda1
hda2
hda3

or the new devfs naming scheme, which would be like:

ide/host0/bus0/target0/lun0/disc
ide/host0/bus0/target0/lun0/part1
ide/host0/bus0/target0/lun0/part2
ide/host0/bus0/target0/lun0/part3

The warning you are getting about the /proc/partition & /dev inconsistency
could be caused by devfs being compiled into the kernel (which would cause
/proc/partitions to use the devfs naming scheme), and either devfs being
mounted somewhere other than /dev, or devfs not being mounted at all (which
would cause the /dev directory NOT to use the devfs naming scheme). Because
in your second email you mention that /dev/cdrom links to /dev/cdrom0 which
in turn links to /dev/hdb, I'm guessing devfs is not mounted at all - devfs
will never make symlinks to symlinks, and also uses the naming scheme above.
Devfs not being mounted would be caused by the kernel being compiled with
CONFIG_DEVFS_FS=y, but CONFIG_DEVFS_MOUNT=n.  You can fix this by either
recompiling the kernel with CONFIG_DEVFS_MOUNT=y or by passing devfs=mount
to the boot prompt, or by running "mount -t devfs none /dev".  As soon as
you do get devfs mounted on /dev, you won't get that error when you run lilo.

> 2) why CD drives get device names on some (newer?) systems like /dev/cdrom
> instead of /dev/hdx?

The /dev/cdrom file is simply for readability and for consistancy across
different machines.  On any given machine the cdrom could be any of the IDE
devices (/dev/hdX), so a program that needed to access the cdrom would look
first for /dev/cdrom, because there's really no way for a user-space program
to guess which IDE device was the cdrom.  The /dev/cdrom file is most likely
just going to be a symlink to whichever IDE device the cdrom happens to be in
your system.  Which of the IDE devices /dev/cdrom points to could be set in a
couple of ways, either by your distros setup or by devfs if you or your
distro uses it.  In your second email, you said

> /dev/cdrom is a symlink pointing at /dev/cdrom0.
> /dev/cdrom0 is, in turn, a symlink pointing at /dev/hdb (which is the
> device I manually entered into fstab to get it mountable).
> ... I still can't see why a symlink should be needed for a CD drive, much
> less a symlink to a symlink: is this for the benefit of the user, the OS
> creator/compiler, the computer itself?

First off, as I went over with your warning about /proc/partitions not
matching /dev, you probably want to mount devfs on /dev.  When you do devfs
will take care of all of the device files, and will make it so you will never
have more than one layer of symlinks (although AFIK that shouldn't hurt
anything).  The symlinks you have now were probably put in for the reasons
above: readability and compatibility betweeen different machines.  When you mount devfs, it start using a different naming scheme that will make a *lot*
of symlinks, for the same reasons that you have the symlinks you have now: readability and consistency betweeen different machines, and also for
compatibility with older (non-devfs) different naming scheme.  Right now you
said you have:

/dev/hdb
/dev/cdrom0 -> /dev/hdb
/dev/cdrom -> /dev/cdrom0

Once you start using using devfs it should change to something like:

/dev/ide/host0/bus0/target1/lun0/cd
/dev/cdrom -> /dev/ide/host0/bus0/target1/lun0/cd
/dev/hdb -> /dev/ide/host0/bus0/target1/lun0/cd
/dev/cdroms/cdrom0 -> /dev/ide/host0/bus0/target1/lun0/cd

Notice that devfs will never make more than one layer symlinks (no symlink
to symlink to device file, only symlinks to device file).  However there
should be no problem with using multiple symlink layers.  I would suspect
that your problem with your fstab entry for the cdrom was caused by either
a broken symlink or a symlink to the wrong device file.  The only danger in
having multiple layers in symlinks is that it increases the likelyhood of
having one of the links broken or incorrect.

Mounting devfs should solve both the lilo warning & will also automagically
handle any & all symlinks in /dev.  If you want more info on devfs see the
documentation in /usr/src/linux/Documentaion/filesystems/devfs or online at
<http://www.atnf.csiro.au/people/rgooch/linux/docs/devfs.html>  Note: the
online FAQ is outof date for the latest 2.4 & 2.6 kernels.  Depending on
which kernel version you use, devfs may or may not take over devpts.  It did
for a while after it was first introduced, but in latter versions it was  Your
fstab file doesn't have an entry for devpts, so most likly you'll be just
fine mounting devfs.  But if after mounting devfs you have problems with
/dev/pts/*, try mounting devpts seperatly.

Well, that's my second novel for tonight.  It's a sequel to my first, which
was to someone's general questions on devfs.  Again, hope you enjoy,

Conway S. Smith
> I recently made some kernel changes and was fiddling with lilo.conf on a
> Debian Sid system.  Of course I had to run "lilo" to get the changes to
> take effect.  When I did, I got an error message that I'm not quite sure
> how to interpret.  I'd like to ask some input here on what it means and on
> what I need to do to correct the problem.  Here's what I got when I ran
> the command "lilo" from an xterm as root:
> 
> --------------------------------------------------------
> [03:43:15]root@debian-sid root$ lilo
> Warning: '/proc/partitions' does not match '/dev' directory structure.
>     Name change: '/dev/ide/host0/bus1/target0/lun0/disc' -> '/dev/hdc'
> Warning: /dev/hda is not on the first disk
> Added Linux-2.4.24 *
> Added Linux-2.2.20
> ---------------------------------------------------------
> 
> I should mention that I had some problems mounting the CD drive on this
> machine initially.  To make the CD drive mountable/accessible, I changed
> an fstab entry that pointed to the CD device.  Here's my current fstab:
> 
> -------------------------------------------------------------------
> [03:43:28]root@debian-sid root$ cat /etc/fstab
> # /etc/fstab: static file system information.
> #
> # <file system> <mount point>   <type>  <options>               <dump>
> <pass>
> /dev/hda1       /               ext2    errors=remount-ro       0       1
> /dev/hdd2       none            swap    sw                      0       0
> proc            /proc           proc    defaults                0       0
> /dev/fd0        /floppy         auto    user,noauto             0       0
> /dev/hdb        /cdrom          iso9660 ro,user,noauto          0       0
> /dev/hdc1       /home   ext2    defaults                        0       2
> /dev/hdd1       /usr    ext2    defaults
> -----------------------------------------------------------------
> 
> I believe I changed the entry that now reads "/dev/hdb  /cdrom . . ."
> from something that was more like "/dev/cdrom  /cdrom . . ."  Could that
> be what's causing the inconsistency between /proc/partitions and the /dev
> directory structure?  In general, I do not really understand the
> /dev/cdrom as opposed to /dev/hdx entry in fstab.  I've seen it before,
> but I really can't conjecture what's going on with it, and why a CD drive
> wouldn't just be labelled the same way as an IDE disk.  In any case,
> without changing the entry from /dev/cdrom to /dev/hdb, I was unable to
> access the drive (unable to mount it when it had a CD in it).  Can someone
> please help clarify for me 1) whether the /proc/partitions and /dev
> directory structure inconsistency could be related to renaming the fstab
> entry for the CD drive and 2) why CD drives get device names on some
> (newer?) systems like /dev/cdrom instead of /dev/hdx?
> 
> Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
