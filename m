From: Natarajan <knutties@indiainfo.com>
Subject: Block Device Size
Date: Sun, 2 Jun 2002 21:08:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206022108.23246.knutties@indiainfo.com>
Reply-To: knutties@indiainfo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi,
	I created a block device on an ext2 partition. I ran mkreiserfs on that 
device. What is the size of this device that I have created? Once I mount the 
device and use df, the size of the device is greater than that of the ext2 
partition in which I created the device.

Here is the ouput of df

/dev/hda9             3.4G  	2.0G  1.4G   58% /
none                    62M  	   0   	 61M	   0% /dev/shm
/dev/hda1             3.7G  	2.4G  1.3G   63% /mnt/win_c
/dev/hda5             3.4G  	2.5G  992M  72% /mnt/win_d
/dev/hda6             2.9G  	2.2G  826M  73% /mnt/win_e
/dev/hda7             2.9G  	2.1G  862M  72% /mnt/win_f
/dev/hda10            2.2G  	818M  1.2G  39% /natarajan
/natarajan/reiser.fs  3.7G  	 33M  3.6G   1% /natarajan/mount


-- 
Natarajan


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
