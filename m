From: James Miller <jamtat@mailsnare.net>
Subject: error message interpretation help?
Date: Mon, 2 Feb 2004 16:01:51 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402021543430.1541@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I recently made some kernel changes and was fiddling with lilo.conf on a
Debian Sid system.  Of course I had to run "lilo" to get the changes to
take effect.  When I did, I got an error message that I'm not quite sure
how to interpret.  I'd like to ask some input here on what it means and on
what I need to do to correct the problem.  Here's what I got when I ran
the command "lilo" from an xterm as root:

--------------------------------------------------------
[03:43:15]root@debian-sid root$ lilo
Warning: '/proc/partitions' does not match '/dev' directory structure.
    Name change: '/dev/ide/host0/bus1/target0/lun0/disc' -> '/dev/hdc'
Warning: /dev/hda is not on the first disk
Added Linux-2.4.24 *
Added Linux-2.2.20
---------------------------------------------------------

I should mention that I had some problems mounting the CD drive on this
machine initially.  To make the CD drive mountable/accessible, I changed
an fstab entry that pointed to the CD device.  Here's my current fstab:

-------------------------------------------------------------------
[03:43:28]root@debian-sid root$ cat /etc/fstab
# /etc/fstab: static file system information.
#
# <file system> <mount point>   <type>  <options>               <dump>
<pass>
/dev/hda1       /               ext2    errors=remount-ro       0       1
/dev/hdd2       none            swap    sw                      0       0
proc            /proc           proc    defaults                0       0
/dev/fd0        /floppy         auto    user,noauto             0       0
/dev/hdb        /cdrom          iso9660 ro,user,noauto          0       0
/dev/hdc1       /home   ext2    defaults                        0       2
/dev/hdd1       /usr    ext2    defaults
-----------------------------------------------------------------

I believe I changed the entry that now reads "/dev/hdb  /cdrom . . ."
from something that was more like "/dev/cdrom  /cdrom . . ."  Could that
be what's causing the inconsistency between /proc/partitions and the /dev
directory structure?  In general, I do not really understand the
/dev/cdrom as opposed to /dev/hdx entry in fstab.  I've seen it before,
but I really can't conjecture what's going on with it, and why a CD drive
wouldn't just be labelled the same way as an IDE disk.  In any case,
without changing the entry from /dev/cdrom to /dev/hdb, I was unable to
access the drive (unable to mount it when it had a CD in it).  Can someone
please help clarify for me 1) whether the /proc/partitions and /dev
directory structure inconsistency could be related to renaming the fstab
entry for the CD drive and 2) why CD drives get device names on some
(newer?) systems like /dev/cdrom instead of /dev/hdx?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
