From: "Narsimha Reddy Challa" <fido@tcob1.net>
Subject: How to install two linux OSes on the same PC
Date: Wednesday, 05 Feb 2003 14:08:00 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_030205_140800__ae44054e@racenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All

Hi  All,

    I want to do two different linux installations rh 7.2 and rh 
8.0 on the same pc with single hard disk. I installed the rh 7.2 in
partitions say  /dev/hda5 ( /) ,  /dev/hda6  (/home) ,  /dev/hda7 (
/usr) ,
/dev/hda8 ( /tmp),... /dev/hda11  etc. 

   But how can I install the rh 8.0 in partitions say  /dev/hda12
( as "/" )  ... etc ??  Since the installer won't allow as there
already exists a  "/"  partition for the rh 7.2 and tries to override
it with the root partition of rh 8.0. So I tried giving a different
lable to the root partition of rh 8.0 say /root1 and other partitions
as /root1/usr, /root1/home, /root1/tmp etc. But here also the installer
is looking for the partition named "/" and without that the installation
is not happening. 


Please give your suggestions on how to resolve this problem.


At present my partition table with single installation (rh 7.2)  is,

[root@creddy-pc root]# fdisk -l

Disk /dev/hda: 255 heads, 63 sectors, 2434 cylinders
Units = cylinders of 16065 * 512 bytes

   Device Boot    Start       End    Blocks   Id  System
/dev/hda1   *         1       261   2096451    6  FAT16
/dev/hda2           262      2434  17454622+   5  Extended
/dev/hda5           262       522   2096451    6  FAT16
/dev/hda6           523       653   1052226   83  Linux
/dev/hda7           654      1175   4192933+  83  Linux
/dev/hda8          1176      1371   1574338+  83  Linux
/dev/hda9          1372      1436    522081   82  Linux swap
/dev/hda10         1437      1501    522081   83  Linux
/dev/hda11         1502      1566    522081   83  Linux
[root@creddy-pc root]#


TIA,
- Narsimha Reddy CH
-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
