From: cr <cr@orcon.net.nz>
Subject: Can't see my drives
Date: Thu, 22 Aug 2002 23:05:03 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020822093900.3BBF650F9D@smtp.orcon.net.nz>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm having trouble 'seeing' the floppy drive or the CD-ROM.

I'm running RedHat 7.2, in all previous versions I had no trouble reading the 
floppy or CD-ROM, for example just by going    cd /mnt/cdrom       ls

But now this doesn't work any more.   Doesn't matter whether I'm 'me' or 
su root, 
cd /mnt/cdrom  and   cd /mnt/floppy   apparently work, but 
a following   ls    won't show the files.

mdir   usually seems to work, though.

Nautilus  and Konqueror  show /mnt/cdrom and /mnt/floppy  but not the 
contents.     Konq in superuser mode shows a 'CDRom device' but then
gives a message  
"Could not mount device
The reported error was
mount:  /dev/cdrom:  unknown device"

On the other hand,  /mnt/dosC  works fine.

/etc/fstab says:
/dev/fd0          /mnt/floppy      auto         noauto,owner,kudzu    0 0
/dev/cdrom      /mnt/cdrom      iso9660    noauto,owner,kudzu,ro   0 0

Any suggestions of what might be wrong?

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
