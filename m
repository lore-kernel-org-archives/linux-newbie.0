From: "Anshuman Rawat" <asr245@nyu.edu>
Subject: Partitioning problem
Date: Wed, 24 Jul 2002 17:24:23 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001601c23358$7b5bd630$e908a8c0@Viper>
References: <3D36DDA3.FA0F073C@gmx.net> <200207190752.38161.linux-newbie@jimmo.com> <pnjlha.6fv.ln@thune.mrc-home.org> <200207241807.06375.linux-newbie@jimmo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I want to have both WinXP and Linux (RHL7.3) on my system but am having
trouble with the partitions. My partition table (i dunno whether thats the
correct term) looks like this (as shown by linux installer ) -

                                Start   End        Size(MB)       Type
Mount point    Format
/dev/hda
    -Free                        1        1            8            Free
space
    -dev/hda1                 2        7            47          vfat
No
    -/dev/hda2                8        708        5499      NTFS
No
    -/dev/hda3               709     2432      13523    Extended
        -/dev/hda5           709     1413      5530      NTFS
No
        -/dev/hda6           1414   1419      47          ext2
/boot               Yes
        -/dev/hda7           1420   1453      267        swap
Yes
        -/dev/hda8           1454    2432     7697      ext2
/                       Yes

the error message i get is -> Boot partition may not meet booting
constraints for your architecture. Creation of boot disk is highly
encouraged.
The options I get is "modify partition" and "add anyway". If I proceed with
'add anyway' option installation is succesful but I dont get the option of
selecting the OS for booting the PC and the PC boots using WinXP.
I tried changing the /dev/hda1 partition to ext2 ,mount pt /boot. The
installation was succesful and so was the boot, but then the option of
starting with WinXP dissapeared. I could only boot with Linux
Can anyone help me out here?
btw I used Partition Magic from WinXP to partition the disc as I dont know
how to work around usinf fdisk in Linux.

-Anshu


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
