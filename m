From: "Ralica Kirilova" <larry@podovinastilki.com>
Subject: Slackware, RAID1 problem
Date: Thu, 15 Apr 2004 19:15:45 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001101c42304$e7fd1220$0500a8c0@sea>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,
I have a big problem with this RAID thing :)
My system is Linux Slackware 9.1, uname -r --> 2.4.22
I have two SCSI disks (SEAGATE)
I use this howtos
http://slacksite.com/slackware/raid.html
http://unthought.net/Software-RAID.HOWTO/Software-RAID.HOWTO-1.html
And many more ofcourse. 
1. So I install Linux on scsi 2 (with kernel supporting raid & scsi)
2. make partitions on scsi 1 of fd type. 
3. Then creating md0, md1 , etc...
4. Next step is to mount /dev/md0 and cp the system there.
5. then edit /etc/fstab & /etc/lilo.conf
6. lilo -r /mnt, lilo, lilo -q, etc. Here is the problem. 
After reboot the *old* lilo.conf is started (also are the raid arrays :) ).

I don't know if I explained it right.

Any help is appriciated :)

P.S. Sorry for my bad english.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
