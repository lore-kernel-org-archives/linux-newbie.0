From: Ray Olszewski <ray@comarre.com>
Subject: Re: Can't see my drives
Date: Thu, 22 Aug 2002 08:05:16 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020822075404.0226b2d0@celine>
References: <20020822093900.3BBF650F9D@smtp.orcon.net.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020822093900.3BBF650F9D@smtp.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: cr@orcon.net.nz, linux-newbie@vger.kernel.org

Your report is a bit hard to read, so please forgive me if I have 
misinterpreted what you sent.

1.  /dev/cdrom is usually a symlink, not a real device entry. Is it 
pointing to the right actual device (/dev/hd?, if your system is IDE, or 
/dev/sd? if it is SCSI, where ? gets replaced with the right letter for the 
physical drive)?

2. What is "/mnt/dosC"? I imagine it is a symlink to something (since it is 
not in the fstab listing you sent), but I can't *guess* what it is.

3. In the fstab intfo you sent, both filesystems are "noauto", meaning that 
you need (as root) to execute a mount command before the filesystem will be 
present at the mount point. You do not mention doing so before trying the 
floppy, and you only mention using some KDE app to mount the CD. 
Try  running the appropriate mount commands, as root, from the command line 
(e.g., put in a floppy, then enter "mount /mnt/floppy", and do similar 
things with an iso9660 CD) and seeing it that works. If not, please post 
again, this time including

         A. The COMPLETE cli command you enter and the COMPLETE error report.
         B. The output of "ls -l /dev/cdrom"
         C. Info on what kind of CD drive you have and what IDE or SCSI 
channel it is connected to.

At 11:05 PM 8/22/02 +1200, cr wrote:
>I'm having trouble 'seeing' the floppy drive or the CD-ROM.
>
>I'm running RedHat 7.2, in all previous versions I had no trouble reading the
>floppy or CD-ROM, for example just by going    cd /mnt/cdrom       ls
>
>But now this doesn't work any more.   Doesn't matter whether I'm 'me' or
>su root,
>cd /mnt/cdrom  and   cd /mnt/floppy   apparently work, but
>a following   ls    won't show the files.
>
>mdir   usually seems to work, though.
>
>Nautilus  and Konqueror  show /mnt/cdrom and /mnt/floppy  but not the
>contents.     Konq in superuser mode shows a 'CDRom device' but then
>gives a message
>"Could not mount device
>The reported error was
>mount:  /dev/cdrom:  unknown device"
>
>On the other hand,  /mnt/dosC  works fine.
>
>/etc/fstab says:
>/dev/fd0          /mnt/floppy      auto         noauto,owner,kudzu    0 0
>/dev/cdrom      /mnt/cdrom      iso9660    noauto,owner,kudzu,ro   0 0
>
>Any suggestions of what might be wrong?





--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
