From: Ray Olszewski <ray@comarre.com>
Subject: Re: mounting cdrom
Date: Wed, 24 Jul 2002 07:03:31 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020724064649.023af170@celine>
References: <004b01c21bc8$61710080$148e1ec4@jantar.co.za>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004b01c21bc8$61710080$148e1ec4@jantar.co.za>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Hendrik Fourie <hendrikf@jantar.co.za>, linux-newbie@vger.kernel.org

At 02:44 PM 6/24/02 -0700, Hendrik Fourie wrote:
>i am using redhat 7.2 and kde and when i try to mount the cdrom within kde
>it gives the error message that "/dev/cdrom is not a valid block device".

What is the output of "ls -l /dev/cdrom"? Is the symlink set up correctly?

>using kde terminal window i tried  running "su" and entering the root
>password, then i run the command "mount  -t iso9660 /dev/hda  /mnt/cdrom and
>it gives me the exact same error message.

Surely not the *exact* same error message (since this command does not make 
use of /dev/cdrom).

Please post the exact command you enter and the exact response from the system.

>however when i change the runlevel from 5 to 3 in inittab, and then run the
>exact same command as above, the cdrom is mounted and i can access it.
>
>am i using te mount command the wrong way?, and why does it sometimes work?

No to the first part (assuming hda really is a CD drive, as you indicate 
below). As to the second, you need to tell us more if we are to figure that 
out; my *guess* is that you have misreported some detail, but I am not 
really sure.

>i also read somewhere that the ide devices are named in the following way:
>primary master on 1st ide controller = /dev/hda
>primary slave on 1st ide controller = /dev/hdb

These two are correct.

>secondary master 2nd ide = dev/hdd
>secondary slave 2nd ide = dev/hdc

These two you have reversed. Secondary *master* is hdc, secondary *slave* hdd.

>however, i have two hard drives connected as primary master and primary
>slave on the 1st  ide controller. the first hdd is a windows98 fat32
>partition and it is called /dev/hdc1 in linux while my second hard drive is
>the linux one, and it is called /dev/hdd1(boot),  /dev/hdd2(swap) and
>/dev/hdd3(root), while my 2 cdroms are /dev/hda and /dev/hdb. is this wrong
>? and could this be why i cannot mount the cdrom while using X?

This is an unusual setup. Usually, a system needs to be able to boot (at 
least run the bootloader) from the IDE primary master; if you can run a 
bootloader from the IDE secondary, you must have a more flexible BIOS than 
most. Either that or your RH devices (the /dev/hd* entries) were modified 
in some way unfamiliar to me. But if that part works for you for booting 
and mounting the hard disks, it should not affect your ability to mount the 
CD drives.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
