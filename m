From: James Miller <jamtat@mailsnare.net>
Subject: Re: dual boot
Date: Thu, 17 Jul 2003 10:54:26 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0307171042150.1107@homenet>
References: <HBEJLOFMLEPBMAAEFNFDCEMLCAAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDCEMLCAAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie <linux-newbie@vger.kernel.org>

On Thu, 17 Jul 2003, Anna G. Zapata wrote:
>
> I would like to install RH 8.0 on my W2K laptop (a dual boot).  I entered
> the installation program without a problem and finally came upon the
> partioning section of the setup.  I clicked to use an automatic partition
> and clicked next.  I was told that there wasn't enough disk space, but I
> know that I have a little over 2G on the drive.  Does anyone have any
> suggestions as to what I'm doing wrong?
>
I don't know RH 8's setup routine, but I would guess that it would either:
1) expect to find an already-formatted (ext2, ext3, reiserfs) Linux
partition on your system (and maybe an already-created swap partition as
well); or 2) would expect to find some free space on the drive (space not
yet allocated for another OS).  A third possibility, and one I see Knoppix
includes in their latest release, is that the install routine would offer
to resize an existing partition to make space for the installation.  Not
knowing RH 8, I can't say with which of these you may have been confronted
- if any.  But your description seems to indicate that maybe you've
alloted the whole of your laptop's drive space to W2K.  If you have, and
if RH 8 comes with no disk resizing capability, then it would most likely
indicate that there was no space on the disk for the install.  If that's
the case, until you free up some space for a Linux partition, you won't be
able to install Linux.

Caveat to that last statement: you can run Linux from a DOS/Win filesystem
(as long as it's not NTFS, IIRC) using certain distros - I think WinLinux
is the name of one such distro.  I doubt RH can do this though.  There are
certain performance hits in using this approach, as I understand it.  So,
you need not necessarily resize/repartition your disk to run certain types
of Linux.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
