From: Rei Shinozuka <shino@panix.com>
Subject: fedira and how to get mass storage devices (memory card readers) to work
Date: Mon, 12 Apr 2004 22:54:02 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040413025402.GC3579@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Newbie Linux Users <linux-newbie@vger.kernel.org>

a real newbie-type question.

in my 2.4.7-10 RH7.2 i just put  in my /etc/fstab
/dev/sda1 /mnt/camera   auto noauto,owner,kudzu 0 0

then i could just mount my cameras and cards (in a lexar reader)
nad they were just files on /mnt/camera.

but now i get mount: /dev/sda1 is not a valid block device
brw-rw----    1 root     disk       8,   1 Sep 15  2003 /dev/sda1

anything i am doing wrong?  BTW, i do also have a USB HP printer
on the machine, which works fine.

thanks,

-rei
-- 
Rei Shinozuka shino@panix.com
Ridgewood, New Jersey

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
