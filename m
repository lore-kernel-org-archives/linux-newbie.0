From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: A few questions
Date: Sun, 1 Dec 2002 08:06:21 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212010803280.1213-100000@athame.gmpexpress.net>
References: <200212012032.22587.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212012032.22587.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Cc: linux-newbie@vger.kernel.org

By way of answering question 3, have a look at the sysback script below.
Understand I'm going to patch it a little so another version that puts
dates in file names for the .log file and the actual backup files as well
so another version will appear.

cut here.
#!/bin/sh
# system backup script
# uses tar to do a system backup to zip disks in /dev/hdd4
# excluded directories are: /proc/ and /tmp/
echo "put a zip disk in drive for system backup"
read
cd /
echo "system backup log started:" >/tmp/sysback.log
date >>/tmp/sysback.log
mount -t vfat /dev/hdd4 /zip
tar zcMpPv --exclude=/proc,/tmp --file=/zip/sysback.tar / 2>&1 >>/root/sysback.log
mv /tmp/sysback.log /root/sysback.log
cp /root/sysback.log /var/adm/archive/sysback.log
umount /zip




cut here.
Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
