From: beolach@juno.com
Subject: Re: Problem Mounting a Windows partition
Date: Tue, 8 Jul 2003 18:52:50 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030708.115331.559.325694@webmail05.lax.untd.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: quereshi@etilize.com
Cc: linux-newbie@vger.kernel.org


Here's an excerpt from my fstab for my windows partitions.

Device     Mnt point  FStype Options, see the mount(8) man page
/dev/hda1  /mnt/winc  vfat   defaults,umask=0,utf8,uid=1000,gid=100

--- "Affan Qureshi" <quereshi@etilize.com> wrote:

Hi All,
I have RH9 and WinXP on a single hard drive dual-booting peacefully with
GRUB. The problem is when I mount a WinXP FAT32 partition in linux using the
following command:
mount -t vfat /dev/hda6 /home/shared

I am unable to change the permission on that partition's filesystem even
with the root user. By default i get root:root and the user:group. But I am
unable to access it through other user. I have tried chmod and chgrp but
nothing works and I get the error saying unable to perform operation or you
do not have enough priveledges to perform the operation.

I have also created an entry in the /etc/fstab file with defaults for
options and vfat for the filesystem.

Can anyone tell me what the problem is?

Thanks in advance,

Affan



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs


________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
