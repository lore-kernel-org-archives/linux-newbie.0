From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: mount via cifs fails
Date: Tue, 12 Sep 2006 16:37:24 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0609121622550.25643-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I seem to be unable to mount a shared windows partition across samba 
within FC5. 

# mount -t cifs //<server-IP>/NimmiLabBackup/ /mnt/labbackup/ -o 
user=karthikv
Password: 
retrying with upper case share name
mount error 6 = No such device or address
Refer to the mount.cifs(8) manual page (e.g.man mount.cifs)

Using the same mount command with the --verbose option changes 
NimmiLabBackup -> NIMMILABBACKUP and fails with the same error. 

I am able to log into the windows machine via smbclient, but an ls within 
the smbclient gives: 
smb: \> ls
NT_STATUS_ACCESS_DENIED listing \*

Searching on google gives many users complaining about the same thing, but
no clear solution. This behavior occurs on a 2.6.15-1.2054_FC5smp kernel
running fedora core 5 on an intel dual-core CPU. The same samba mount from
a neighbor's machine running Ubuntu with kernel 2.6.15 works fine.

How can I try fixing this? 


Thanks,

-K


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
