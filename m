From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: How to install two linux OSes on the same PC
Date: Wed, 5 Feb 2003 15:58:08 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0302051558080F.19519@unix.pa3gcu>
References: <3E418B46.633C0199@npd.hcltech.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E418B46.633C0199@npd.hcltech.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Narsimha Reddy CHALLA <creddy@npd.hcltech.com>, linux-newbie@vger.kernel.org

On Wednesday 05 February 2003 22:08, Narsimha Reddy CHALLA wrote:
> Hi  All,
>
>     I want to do two different linux installations rh 7.2 and rh
> 8.0 on the same pc with single hard disk. I installed the rh 7.2 in
> partitions say  /dev/hda5 ( /) ,  /dev/hda6  (/home) ,  /dev/hda7 (
> /usr) ,
> /dev/hda8 ( /tmp),... /dev/hda11  etc.
>
>    But how can I install the rh 8.0 in partitions say  /dev/hda12
> ( as "/" )  ... etc ??  Since the installer won't allow as there
> already exists a  "/"  partition for the rh 7.2 and tries to override
> it with the root partition of rh 8.0. So I tried giving a different
> lable to the root partition of rh 8.0 say /root1 and other partitions
> as /root1/usr, /root1/home, /root1/tmp etc. But here also the installer
> is looking for the partition named "/" and without that the installation
> is not happening.
>
>
> Please give your suggestions on how to resolve this problem.

Edit properly in that menu where it ask's for partition info for installing.

I have Redhat 7.2, slackware gentoo and peanut all on one disk.

Slackware was installed first, then redhat.

>
>
> At present my partition table with single installation (rh 7.2)  is,
>
> [root@creddy-pc root]# fdisk -l
>
> Disk /dev/hda: 255 heads, 63 sectors, 2434 cylinders
> Units = cylinders of 16065 * 512 bytes
>
>    Device Boot    Start       End    Blocks   Id  System
> /dev/hda1   *         1       261   2096451    6  FAT16
> /dev/hda2           262      2434  17454622+   5  Extended
> /dev/hda5           262       522   2096451    6  FAT16
> /dev/hda6           523       653   1052226   83  Linux
> /dev/hda7           654      1175   4192933+  83  Linux
> /dev/hda8          1176      1371   1574338+  83  Linux
> /dev/hda9          1372      1436    522081   82  Linux swap
> /dev/hda10         1437      1501    522081   83  Linux
> /dev/hda11         1502      1566    522081   83  Linux
> [root@creddy-pc root]#
>
>
> TIA,
> - Narsimha Reddy CH

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
