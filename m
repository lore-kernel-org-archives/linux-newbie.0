From: Mark Johnson <rmjohnson@adelphia.net>
Subject: re-setting up LILO?
Date: Tue, 18 Jun 2002 13:16:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D0F9506.3000408@adelphia.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello all,
    I recently installed Windows XP and reformatted to NTFS.  I then 
Installed my partition magic and bootmagic, and boot magic wouldn't 
install to the ntfs partition.  well, my problem is that boot magic said 
to not use lilo in the mbr so I told lilo to boot from ext2 partition 
and bootmagic booted lilo from the partition.  now that I don't have 
bootmagic I have to boot from floppy as Lilo doesn't come up.  I read 
through the man pages and the help from "lilo --help" and I can't figure 
out how to get Lilo to boot from the MBR again?  does anyone know which 
option tells LILO to boot from the MBR instaed of the ext2 partition?

Thanks
    -=Mark=-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
