From: "grottoBoy rant" <stylerzz@hotmail.com>
Subject: Re: Can't see my drives
Date: Thu, 22 Aug 2002 15:09:22 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <LAW2-F63qaJY4kJSFsx00019f0a@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: cr@orcon.net.nz, linux-newbie@vger.kernel.org

Hi,

My fstab file is set the same, I'm on RH7.2...

During boot, do you see the device recognized.

Anything showing related to /mnt/(dev) that seems funny if you enter the=20
command dmesg, or tail /var/log/messages?

Maybe you could doublecheck permissions on the device
ls -l cdrom would show permissions, and should show /dev/cdrom linked to=20
/dev/hd*, you can then check permissions on /dev/hd*

On my box brw-rw---- for /dev/hdc
lrwxrwxrwx for /dev/cdrom

later...




----Original Message Follows----


I'm having trouble 'seeing' the floppy drive or the CD-ROM.

I'm running RedHat 7.2, in all previous versions I had no trouble reading=20
the
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



_________________________________________________________________
Join the world=92s largest e-mail service with MSN Hotmail.=20
http://www.hotmail.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
