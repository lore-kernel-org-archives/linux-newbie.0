From: Rei Shinozuka <shino@panix.com>
Subject: partitioning drive
Date: Tue, 23 Mar 2004 08:02:48 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040323130248.GA10357@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Newbie Linux Users <linux-newbie@vger.kernel.org>


i was just delivered a lovely preinstalled system.  

[root@tuxedo shino]# uname -a
Linux tuxedo 2.4.22-1.2115.nptl #1 Wed Oct 29 15:31:21 EST 2003 i686 athlon i386 GNU/Linux

the only
problem is that it has only one data partition.  what i'd
really like is 5-6 partitions something like:

/
/home
/local
/data
/boot2
/swap

what's my best best to make this happen?  fips?    fdisk?
disk druid?  something on the fedora install disks?

this is what it looks like now.

[root@tuxedo shino]# df -m
Filesystem           1M-blocks      Used Available Use% Mounted on
/dev/hda3               190140      7085    173397   4% /
/dev/hda1                   99         7        88   7% /boot
none                       505         0       505   0% /dev/shm

~ $ cat /etc/fstab 
LABEL=/                 /                       ext3    defaults        1 1
LABEL=/boot             /boot                   ext3    defaults        1 2
none                    /dev/pts                devpts  gid=5,mode=620  0 0
none                    /proc                   proc    defaults        0 0
none                    /dev/shm                tmpfs   defaults        0 0
/dev/hda2               swap                    swap    defaults        0 0
/dev/cdrom              /mnt/cdrom              udf,iso9660 noauto,owner,kudzu,ro 0 0
/dev/cdrom1             /mnt/cdrom1             udf,iso9660 noauto,owner,kudzu,ro 0 0
/dev/fd0                /mnt/floppy             auto    noauto,owner,kudzu 0 0


thanks so kindly in advance!

-rei



-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
