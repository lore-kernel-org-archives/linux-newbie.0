From: Ray Olszewski <ray@comarre.com>
Subject: Re: New Drive - New Luck ?
Date: Thu, 16 May 2002 11:38:31 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020516183831.03c8bb98@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Tom Beer <mailings@analogon.com>, linux-newbie@vger.kernel.org

At 09:07 AM 5/16/02 +0200, Tom Beer wrote:
>Hi,
>
>my primary master drive seems soon to die. Therefore
>I wnat to replace it with another one, but first transfer
>at 1:1. The dying drive is approx. 2GB the new 6.4. 
>Can anyone explain how to do it?


I'm not sure what "transfer at 1:1" means. But since no one else seems to
have replied (at least not on the list), let me take a try at a general
answer. (You need to be logged in as root to do all of this, BTW.)

Assuming you can temporarily connect the new drive somehow (on the second
IDE channel, as /dev/hdc, is probably simplest), you can create (the usual
way, with fdisk and mk2efs, or equivalents) partitions on the new drive that
correspond to the ones on the old drive (whatever they are; distros vary a
lot in their default partitionings, and user preference enters here too) but
suitably bigger to make use of the greater capacity of your new drive. 

Then mount the new partitions temporarily on some convenient mount points
and transfer the contents from the old drive to the new one. There are
several ways to do this step. You can pipe the stuff through tar, or use cp.
I haven't done it in quite some time, so I forget the flags needed for
either method, but a check of the man pages should give them to you (the
main issues are preserving ownership, preserving permissions, making
symlinks move properly, and NOT cp'ing the /proc pseudo-file system).

Then you have to make the new drive bootable. You can do this from the old
version of the system, editing /etc/lilo.conf so it points to /dev/hdc (or
wherever you connected the new drive) instead of /dev/hda for the relevant
sections. Then run lilo. You'll get a warning, but you can ignore it. Or you
can leave the device unbootable for the moment.

Now halt, power down, and put the new drive on /dev/hda. If you made it
bootable, it should boot now. If you didn't, boot with a suitable rescue
disk and run lilo to make it bootable.   

Having said all of this ... this is not how I would do it (or how I do do
it). I'd use this as an opportunity to do a new, clean install of whatever
distro you use, bringing it up to date regarding security and other
partches, and transferring from the old drive only yhe local content (any
customization you've done, any apps installed outside the management of the
distro's packaging system, content like music and video, and anything you
created yourself). But opinions differ on this score.

--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
