From: Beatriz Botero H <bbotero@gmx.de>
Subject: Urgent help !
Date: Mon, 8 Apr 2002 23:25:26 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020408232526.122bd9b1.bbotero@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I am running a PC under Linux SuSE 7.2 with kernel 2.4.18, self compiled.
I changed some days ago the partition of my second HD from ext2 to ext3 with the help of tune2fs -j /dev/hdb2 and everything was running OK.
Today, I had a problem with a frozen display and I had to reboot the box cold. During the corresponding forced check I got the following messages:
Quote
---------
/dev/hdb2: reading journal for ext3 file system...
fsck.ext3: Invalid argument:couldn't load ext3 journal for /dev/hdb2
fsck.ext3: /dev/hdb2 failed ( status 8 )! run it manually
....
fsck failed. Please repair manually and reboot
---------

After I enter fsck /dev/hdb2 i got:
Quote
---------
Parallelizing fsck versioin 1.19a (13-jul-2000)
e2fsck 1.19, 13-jul-2000 for EXT2 FS 0.5b, 95/08/09
/dev/hdb2: reading journal for ext3 file system...
fsck.ext3: Invalid argument:couldn't load ext3 journal for /dev/hdb2
fsck.ext3: /dev/hdb2 failed ( status 8 )! run it manually
---------
If I try to boot with the boot DK or with the CD ( Linux SuSE 7.2 ) I get the same wording.

What can I do ? As I was just experimenting with ext3, I can reformat the second HD if necessary ( partiton magic ). However, the informations in the first HD are extremely important for me ( second HD was backup for HD 1 ;-(   )

Thanks in advance for any hints !
Edgar Alwers
Please answer to the above still functioning address or to the list



----------------- 

Beatriz Botero H.
Weinheim. Germany
mailto:bbotero@gmx.de
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
