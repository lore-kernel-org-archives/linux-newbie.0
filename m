From: Jerry James Haumberger <jerryjh@imt.net>
Subject: tar for "full" floppy backup?
Date: Mon, 9 Dec 2002 07:00:11 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212090658.XAA16146@cu.imt.net>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

>> As it stands, it's possible to backup to multiple floppy 
>> disks with tar, but these cannot be compressed during the 
>> archival process.  

>Why not use tar twice:  first with -zcf to make a compressed
>archive and then with --multi-volume to write the archive
>to floppy.  Of course to retrieve it, you will also have
>to use tar twice:  first with --multi-volume to reconstruct
>the archive and then with -cvf to unpack it.

What result would you get with that method if you wanted to
review the multiple archive's details with -->

tar --multi-volume -tv --file=/dev/fd0 > backup.log

-->?  Not that much detail.  Just that one big file.

The tar backup routine I've described with your BasicLinux
distribution barely took over six floppy disks, yet I still want
to check out the results, or at least have them available.  (And
I've done just that -- I can review the results of that backup
from a file that had the results directed to it while using the
tar command above.)

For quick backup of important files, though, I'm using the following
script -- perhaps a little "busier" than it needs to be, but then
I'm just a "linux-newbie"... ;-)

-----------------------

cd /home
mount /dev/fd0 /fd14
tar cvpf hot_backup.tar /etc /home /root /var/eznet
gzip hot_backup.tar
rm /fd14/hot_backup/hot_backup.tar.gz
mv hot_backup.tar.gz /fd14/hot_backup
umount /fd14
echo "***FINISHED***"

-----------------------

This works nicely to backup all of my important files, which I can
do much more frequently and easily than the full backup routine with
tar.  What's more, I can also view the results of this file under mc.

This "hot_backup" routine created a tar/gzip file only about 132k in
size.  My rule of thumb is that, when my important file backup exceeds
the size of a 1.44MB floppy disk, it's time to fully backup my system.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
