From: Chris <smarta55@comcast.net>
Subject: Thank you (Re: How do I see all my partitions?)
Date: Wed, 18 Dec 2002 07:27:03 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.0.20021218072619.00b634e0@mail.comcast.net>
References: <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
 <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20021218104722.GA3850@neon.pearbough.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Thank you...
Now I feel like I should have known to look there 1st.   Duh.

Hopefully I won't be a  newbie too long...

Chris

At 11:47 AM Wednesday 12/18/2002, you wrote:
>Hi Chris!
>
>On Tue, 17 Dec 2002, Chris wrote:
>
> > my winxp partition.  How do I display all the
> > partitions, Win/Dos/Linux, in one place so I can
> > give mount the correct partition name?
>
>You might already have heard of fdisk. It is a tool to partition your hard
>disks and also in fact the easiest way to see what partition is of what
>type and has what number/name.
>To call fdisk for your primary IDE slave call "fdisk /dev/hda" and you
>will get something like this:
>
>    Device Boot    Start       End    Blocks   Id  System
>/dev/hda1             1      9688   4882720+  83  Linux
>/dev/hda2   *      9689     48440  19531008    7  HPFS/NTFS
>/dev/hda3         48441    158816  55629504   83  Linux
>
>(For example for your second SCSI disk it would be "fdisk /dev/sdb")
>
>Here you can see that my windows partition is /dev/hda2 is of type NTFS.
>To mount it you'll need an empty directory (e.g. /windows or /mnt/win) and
>the necessary file system support for you kernel (in my case NTFS).
>
>Then "mount <device>  <mount directory>". In my case this looks like:
>      "mount /dev/hda2 /windows"
>
>
>Have fun,
>Axel


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
