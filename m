From: axel@pearbough.net
Subject: Re: How do I see all my partitions?
Date: Wed, 18 Dec 2002 11:47:22 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021218104722.GA3850@neon.pearbough.net>
References: <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chris <smarta55@comcast.net>
Cc: linux-newbie@vger.kernel.org

Hi Chris!

On Tue, 17 Dec 2002, Chris wrote:

> my winxp partition.  How do I display all the
> partitions, Win/Dos/Linux, in one place so I can
> give mount the correct partition name?

You might already have heard of fdisk. It is a tool to partition your hard
disks and also in fact the easiest way to see what partition is of what
type and has what number/name.
To call fdisk for your primary IDE slave call "fdisk /dev/hda" and you
will get something like this:

   Device Boot    Start       End    Blocks   Id  System
/dev/hda1             1      9688   4882720+  83  Linux
/dev/hda2   *      9689     48440  19531008    7  HPFS/NTFS
/dev/hda3         48441    158816  55629504   83  Linux

(For example for your second SCSI disk it would be "fdisk /dev/sdb")

Here you can see that my windows partition is /dev/hda2 is of type NTFS.
To mount it you'll need an empty directory (e.g. /windows or /mnt/win) and
the necessary file system support for you kernel (in my case NTFS).

Then "mount <device>  <mount directory>". In my case this looks like:
     "mount /dev/hda2 /windows"


Have fun,
Axel
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
