From: lawson_whitney@juno.com
Subject: Re: tar question (was Re: nomore newbies??)
Date: Mon, 20 May 2002 10:21:43 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020520.102255.134663624.0.lawson_whitney@juno.com>
References: <200205201347.g4KDl2k21520@langhans.hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205201347.g4KDl2k21520@langhans.hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com, lawson_whitney@juno.com
Cc: ik5bcu@tin.it, linux-newbie@vger.kernel.org

On Mon, 20 May 2002, Haines Brown wrote:

> Lawson,
>
> The "tartar" script worked very nicely to copy a directory on one
> drive to another drive, thanks!
>
> > #!/bin/bash
> > tar -C "$1" -cOl . | tar -C "$2" -xpf -
>
> However, I ran into a lot of ownership and permission errors, and so
> these were often not preserved. This shifts the issue from tar to
> permissions, but perhaps I can sneak it in here because it does bear
> on setting up a backup.
>
> My guess is that I need to give user write permission to /mnt/mirror
> if I am to preserve user's ownership and permissions. Root can give
> that permission, but when the mount point is mounted, the permissions
> automagically revert to rwxr-xr-x.

Huh?  Read man mount, DESCRIPTION.

       This tells the kernel to attach the file system  found  on
       device  (which is of type type) at the directory dir.  The
       previous contents (if any)  and  owner  and  mode  of  dir
       become  invisible, and as long as this file system remains
>>>>>>>>>>>>>>>^^^^^^^^^^
       mounted, the pathname dir refers to the root of  the  file
       system on device.

An ext2 filesystem has an owner and permissions of its own.  These are
not affected by the permissions of the mount point.  You can't change
them when it's not mounted.  Well, not with chown and chmod, anyway.
Mount it and chown -R/chmod -R it or rm -rf /mnt/mirror/storage/backups
#mkdir /mnt/mirror/storage/backups
#chown user /mnt/mirror/storage/backups
(or chmod or chgrp or however you like to manage this thing).
and do the tartar again.  It should preserve permissions then.
>
> I'm mystified. The cause might well be in /etc/fstab. The relevant
> line is:
>
>      /dev/sdc1	/mnt/mirror	ext2	noauto,user
>
> I find that my mounting the primary partition of the external mass
> storage device, I have access to all its partitions. But only root can
> write to them.
>
> Haines Brown
>
Lawson
---oops---


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
