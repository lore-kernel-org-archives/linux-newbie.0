From: Amin <amin@siriusbb.com>
Subject: Can't write VFAT filesystem
Date: Tue, 04 Nov 2003 18:33:34 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FA79C9E.400@siriusbb.com>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------040800080100080606050608"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.
--------------040800080100080606050608
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I've set up my /etc/fstab file as usual, so that I can 
access my Windows C: and D: drives, as shown in the attachment.

I can mount/unmount both these drives and read them.  I can 
also write to the /mnt/c filesystem.  But for some reason I 
can't write to the /mnt/d filesystem.  Specifically:

$ whoami
yawar
$ pwd
/mnt/d/My Documents
$ touch file
touch: creating `file': Permission denied
$


Can some kind soul tell me what I'm doing wrong?

Thanks,
Yawar Amin

--------------040800080100080606050608
Content-Type: text/plain;
 name="fstab"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="fstab"

LABEL=/                 /                       ext3    defaults        1 1
LABEL=/boot             /boot                   ext3    defaults        1 2
none                    /dev/pts                devpts  gid=5,mode=620  0 0
none                    /proc                   proc    defaults        0 0
none                    /dev/shm                tmpfs   defaults        0 0
/dev/hda4               swap                    swap    defaults        0 0
/dev/cdrom              /mnt/cdrom              iso9660 noauto,owner,user,unhide,kudzu,ro 0 0
/dev/fd0                /mnt/floppy             auto    noauto,owner,kudzu 0 0
/dev/hda1		/mnt/c			vfat	noauto,owner,user 0 0
/dev/hda5		/mnt/d			vfat	noauto,owner,user 0 0

--------------040800080100080606050608--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
