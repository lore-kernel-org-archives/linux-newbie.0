From: "Hendrik Fourie" <hendrikf@jantar.co.za>
Subject: mounting cdrom
Date: Mon, 24 Jun 2002 14:44:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004b01c21bc8$61710080$148e1ec4@jantar.co.za>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

i am using redhat 7.2 and kde and when i try to mount the cdrom within kde
it gives the error message that "/dev/cdrom is not a valid block device".
using kde terminal window i tried  running "su" and entering the root
password, then i run the command "mount  -t iso9660 /dev/hda  /mnt/cdrom and
it gives me the exact same error message.

however when i change the runlevel from 5 to 3 in inittab, and then run the
exact same command as above, the cdrom is mounted and i can access it.

am i using te mount command the wrong way?, and why does it sometimes work?

i also read somewhere that the ide devices are named in the following way:
primary master on 1st ide controller = /dev/hda
primary slave on 1st ide controller = /dev/hdb
secondary master 2nd ide = dev/hdd
secondary slave 2nd ide = dev/hdc

however, i have two hard drives connected as primary master and primary
slave on the 1st  ide controller. the first hdd is a windows98 fat32
partition and it is called /dev/hdc1 in linux while my second hard drive is
the linux one, and it is called /dev/hdd1(boot),  /dev/hdd2(swap) and
/dev/hdd3(root), while my 2 cdroms are /dev/hda and /dev/hdb. is this wrong
? and could this be why i cannot mount the cdrom while using X?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
