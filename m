From: "Eve Atley" <eatley@wowcorp.com>
Subject: Interpreting disk space and changing backup path
Date: Wed, 22 Dec 2004 10:38:24 -0500
Message-ID: <006001c4e83c$46486d50$1f0aa8c0@lanadmin>
References: <20040223225259.GA11316@sevoog.kriation.com>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040223225259.GA11316@sevoog.kriation.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


I ran the df command on Redhat Linux 9, and came up with this...what exactly
does it mean? Do I have space to backup part of this machine to another
drive? Which is my main drive?

Filesystem           1K-blocks      Used Available Use% Mounted on
/dev/hda2             37334192   5058672  30379048  15% /
/dev/hda1               101089     29129     66741  31% /boot
/dev/hdb1             57669728  38728096  16012184  71% /home
none                    257160         0    257160   0% /dev/shm

The backup script we have set up is as follows...I'd like to change the path
to instead backup to where I may have space...not the backup machine which
does NOT have enough space.

#!/bin/sh
#backup_main: simple backup routine to be used with samba and bash cp.
#this one simply copies an entire directory recursively to an smb mount.
#
#written by RKL - 7/17/2003
mount -t smbfs -o username=username,password=password,workgroup=somewkgrp
//BACKUP/backup /mnt/backup &>/root/backup_scripts/logs/`date
+"MOUNT-%y-%m-%d.log"`
if [ -f /mnt/backup/connected ]; then
	rm -rf /mnt/backup/`date +"%A/"`
	mkdir /mnt/backup/`date +"%A/"`
	cp -r /home/shared/* /mnt/backup/`date +"%A/"`
1>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.log"` 2>/mnt/backup/logs/`date
+"DAILY-%y-%m-%d.err"`
	umount /mnt/backup  &>/root/backup_scripts/logs/`date
+"MOUNT-%y-%m-%d.log"`
fi




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
