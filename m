From: Ray Olszewski <ray@comarre.com>
Subject: Re: fdisk
Date: Tue, 16 Jul 2002 21:29:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020716210946.02167c00@celine>
References: <200207171136.14806.azie@kawan.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207171136.14806.azie@kawan.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: azie <azie@kawan.net>, Linux Newbie <linux-newbie@vger.kernel.org>

A segfault occurs when a program attempts to access memory that the kernel 
has not allocated to it. In practice, a segfault error message usually 
means one of two things:

         1. A bug in the application being run. A common one is trying to 
read past the end of an array; C does not have a built-in check for this, 
and programmers too often forget to do range checking.

         2. A hardware problem, typically flaky RAM (which can trash an 
address pointer).

Without more information about your setup, I can't really tell you more 
about the error.

On the hardware side, how much RAM does the system have? Does the system 
segfault on other occasions?

On the software side, what Linux distribution and version? What version of 
fdisk (your -p printout is very different from mine, and I'm quite curious 
as to why it says it has 8 partitions but only lists 5)? Why is your Linux 
system using only BSD partitions ... or are they partitions from a prior OS 
that you are trying to replace? And where are you running fdisk from (the 
installer floppy or CD of your Linux distro, or what)?

Also, I may be reading it wrong (as I said, my fdisk has a different 
format), but it appears that even if fdisk were working, you couldn't add a 
new partition to that disk, since the 4 usable partitions (that is, 
excluding the extended partition shown in your list as C: and, presumably 
incorrectly, labeled "unused") already use all 2491 cylinders, leaving no 
space for new partitions. Assuming the BSD partitions are from a prior 
installation of an OS you are replacing, I'd suggest you first try deleting 
one or more of them to provide some room for Linux partitions.

At 11:36 AM 7/17/02 +0800, azie wrote:
>I'm using Dell Dimension PIV 2.0 with 40GB harddisk. When I try to use fdisk
>to repartition my harddisk, I got this error.
>
>[begin]
>
># fdisk /dev/hda
>
>Command (m for help): p
>
>Disk /dev/hda: 255 heads, 63 sectors, 2491 cylinders
>Units = cylinders of 16065 * 512 bytes
>
>
>8 partitions:
>#       start       end      size     fstype   [fsize bsize   cpg]
>   a:        1         7*        6*    4.2BSD     1024  8192    16
>   b:        7*       40*       32*      swap
>   c:        1      2492*     2491*    unused        0     0
>   e:       40*       42*        2*    4.2BSD     1024  8192    16
>   f:       42*     2492*     2449*    4.2BSD     1024  8192    16
>
>Command (m for help): n
>Segmentation fault
>
>#
>
>[end]
>
>any idea why this happens and how to partition it using fdisk?


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
