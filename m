From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sharing drives.
Date: Wed, 02 Oct 2002 09:09:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021002090054.02d0a9d0@celine>
References: <000501c269e8$b8ca73c0$af33f7c2@gcb>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000501c269e8$b8ca73c0$af33f7c2@gcb>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: geoff <geoff@gcbagley.uklinux.net>, linux-newbie@vger.kernel.org

I can't speak to "inadvisable", but the approach you ask about is perfectly 
feasible. A common use of this sort of setup is to have a /home partition 
that is common to the two distros.

It is more than you need, though. Each distro can mount the other's root 
partition (and its other partitions, depending on what you created) 
directly on any convenient mount point(s).

For example, if you have Debian's root (/) partition on /dev/hda1 and 
SuSE's on /dev/hdb1, you can mount the SuSE partition on Debian with these 
two commands (run as root):

         mkdir /mnt/SuSE_root
         mount -t ext2 /dev/hdb1 /mnt/SuSE_root

The first line just creates the mount point (assuming /mnt already exists, 
as it usually does) and need be done only once. The second does the actual 
mount and needs to be done whenever you reboot (modify the -t argument if 
you use a different filesystem type). Or, once you've created the mount 
point, you can add a line to /etc/fstab to automount it every time (a look 
at /etc/fstab will probably be enough for you to figure this part out).

BTW, for converting packages between .rpm and .deb, you might want to look 
at "alien".

At 08:52 AM 10/2/02 +0100, geoff wrote:
>I have a dual-boot Linux system.  Debian 3.0 (Woody), and SuSE 8.0 (Prof).,
>on separate drives sharing a common machine  (Pentium III at 600 MHz).
>
>Both work well, and I am enjoying learning the differences between them,
>running
>them as separate alternatives.
>
>Would it be inadvisable to have a third hard disk drive  on the same shared
>machine,
>which is mountable on either distro, in order to enable files from (say)
>Debian to be transfered
>into SuSE,   (or vice-vers) or would I be asking for trouble ?
>
>Can I use a common  device  (say)  /dev/hdc  as  a common part of two
>partition systems ?
>
>A possible use would be to YaST/ RPM into Debian, or APT/ DEB into SuSE.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
