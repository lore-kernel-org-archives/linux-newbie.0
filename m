From: Ray Olszewski <ray@comarre.com>
Subject: re: lilo questions.......
Date: Sat, 23 Nov 2002 12:37:35 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021123121608.020bd400@celine>
References: <3B60FCE9.0E186F1F.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3B60FCE9.0E186F1F.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:03 PM 11/23/02 -0500, neil t wrote:
[...]
>Is there a standard format for adding other linux distro's to 
>/etc/lilo.conf?

The concept of a "distro" is meaningless to lilo (either the Linux app or 
the bootloader itself). lilo knows about kernels, boot devices, root 
filesystems, and a few other things. In practice, a kernel selection is 
enough to distinguish a distribution, usually.

A basic lilo block includes these lines --

         image=/vmlinuz
         root=/dev/hda2
                 label=Linux-2.2.18
                 read-only

The image= line tells lilo where to find the kernel that will boot. The 
location is specified relative to the root filesystem that is running, and 
lilo will pass it to the bootloader as a physical location on a physical 
hard disk. Putting kernels in a /boot partition (which can be a separate 
filesystem) is a custom, nothing more, albeit a well-established custom. 
Newer versions of lilo can boot kernels from any device the BIOS can see, 
not just from the primary IDE (or corresponding SCSI) device. But in any 
given /etc/lilo.conf, ALL kernel images need to be referenced relative to 
the root filesystem that is currently running.

This is one of the reasons why the /boot directory, done as a separate 
filesystem, becaome customary. (The other was to deal with the 
1024-cylinder problem, not only of historical interest.) If you made a smal 
partition on hda, then mounted it as /boot on EVERY distro, plus exercised 
a bit of care about kernel names, you could keep the kernels for all the 
distros you wanted to boot in the same place, simplifying updates.

The root= line tells lilo what the root (/) filesystem is for that distro. 
The usual practice in my experience is to name them following /dev 
directory entries; I am unfamiliar with the approach the other writer suggests.

The label= line tells lilo what to call in in the choices for booting 
(which appear in the "lilo gui" or on the command line if you press the 
appropriate key, I think SHIFT, before the lilo bootloader starts to boot).

The read-only line is a parameter that tells the kernel first to mount 
filesystems read-only. This allows for initial fsck of them. It is optional 
but a good idea.

Also somewhere in lilo.conf will be a boot= line, typically boot=/dev/hda . 
This line tells lilo where to install the bootloader.

In closing, please let me warn you to watch out for small errors of detail 
in what I've written here. I'm writing mostly from memory .. I don't have a 
multi-distro setup here to consult ... and my memory is not what it once was.

>One of replies to my question explains it this way:
>
>"It does not really make any differance which system installed lilo, the
>secret is mounting all your disks/partitions where "lilo" can reach them 
>all in one go, you can define any partition "in use or not" as long as it 
>is mounted.
>
>An example;
>dos = hda1
>redhat = hda5
>mandrake = hdc1
>slackware = hdd1
>
>You boot with mandrake, you then create some extra dirs'
>
>mkdir /hda5
>mkdir /hdc1
>mkdir /hdd1
>
>mount -t ext2 /dev/hda5 /hda5
>mount -t ext2 /dev/hdd1 /hdd1
>
>Edit /etc/lilo and reflect the above
>
>image = image-redhat
>label = redhat
>root = /hda5/boot/image-redhat
>read-only
>
>same idea for slack.
>
>run lilo with -t to check that all is ok, when all is ok /sbin/lilo
>reboot
>
>Another way is to copy all bootable images into one /boot dir and edit
>lilo.conf accordingly."
>
>I have seen some say:
>image=/boot/vmlinuz-2.2.0-ide pci<<<<<< is it /boot because all bootable
>images are in /boot?
>       label=Debian (example)
>       read-only
>       root=/dev/hdd1
>Anyway....again thanks for helping me with this.....




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
