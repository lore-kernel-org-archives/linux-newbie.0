From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: HD Partitiona
Date: Tue, 26 Nov 2002 15:16:40 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211261516.40320.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi All:

I am sure you recall my triad against RH 8.0, Suse 8.2, and Mandrake 8.0 so 
for info I finally got RH 8.0 on my laptop computer. I even managed to get 
the Hard Drive partition the way I wanted as follows:

hda1    C:/      NTFS    10 GB   Containing MS Windows XP
hda2    E:/      fat32     10 GB   Label = Data
hda3    /boot  ext2      100 MB   Linux Boot
hda4    extended
hda5    /         ext2        10 GB
hda6    swap                  1 GB
hda7    /home    ext2     5 GB

and with both operation systems installed and functioning.

Then I configures Usermount with an icon on the desk top and attempted to 
configure fstab so that hda2 was readable from RH 8.0.

Setting the file type for hda2 to fat32 in fstab I get a error message that 
that file type is not supported by Linux.

Changing the file type for hda2 to vfat I can read hda2 from linux but can not 
adjust the partition above 2 GB with Partition Magic. This latter seems 
strange to me as I have another dual boot with a vfat partition of 10 GB but 
I must admit that that box uses 2 HD with the vfat partition encompassing one 
(1) entire HD.

Would appreciate any suggestions or comments on how I can increase hda2 to 10 
GB and have this read by the linux side.

Thanks

Frank 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
