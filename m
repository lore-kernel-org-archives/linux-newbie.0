From: "Eve Atley" <eatley@wow-corp.com>
Subject: Need help interpreting Backup Script
Date: Thu, 8 Apr 2004 14:47:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPMEHPCJAA.eatley@wow-corp.com>
References: <20040408183547.96802.qmail@web11805.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040408183547.96802.qmail@web11805.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>


I really have 3 questions here.
1. What is the backup script at the bottom of this email doing?
2. How can I add folders to this, or should I be creating a new script for
the seperate folders? If I add more folders to the same script, the backup
time is bound to increase, so I figure it's a tradeoff between having
multiple scripts vs. time.
3. As it appears this script is already backing up /home/shared, what does
the script tell me in terms of where I can find the backup?

Here's a more detailed explanation of 1 and 2.

1. and 2. Being new to Linux, I am trying to add to a backup script that
already exists. However, before I do so, I'd like to know more about what
it's doing, and where things are going. What I want to backup is linux
directory /home/shared, which it is doing; but I'd also like to backup /home
so that each individual user folder can be backed up as well.

The way I understand it is like so: /home/shared is being backed up on a
daily? basis. Is this correct? Should I write another script based on this
one that will copy the /home/ directories minus the shared directory?
--------------------------------------------------
With that said, here's the script. The only things I've changed is the
username & password.

Thanks,
Eve

#!/bin/sh
#backup_main: simple backup routine to be used with samba and bash cp.
#this one simply copies an entire directory recursively to an smb mount.
#
#written by RKL - 7/17/2003
mount -t smbfs -o
username=username,password=password,workgroup=workgroup
//BACKUP/backup /mnt/backup
&>/root/backup_scripts/logs/`date
+"MOUNT-%y-%m-%d.log"`
if [ -f /mnt/backup/connected ]; then
	rm -rf /mnt/backup/`date +"%A/"`
	mkdir /mnt/backup/`date +"%A/"`
	cp -r /home/shared/* /mnt/backup/`date +"%A/"`
1>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.log"`
2>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.err"`
	umount /mnt/backup  &>/root/backup_scripts/logs/`date
+"MOUNT-%y-%m-%d.log"`
fi

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
