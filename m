From: chammann@t-online.de (Christoph Hammann)
Subject: Re: Urgent help !
Date: Tue, 9 Apr 2002 03:43:29 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16ukfV-26ZTpgC@fwd01.sul.t-online.com>
References: <20020408232526.122bd9b1.bbotero@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
In-Reply-To: <20020408232526.122bd9b1.bbotero@gmx.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Beatriz Botero H <bbotero@gmx.de>, linux-newbie@vger.kernel.org

Am Montag, 8. April 2002 23:25 schrieb Beatriz Botero H:
> I am running a PC under Linux SuSE 7.2 with kernel 2.4.18, self compiled.
> I changed some days ago the partition of my second HD from ext2 to ext3
> with the help of tune2fs -j /dev/hdb2 and everything was running OK. Today,
> I had a problem with a frozen display and I had to reboot the box cold.
> During the corresponding forced check I got the following messages: Quote
> ---------
> /dev/hdb2: reading journal for ext3 file system...
> fsck.ext3: Invalid argument:couldn't load ext3 journal for /dev/hdb2
> fsck.ext3: /dev/hdb2 failed ( status 8 )! run it manually
> ....
> fsck failed. Please repair manually and reboot
> ---------
>
> After I enter fsck /dev/hdb2 i got:
> Quote
> ---------
> Parallelizing fsck versioin 1.19a (13-jul-2000)
> e2fsck 1.19, 13-jul-2000 for EXT2 FS 0.5b, 95/08/09
> /dev/hdb2: reading journal for ext3 file system...
> fsck.ext3: Invalid argument:couldn't load ext3 journal for /dev/hdb2
> fsck.ext3: /dev/hdb2 failed ( status 8 )! run it manually
> ---------
> If I try to boot with the boot DK or with the CD ( Linux SuSE 7.2 ) I get
> the same wording.
>
> What can I do ? As I was just experimenting with ext3, I can reformat the
> second HD if necessary ( partiton magic ). However, the informations in the
> first HD are extremely important for me ( second HD was backup for HD 1 ;-(
>   )

Dear Edgar!

/dev/hdb2 seems to be definitely hosed, I'm not seeing any reasonable method 
of getting at the data on this partition. But as you write this partition 
seems to contain a backup only. Can you boot from CD-ROM or diskette and when 
it halts in the bootup process while trying to fsck /dev/hdb2 open another 
console (Ctrl-Alt-F2 to F{number of ttys+1})? If so, I would try to umount 
this partition and go on with the boot process or edit /etc/fstab so that it 
doesn't even touch it.
If, on the other hand, /dev/hdb2 contains the root filesystem, you really are 
FUBAR. Wonder if one of the experts on this list can still help you out of 
this.
So, what is the /etc/fstab of this system?

Christoph
-- 
Random fortune quote:
Kin, n.:
	An affliction of the blood
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
