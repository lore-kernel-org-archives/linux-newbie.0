From: smertz <smertens@mho.com>
Subject: Card Reader
Date: Thu, 07 Apr 2005 14:35:47 -0600
Message-ID: <d345eq$cuc$1@sea.gmane.org>
Reply-To: smertens@mho.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I have a new computer I installed Linux on Red Hat Enterprise Linux ES 
release 4 (Nahant), it has one of those all-in-one card readers on it. I 
have made mountpoints as root as follows for my thumb, Compact flash and 
secure digital drive.

mkdir /mnt/thumb
mkdir /mnt/cf
mkdir /mnt/sd


Now when I tried to mount the Thumb (USB) drive I got an error # mount 
/dev/sda2 /mnt/thumb
mount: /dev/sda2 already mounted or /mnt/thumb busy.


So what have I done wrong? I'm thinking sda2 is wrong, but don't know why?

df -h shows the following

[root localhost mnt]# df -h
Filesystem            Size  Used Avail Use% Mounted on
/dev/mapper/VolGroup00-LogVol00
                      183G  2.9G  171G   2% /
/dev/sda1              99M   19M   76M  20% /boot
none                  247M     0  247M   0% /dev/shm
[root localhost mnt]#


Thanks.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
