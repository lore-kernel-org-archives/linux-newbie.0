From: James Miller <jamtat@mailsnare.net>
Subject: Re: Hard disk repartitioning
Date: Wed, 2 Apr 2003 22:57:20 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0304022222360.1804@homenet>
References: <20030403041632.54806.qmail@web20711.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030403041632.54806.qmail@web20711.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arthur Kng <arthur_kng@yahoo.com>
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

Repartitioning a drive is always risky - more so if you're new at it. Be
prepared for the possibility of losing data and/or having to start
everything from scratch again (including your DOS/Win partitions). There's
just no absolutely safe way to do this sort of thing: I've done it many
times and have many times had to trash a whole install (all partitions)
and start over again from scratch.

That said, there are plenty of utilities, both free and commercial, that
are written for partitioning drives. I don't recall offhand what, if
any, particular issues there may be with partitioning an extended,
as opposed to primary, partition. Parted is the Linux partitioning utility,
and it is a great tool. It's also command line only, and uses some
peculiar terminology, so could be pretty intimidating (and confusing) for
the newbie. Fips is the free partitioning utility written for DOS. I've
used that very little, and so can't say much about it. There is, of
course, plenty of documentation on both of these. So far as I know, these
are all the free partitioning utilities.

Then, there are the commercial ones. These seem to all have graphical front
ends. Partition Magic is probably the best known of these. Another I've
used and been very pleased with which is actually shareware is called
Bootit. Bootit is actually a boot loader, meaning it is a program designed
to boot multiple operating systems on a single computer. It also comes
with a nice set of disk manipulating tools, including HD partitioning
utilities. The great thing about Bootit is that you can do the download
(on a Win machine), create the boot/install disk, boot from it, cancel the
install, and be taken to a set of graphical disk manipulating tools. In
other words, you don't have to install anything in order to use the disk
partitioning tools. There are other commercial disk partitioning tools,
but I'm sure you can find out about them on your own.

You'll need to figure out how you'll boot your dual boot system as well.
Lilo is a great boot loader and can boot Win/DOS partitions. If you want
to boot to Linux from Win, you'll need to use loadlin: you'll also need to
prevent whatever Linux you install from putting boot code in the MBR if
you want your dual boot system set up this way. Or, you can use a
commercial (or free, like XOSL) boot loader.

Finally, you might want to try Knoppix, which runs from a CD (and a
ramdisk). You don't need to install anything on your computer to use Linux
when using Knoppix. You can also set up a swap space on your Win/DOS
drive under Knoppix, to "stretch" your RAM a bit.

I have some ideas on how much swap space you might need, but I'll let
others here who are much more experienced in using and administering Linux
systems address that.

James

On Wed, 2 Apr 2003, Arthur Kng wrote:

> Dear all,
>
> I have a 20GB hard disk with a 5GB primary partition(C
> drive, DOS partition) and 15GB logical partition(D
> drive, extended DOS partition). The C drive has WinME
> and all application softwares and has 3.74 GB of free
> space. The D drive has all my data and has 9.84 GB of
> free space. I want to install Linux on this box.
>
>     i want to have a dual boot system and donot want
> to lose any existing data. can anyone please suggest
> how do i repartition my disk. ive read a few articles
> and HOWTOs on this and frm what i gather is that a
> dual boot system should look like this:
>
>            1)Windows partion (FAT32)
>            2)Linux partition
>            3)Swap partition
>            4)Partition for data accesible from Windows
> and Linux(FAT32)
>
>        now these articles explained this
> repartitioning when their original disk had a single
> primary dos partition. so my problem is how do i
> repartition my disk which has a primary and a logical
> partition?
>
>
>    also i have 128MB RAM. so what should be the size
> of my Swap partition?
>
>       thanks for your help .
>
>           AK.
>
> __________________________________________________
> Do you Yahoo!?
> Yahoo! Tax Center - File online, calculators, forms, and more
> http://tax.yahoo.com
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
