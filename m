From: Ray Olszewski <ray@comarre.com>
Subject: Re: Interpreting disk space and changing backup path
Date: Wed, 22 Dec 2004 08:28:59 -0800
Message-ID: <5.1.0.14.1.20041222081149.01f485d0@celine>
References: <20040223225259.GA11316@sevoog.kriation.com> <006001c4e83c$46486d50$1f0aa8c0@lanadmin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <006001c4e83c$46486d50$1f0aa8c0@lanadmin>
References: <20040223225259.GA11316@sevoog.kriation.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:38 AM 12/22/2004 -0500, Eve Atley wrote:

>I ran the df command on Redhat Linux 9, and came up with this...what exactly
>does it mean? Do I have space to backup part of this machine to another
>drive? Which is my main drive?
>
>Filesystem           1K-blocks      Used Available Use% Mounted on
>/dev/hda2             37334192   5058672  30379048  15% /
>/dev/hda1               101089     29129     66741  31% /boot
>/dev/hdb1             57669728  38728096  16012184  71% /home
>none                    257160         0    257160   0% /dev/shm

First, you figure out which drive is which by checking the rightmost 
column, mount point. If by "main drive" you mean the root filesystem, it is 
the filesystem (or partition; not "drive") mounted at "/" ... in your case, 
/dev/hda2. This is a partition on drive /dev/hda, which by convention is 
the IDE Primary Master drive. (If you meant something different by "main 
drive" ... for example, the biggest drive ... please try asking again, more 
clearly.)

The secret decoder ring for IDE drive identifiers, BTW, is

         /dev/hda        =       Primary Master
         /dev/hdb        =       Primary Slave
         /dev/hdc        =       Secondary Master
         /dev/hdd        =       Secondary Slave

The second column "1K-blocks") tells you how big each drive is in KB, and 
the fourth column ("Available") tells you how much space is available to 
ordinary users (the portion reserved for root, usually 5%, is not included 
in this number).

So, what we see above is ...

         the root (/) filesystem is on /dev/hda2, is 37 GB in size, and has 
30 GB available

         the /boot partition (holds your kernel and a few related files) is 
on /dev/hda1, is tiny by today's standards (100 MB), and has 67 MB free.

         the /home partition is on /dev/hdb1 (a partition on the IDE 
Primary Slave drive), is 57 GB in size, and has 16 GB available.

Can you do any backups on this machine? Well ...

         the root (/) filesystem is about 5 GB in size, and /home has  16 
GB available, so you *could* back / up to /home (though you will need to 
use the "one drive" cp switch, so the modified script doesn't try to backup 
/home to itself).

         the /boot filesystem is tiny enough to backup anywhere you like, 
but it is statis so not usually worth backing up.

         the /home filesystem is 38 GB, larger than the 30 GB available on 
/, so you cannot back it up on this system (unless you do it using tar with 
compression, in which case you might be able to).

The script you have below is written to do backups over a netwotk to 
another machine, via SMB (samba) mounts. Adapting it to same-machine 
backups is, I'd suspect, more trouble than it is worth.


>The backup script we have set up is as follows...I'd like to change the path
>to instead backup to where I may have space...not the backup machine which
>does NOT have enough space.
>
>#!/bin/sh
>#backup_main: simple backup routine to be used with samba and bash cp.
>#this one simply copies an entire directory recursively to an smb mount.
>#
>#written by RKL - 7/17/2003
>mount -t smbfs -o username=username,password=password,workgroup=somewkgrp
>//BACKUP/backup /mnt/backup &>/root/backup_scripts/logs/`date
>+"MOUNT-%y-%m-%d.log"`
>if [ -f /mnt/backup/connected ]; then
>         rm -rf /mnt/backup/`date +"%A/"`
>         mkdir /mnt/backup/`date +"%A/"`
>         cp -r /home/shared/* /mnt/backup/`date +"%A/"`
>1>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.log"` 2>/mnt/backup/logs/`date
>+"DAILY-%y-%m-%d.err"`
>         umount /mnt/backup  &>/root/backup_scripts/logs/`date
>+"MOUNT-%y-%m-%d.log"`
>fi


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
