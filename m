From: Hal MacArgle <haltec@iceweb.net>
Subject: Umount a ZIP ATAPI internal???
Date: Fri, 5 Jul 2002 11:02:24 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020705110224.A229@lnx2.w8mch.ampr.org>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Have an internal ZIP250 ATAPI drive working well as
/dev/sda4, mounted on an empty directory - /zip, disks formatted as
ext2 fs.

Everything normal and good except for one small problem: Once mounted
and files transferred to it via NFS - I cannot umount it - "drive
busy." /etc/mtab looks good and I can change the drives rw to ro but
still no umounting.. Only way, so far, is to reboot the machine, to
be able to remove the disk.. (This does not happen with normal file 
managing in the same machine - only after a NFS transfer.)

Reading man umount I gather that _something_ is open but what? ps x
or ps -A doesn't give an obvious clue.. Using iOmegas 'iw' programs'
-u flag returns same "busy" report..

Invoking rmmod - ide-scsi, smc-ultra, 8390, nfsd - all modules
involved return "busy."

Any suggestions?? TIA.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
    haltec@iceweb.net | w8mch@iceweb.net.. A M$ free environment     
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
