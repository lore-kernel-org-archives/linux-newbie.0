From: Ray Olszewski <ray@comarre.com>
Subject: Re: umount
Date: Fri, 08 Nov 2002 09:36:24 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021108093105.021201f0@celine>
References: <200211081750.01300.edgaralwers@gmx.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211081750.01300.edgaralwers@gmx.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: newbies <linux-newbie@vger.kernel.org>

At 05:50 PM 11/8/02 +0100, Edgar Alwers wrote:
>Hallo,
>in my KDE 3.0.3 (linux from the scratch ) I installed an CD-ROM Icon on the
>desk, which mounts /dev/cdrom on the mount point /media/cdrom.
>Klicking on the Icon ( as user ) mounts the CD-ROM perfectly. But if I then
>try to umount the device klicking with the right mouse on the icon and
>selecting "umount",  I get an error message: only root can umount /dev/cdrom
>from /media/cdrom.
>What should I do to enable the "umount" ? ( why is by the way "mount"
>functioning ? )

Well ... I'd guess there is a permissions difference between mount and 
umount. Check both by using "ls -l /bin/mount" and "ls -l /bin/umount" and 
see what the difference is. It might be simply the mode, or it might also 
involve group each is "owned" by.

The other possibility if an entry in /etc/fstab that makes mounting 
possible but not umounting (though I can't offhand think of a setting that 
will do this).

BTW, is "klicking" some KDE idiom?


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
