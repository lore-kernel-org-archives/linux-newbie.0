From: "P. Sriram" <sriram@aero.iitm.ernet.in>
Subject: Re: [Ilugc] Partitioning
Date: Sat, 10 Aug 2002 10:22:43 +0530 (IST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0208101001160.23782-100000@gateway.aero.iitm.ernet.in>
References: <200208092058.34055.natarajan_k@hotpop.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208092058.34055.natarajan_k@hotpop.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ILUGC <ilugc@aero.iitm.ernet.in>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Fri, 9 Aug 2002, Natarajan K wrote:

> 	I tried changing an existing dos partition into a ext2 one using
> mkfs.ext2 and mk2efs.
>  # mkfs.ext2 /dev/hda7
> But the partition type is still FAT 32 when I use fdisk(in Linux). I am not 
> able to mount it as a FAT partition though. If I delete the partition then my 
[tale of woe deleted]

perhaps, an analogy might help understand what is going on. think of your
hard disk as a book; the partition table is like the table of contents of
the book (only contains information about what is where and such stuff)  
and the file system describes the format in which the the information in
each chapter itself is organized. of course, your data itself is like the
actual text matter of the book. using fdisk (or disk druid or some other
such tool) will manipulate the partition table and not touch the file
system that actually resides on the disk. using mkfs or dos/win 'format'
command creates the file system (the way in which the actual data itself
is organized) and will not touch the table of contents er. i mean,
partition table.

as for whether change of partition numbers needs lilo to be run, it
depends. recent linux versions use partition labels to mount partitions -
look in what what /etc/fstab has; if the first column is label=blah, then
you have this later style. if the first column is /dev/blah, then you have
the older style. in the old style, yes, you have to edit fstab
accordingly, but may not need to run lilo unless your / or /boot partition
has changed number. if you have the newer label=blah style, only if /boot
changes (or /, if /boot is not a separate partition but resides within /) 
do you have to run lilo after making the change in lilo.conf. if your 
partitions dont have lebels, you can use e2label command to create (or 
even read) the labels. grub makes it easier to handle such situations. 
with lilo, if there is a mistake in lilo.conf, you are in trouble. with 
grub, you can edit the grub.conf at boot time and get into the system.

sriram


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
