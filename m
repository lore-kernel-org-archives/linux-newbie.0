From: Ray Olszewski <ray@comarre.com>
Subject: Re: Can't write VFAT filesystem
Date: Tue, 04 Nov 2003 09:16:49 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031104083631.01f742c0@celine>
References: <3FA79C9E.400@siriusbb.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FA79C9E.400@siriusbb.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:33 PM 11/4/2003 +0600, Amin wrote:
>Hi,
>
>I've set up my /etc/fstab file as usual, so that I can access my Windows 
>C: and D: drives, as shown in the attachment.
>
>I can mount/unmount both these drives and read them.  I can also write to 
>the /mnt/c filesystem.  But for some reason I can't write to the /mnt/d 
>filesystem.  Specifically:
>
>$ whoami
>yawar
>$ pwd
>/mnt/d/My Documents
>$ touch file
>touch: creating `file': Permission denied
>$

Well ... what does "ls -l /mnt/d/My\ Documents" tell you about ownership of 
and permissions for that directory? Same questions for "ls -l /mnt/d". 
Checking this info is the obvious place to start ... so basic, really, that 
I wouldn't check anything else until I had verified that the values 
reported here were sensible.

Am I correct is assuming that you (that is, userid yawar) own the partition 
/mnt/d ? If so, and you mount the filesystem from userid yawar, it should 
give you (yawar) write access. But since the fstab entries have both 
"owner" -AND- "user" attributes set, it is unclear on what basis you 
(yawar) are mounting the partition.

It is quite easy to get a detail wrong when working with fat and vfat, so 
you should double-check all the basics.

>Can some kind soul tell me what I'm doing wrong?
>
>Thanks,
>Yawar Amin
>
>
>LABEL=/                 /                       ext3    defaults        1 1
>LABEL=/boot             /boot                   ext3    defaults        1 2
>none                    /dev/pts                devpts  gid=5,mode=620  0 0
>none                    /proc                   proc    defaults        0 0
>none                    /dev/shm                tmpfs   defaults        0 0
>/dev/hda4               swap                    swap    defaults        0 0
>/dev/cdrom              /mnt/cdrom              iso9660 
>noauto,owner,user,unhide,kudzu,ro 0 0
>/dev/fd0                /mnt/floppy             auto    noauto,owner,kudzu 0 0
>/dev/hda1               /mnt/c                  vfat    noauto,owner,user 0 0
>/dev/hda5               /mnt/d                  vfat    noauto,owner,user 0 0



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
