From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: smbfs and mount
Date: Fri, 24 Jan 2003 18:22:03 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E31763B.1000002@rug.ac.be>
Reply-To: kurt.sys@rug.ac.be
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

I have some troubles with mounting/unmounting smb-filesystems. I have 
some smbfs-entries in my fstab and they mounted at startup (which is as 
it should be). However, if I don't login as root, I can't mount/unmount 
them,because

# unmount: only root can umount //labmetserver/students from 
/mnt/labmet/students

I would like to not mount them at start-up, but mount them whenever I 
need them. This works with the options 'noauto' and 'users' for CD's, 
zipdrives, ntfs etc, but not for samba filesystems. So, I can 
mount/unmount as 'ordinary' user as long as don't try to mount/unmount 
samba filesystems. The options in fstab simply don't work for smbfs. Is 
there any solution?


thanks in advance,
Kurt Sys



PS: By the way, I still have a problem with mounting samba filesystems 
correctly, see an earlier mail of me to this list. I always get the message

# session request to LABMETSERVER failed (Called name not present)

I would like to get rid of this too... Anyway, be prepared, I'll send 
you detailed information next week :-)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
