From: James Miller <jamtat@mailsnare.net>
Subject: Re: error message interpretation help?
Date: Wed, 4 Feb 2004 16:41:14 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402030855370.1027@debian-emach>
References: <020320040856.27329.7c84@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <020320040856.27329.7c84@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 3 Feb 2004 beolach@comcast.net wrote:

> The warning you are getting about the /proc/partition & /dev inconsistency
> could be caused by devfs being compiled into the kernel (which would cause
> /proc/partitions to use the devfs naming scheme), and either devfs being
> mounted somewhere other than /dev, or devfs not being mounted at all (which
> would cause the /dev directory NOT to use the devfs naming scheme). Because
> in your second email you mention that /dev/cdrom links to /dev/cdrom0 which
> in turn links to /dev/hdb, I'm guessing devfs is not mounted at all - devfs
> will never make symlinks to symlinks, and also uses the naming scheme above.
> Devfs not being mounted would be caused by the kernel being compiled with
> CONFIG_DEVFS_FS=y, but CONFIG_DEVFS_MOUNT=n.  You can fix this by either
> recompiling the kernel with CONFIG_DEVFS_MOUNT=y or by passing devfs=mount
> to the boot prompt, or by running "mount -t devfs none /dev".  As soon as
> you do get devfs mounted on /dev, you won't get that error when you run lilo.

Thanks for the info on devfs, which helps to fill in a bit between the
level of the documentation you provided a link for and what I'm currently
capable of processing (which is to say that the documentation, though
passing itself off as something basic, was over my head).  I followed your
advice about doing "mount -t devfs none /dev", but I'm sorry to report
that it has introduced another error.  I can't tell if it's fixed the
one it was supposed to have, though.  After running that command, when I
issue "lilo" at the command prompt, I get
-----------------------------------
Fatal: raid_setup: stat("/dev/hda")
-----------------------------------
The computer continues to function normally, so far as I can tell,
notwithstanding.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
