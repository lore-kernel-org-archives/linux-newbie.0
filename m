From: "Cristian CHIRILOV" <atmos@dreams.homelinux.net>
Subject: Re: Undeleting files on ReiserFS partition
Date: Sat, 13 Sep 2003 00:50:41 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <19849.193.226.6.51.1063403441.squirrel@www.cybernet-kfe.org>
Reply-To: atmos@dreams.homelinux.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,

As far as i know reiserfs doesn't support undelete.

However, if you run reiserfsck with option --rebuild-tree, it will rebuild
the entire file system tree using leaf nodes found on the device and
*probably* (i'm not 100% sure) relink your deleted files.

I advise you to backup the partition first.

dd if=/dev/partition of=yourbackupfie
losetup /dev/loop7 yourbackupfile

reiserfsck --rebuild-tree --scan-whole-partition /dev/loop7
mount /dev/loop7 <mountpoint>


GOOD LUCK!




-- 
Be different. Think.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
