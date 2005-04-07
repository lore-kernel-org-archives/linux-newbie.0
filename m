From: smertz <smertens@mho.com>
Subject: Partitioning
Date: Thu, 07 Apr 2005 08:18:03 -0600
Message-ID: <d33fap$ouf$1@sea.gmane.org>
Reply-To: smertens@mho.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I noticed after installing Red Hat Enterprise Linux ES release 4 
(Nahant) last week when I do a fdisk -l that the automatic partitioning 
might not have done such a good job of partitioning out my 200 GIG HD.

[root@localhost ~]# fdisk -l

Disk /dev/sda: 200.0 GB, 200049647616 bytes
255 heads, 63 sectors/track, 24321 cylinders
Units = cylinders of 16065 * 512 = 8225280 bytes

    Device Boot      Start         End      Blocks   Id  System
/dev/sda1   *           1          13      104391   83  Linux
/dev/sda2              14       24321   195254010   8e  Linux LVM
[root@localhost ~]#


Shouldn't there normally be a few more partitions like /swap /usr etc? 
If so is it possible to manipulate these post install?  Or better to go 
back and re-install and manually do the partitions? Either way I would 
appreciate any advice on allocating the HD out.  There will be no other 
OS on this drive/machine, just RH.

Also I'm curious why my Hard drives are listed as sda1.  These are ATA 
drives.  Just looked at the drive they are the new SATA drives and may 
be recognized incorrectly.

Thanks

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
