From: azie <azie@kawan.net>
Subject: Re: fdisk
Date: Thu, 18 Jul 2002 16:14:25 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207181614.25695.azie@kawan.net>
References: <200207171136.14806.azie@kawan.net> <3D35B69B.7050503@jpl.nasa.gov>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D35B69B.7050503@jpl.nasa.gov>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

i don't have libsafe in /etc/ld.so.conf . The problem only occurs in /dev/hda. 
My /dev/hdb shows normal fdisk printout & can performs all fdisk commands :

Disk /dev/hdb: 255 heads, 63 sectors, 4863 cylinders
Units = cylinders of 16065 * 512 bytes

   Device Boot    Start       End    Blocks   Id  System
/dev/hdb1             1       392   3148708+   b  Win95 FAT32

The hda harddisk is the original harddisk that comes with Dell PC and 
previously preloaded with Windows XP. I wipe out everything during RedHat 7.3 
installation. The only way for me to partition & format the hda is during RH 
installation. Just wondering what exactly wrong with the harddisk. :)

On Thursday 18 July 2002 02:25 am, Bryan Whitehead wrote:
> Is libsafe being pre-loaded in /etc/ld.so.preload ?
>
> I had problems with fsck, fdisk, and mkfs.ext2 when libsafe was being
> preloaded.
>
> If the partition table is in some weird format, and you don't care about
> the data on the disk. You could just wipe the disk clean before you
> fdisk it. 'dd if=/dev/zero of=/dev/hda'
>
> azie wrote:
> > I'm using Dell Dimension PIV 2.0 with 40GB harddisk. When I try to use
> > fdisk to repartition my harddisk, I got this error.
> >
> > [begin]
> >
> > # fdisk /dev/hda
> >
> > Command (m for help): p
> >
> > Disk /dev/hda: 255 heads, 63 sectors, 2491 cylinders
> > Units = cylinders of 16065 * 512 bytes
> >
> >
> > 8 partitions:
> > #       start       end      size     fstype   [fsize bsize   cpg]
> >   a:        1         7*        6*    4.2BSD     1024  8192    16
> >   b:        7*       40*       32*      swap
> >   c:        1      2492*     2491*    unused        0     0
> >   e:       40*       42*        2*    4.2BSD     1024  8192    16
> >   f:       42*     2492*     2449*    4.2BSD     1024  8192    16
> >
> > Command (m for help): n
> > Segmentation fault
> >
> > #
> >
> > [end]
> >
> > any idea why this happens and how to partition it using fdisk?
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie"
> > in the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
