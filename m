From: Jay Maass <jay.maass@verizon.net>
Subject: Re: Partitioning problem
Date: Tue, 30 Jul 2002 15:14:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020730191426.TZVR8715.out008.verizon.net@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Anshuman Singh Rawat <asr245@nyu.edu>, Riley Williams <Riley@Williams.Name>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Anshu,

Are you doing okay with Linux fdisk in your partitioning?
I could have mentioned that there are at least two parts
to what you will be doing.

First, you will be using fdisk to set up your partitions.
Linux boot and root partitions will be made native Linux
(ext2) file systems. The swap partition will be made
Linux swap. You will also be making a FAT partition for
your Microsoft Windows XP operating system.

Thus, Linux fdisk has been used to create the necessary
partitions.

Second, when installing RedHat Linux 7.3, you will be
designating which partitions to use for boot, root, and
swap. Disk Druid, if you use that tool, will ask you for
these designations. You will enter:

'/boot' for the Linux boot partition,
and '/' for the Linux root partition

I believe Disk Druid will recognize the swap partition
and designate it as <swap> for you.

I hope you are doing okay with Linux fdisk and lilo.

Regards,
Jay Maass, k7jkz
suburban Philadelphia


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
