From: "Eve Atley" <eatley@wow-corp.com>
Subject: FW: Need help figurinig out rsync
Date: Mon, 19 Apr 2004 16:10:37 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPOEDDCKAA.eatley@wow-corp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>


The previous system administrator set up a backup script like the one below.
(I commented out the script so it wouldn't run) I was told about rsync and
would like to use it in a similar way. The original script:

#!/bin/sh
#backup_main: simple backup routine to be used with samba and bash cp.
#this one simply copies an entire directory recursively to an smb mount.
#
#written by RKL - 7/17/2003
#mount -t smbfs -o
username=linuxadmin,password=somepassword,workgroup=wowcorp //BACKUP/backup
/mnt/backup &>/root/backup_scripts/logs/`date +"MOUNT-%y-%m-%d.log"`
#if [ -f /mnt/backup/connected ]; then
#       rm -rf /mnt/backup/`date +"%A/"`
#       mkdir /mnt/backup/`date +"%A/"`
#       cp -r /home/* /mnt/backup/`date +"%A/"` 1>/mnt/backup/logs/`date
+"DAILY-%y-%m-%d.log"` 2>/mnt/backup/logs/`date +"DAILY-%y-%m-%d.err"`
#       umount /mnt/backup  &>/root/backup_scripts/logs/`date
+"MOUNT-%y-%m-%d.log"`
#fi

Based on an example at the official rsync site, I'd like to do something
like they've listed, but am not sure what settings i need to transfer over
to the new script. I want to:
a. backup /home/shared to a SPECIFIC Windows 2000 drive on a system called
BACKUP.
b. know what my rsync_password is; is this different from the password in
the above script?
c. do I need to add 'fi' at the end of the script as above?

#!/bin/sh

# This script does personal backups to a rsync backup server. You will end
up
# with a 7 day rotating incremental backup. The incrementals will go
# into subdirectories named after the day of the week, and the current
# full backup goes into a directory called "current"

# directory to backup
BDIR=/home/shared

# excludes file - this contains a wildcard pattern per line of files to
exclude
#EXCLUDES=$HOME/cron/excludes

# the name of the backup machine
BSERVER=BACKUP

# your password on the backup server
export RSYNC_PASSWORD=somepassword

########################################################################

BACKUPDIR=`date +%A`
OPTS="--force --ignore-errors --delete-excluded --exclude-from=$EXCLUDES
      --delete --backup --backup-dir=/$BACKUPDIR -a"

export PATH=$PATH:/bin:/usr/bin:/usr/local/bin

# the following line clears the last weeks incremental directory
[ -d $HOME/emptydir ] || mkdir $HOME/emptydir
rsync --delete -a $HOME/emptydir/ $BSERVER::$USER/$BACKUPDIR/
rmdir $HOME/emptydir

# now the actual transfer
rsync $OPTS $BDIR $BSERVER::$USER/current

====================================
- Eve Atley



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
