From: Jerry James Haumberger <jerryjh@imt.net>
Subject: Multiple Floppy Backup Solutions with tar
Date: Sun, 8 Dec 2002 08:10:19 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212080809.BAA13216@cu.imt.net>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello everyone --

Mr. James W. Laferriere has kindly helped me to unravel the method
for tar backups to floppy disks.  The following command line is
the one I've taken from his suggestions with my own directory
selections added (/proc and empty directories are omitted):

tar --multi-volume --label="Full_Backup_DATE" --create
--preserve-permissions --file=/dev/fd0 /bin /dev /etc /home /lib /root
/sbin /usr /var

(All of the above command is on one continuous line.)

Archival floppy disks do not require mke2fs run on them -- just
fdformat.  These backup floppies should be tested with badblock to
be certain that they're error free.

To view the results of the backup, the following command is used,
beginning with the first floppy disk archive:

tar --multi-volume -tv --file=/dev/fd0

The results can be piped to a file and reviewed, if desired.  The
archived floppies cannot be mounted or viewed with ls, however.

To restore the archive, one must be careful to return to the
appropriate directory before execution of the command.  The command is
the same as the backup command, except that -create is replaced with
-extract.  In the example above, I would execute the command within the
'/' directory.

The tar program used has been GNU-tar 1.12, downloaded for use with
BasicLinux and is identical to that used in Slackware 3.5.

I plan to make more frequent backups of special files with gzip onto
floppy disks with the mke2fs file system added, and I'll use tar on
those gzipped files if they require multiple floppy disks.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
