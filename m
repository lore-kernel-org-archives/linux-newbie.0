From: "Hendrik Fourie" <hendrikf@jantar.co.za>
Subject: mounting cdrom
Date: Mon, 24 Jun 2002 16:30:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <007601c21bd7$2ec116c0$148e1ec4@jantar.co.za>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> At 02:44 PM 6/24/02 -0700, Hendrik Fourie wrote:
> >i am using redhat 7.2 and kde and when i try to mount the cdrom within
kde
> >it gives the error message that "/dev/cdrom is not a valid block device".
>
> What is the output of "ls -l /dev/cdrom"? Is the symlink set up correctly?

i havent run "ls -l /dev/cdrom", but by the symlink i assume you mean the
entries in the fstab file which allows me to mount the cdrom  by using
"mount /dev/cdrom" only  as opposed to having to enter the entire "mount  -t
iso9660 /dev/hda  /mnt/cdrom" command?,  i only have a vague idea what
symlinks are and how to set them up :),
anyway, the entries in the fstab file is correct.

>
> >using kde terminal window i tried  running "su" and entering the root
> >password, then i run the command "mount  -t iso9660 /dev/hda  /mnt/cdrom
and
> >it gives me the exact same error message.
>
> Surely not the *exact* same error message (since this command does not
make
> use of /dev/cdrom).


no, instead of "/dev/cdrom" it shows "/dev/hda"  is not a valid block
device.


>
> Please post the exact command you enter and the exact response from the
system.
>
> >however when i change the runlevel from 5 to 3 in inittab, and then run
the
> >exact same command as above, the cdrom is mounted and i can access it.
> >
> >am i using te mount command the wrong way?, and why does it sometimes
work?
>
> No to the first part (assuming hda really is a CD drive, as you indicate
> below). As to the second, you need to tell us more if we are to figure
that
> out; my *guess* is that you have misreported some detail, but I am not
> really sure.
>
> >i also read somewhere that the ide devices are named in the following
way:
> >primary master on 1st ide controller = /dev/hda
> >primary slave on 1st ide controller = /dev/hdb
>
> These two are correct.
>
> >secondary master 2nd ide = dev/hdd
> >secondary slave 2nd ide = dev/hdc
>
> These two you have reversed. Secondary *master* is hdc, secondary *slave*
hdd.
>
> >however, i have two hard drives connected as primary master and primary
> >slave on the 1st  ide controller. the first hdd is a windows98 fat32
> >partition and it is called /dev/hdc1 in linux while my second hard drive
is
> >the linux one, and it is called /dev/hdd1(boot),  /dev/hdd2(swap) and
> >/dev/hdd3(root), while my 2 cdroms are /dev/hda and /dev/hdb. is this
wrong
> >? and could this be why i cannot mount the cdrom while using X?
>
> This is an unusual setup. Usually, a system needs to be able to boot (at
> least run the bootloader) from the IDE primary master; if you can run a
> bootloader from the IDE secondary, you must have a more flexible BIOS than
> most. Either that or your RH devices (the /dev/hd* entries) were modified
> in some way unfamiliar to me. But if that part works for you for booting
> and mounting the hard disks, it should not affect your ability to mount
the
> CD drives.

i am using the grub bootloader which is written to the mbr of the first
hdd.( i think)
hda and hdb really are the cdrom drives, and i can mount the fat32 partition
and acces it in linux by using "mount -t vfat /dev/hdc1 /dev/mnt/windows"
and it shows the content of my windows hdd. i don't know if and how the
/dev/hd* entries were modified, since i installed rh7.2 with the default
options an i certainly never changed it myself.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
