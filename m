From: azie <azie@kawan.net>
Subject: fdisk
Date: Wed, 17 Jul 2002 11:36:14 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207171136.14806.azie@kawan.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

I'm using Dell Dimension PIV 2.0 with 40GB harddisk. When I try to use fdisk 
to repartition my harddisk, I got this error.

[begin]

# fdisk /dev/hda

Command (m for help): p

Disk /dev/hda: 255 heads, 63 sectors, 2491 cylinders
Units = cylinders of 16065 * 512 bytes


8 partitions:
#       start       end      size     fstype   [fsize bsize   cpg]
  a:        1         7*        6*    4.2BSD     1024  8192    16
  b:        7*       40*       32*      swap
  c:        1      2492*     2491*    unused        0     0
  e:       40*       42*        2*    4.2BSD     1024  8192    16
  f:       42*     2492*     2449*    4.2BSD     1024  8192    16

Command (m for help): n
Segmentation fault

#

[end]

any idea why this happens and how to partition it using fdisk?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
