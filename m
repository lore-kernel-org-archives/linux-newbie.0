From: "Affan Qureshi" <quereshi@etilize.com>
Subject: Problem Mounting a Windows partition
Date: Tue, 8 Jul 2003 15:11:08 +0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bee5au$qdl$1@main.gmane.org>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

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
