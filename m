From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: tar question (was Re: nomore newbies??)
Date: Mon, 20 May 2002 09:47:02 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205201347.g4KDl2k21520@langhans.hartford-hwp.com>
References: <20020519.194756.134663624.0.lawson_whitney@juno.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020519.194756.134663624.0.lawson_whitney@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Cc: lawson_whitney@juno.com, ik5bcu@tin.it, linux-newbie@vger.kernel.org

Lawson,

The "tartar" script worked very nicely to copy a directory on one
drive to another drive, thanks!

> #!/bin/bash
> tar -C "$1" -cOl . | tar -C "$2" -xpf -

However, I ran into a lot of ownership and permission errors, and so
these were often not preserved. This shifts the issue from tar to
permissions, but perhaps I can sneak it in here because it does bear
on setting up a backup.

My guess is that I need to give user write permission to /mnt/mirror
if I am to preserve user's ownership and permissions. Root can give
that permission, but when the mount point is mounted, the permissions
automagically revert to rwxr-xr-x.

I'm mystified. The cause might well be in /etc/fstab. The relevant
line is:

     /dev/sdc1	/mnt/mirror	ext2	noauto,user

I find that my mounting the primary partition of the external mass
storage device, I have access to all its partitions. But only root can
write to them. 

Haines Brown




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
