From: Ray Olszewski <ray@comarre.com>
Subject: Fwd: problems with recsue disk (was: Re: [no subject])
Date: Sun, 11 Aug 2002 17:14:22 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020811170804.0212cd00@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

Quick followup ... I wasn't thinking carefully enough before. Since you're 
using syslinux, the floppy must be a DOS floppy. You can't mount a DOS 
filesystem as root. One way to do what you want is to incorporate the 
mini-shell into a .tgz package that initrd.img can load into a RAM disk it 
creates, then making the RAMdisk the root filesystem. Another is to put an 
ext2 filesystem on the floppy, but I don't think syslinus will work with 
that (you'll need LILO instead). A third option is to leave the limited 
shell on the hard disk somewhere, then mount an hd** or sd** partition as 
root and run the shell as init from it.

To see how the RAMdisk stuff works, get one of the standard rescue disks 
like tomsrtbt or trinux (actually a disk set). A Google search will track 
down the URLs easily.

>Date: Sun, 11 Aug 2002 17:02:59 -0700
>To: Haines Brown <brownh@hartford-hwp.com>
>From: Ray Olszewski <ray@comarre.com>
>Subject: problems with recsue disk (was: Re: [no subject])
>Cc: linux-newbie@vger.kernel.org
>
>Sorry, Haines. Perhaps someone else can help you with a definitive answer. 
>As I said, I was just telling you what to try based on the man-page 
>assertion that syslinux used this line the same way as LILO.
[rest deleted]


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
