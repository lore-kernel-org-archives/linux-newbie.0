From: "Mike Turcotte" <Mike.Turcotte@cityofnorthbay.ca>
Subject: RE:  Partitioning
Date: Thu, 7 Apr 2005 10:32:04 -0400
Message-ID: <C6FD667B200BDF4F964C1BA77B796CE20F5E7C@cnbmail2.city.north-bay.on.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Many new Serial ATA controllers have their modules listed as SCSI
devices, I am not sure why, I think it has to do with their standards or
something. This is normal. Also, what the auto partitioning did was
create a 100 Mbyte partition for use as /boot, and the rest of the drive
allocated as LVM (Logical Volume Manager). What you do is create virtual
file systems inside the LVM (such as /, /usr, /var, /home, whatever).
This quickly becoming the norm in the Linux community.

Michael Turcotte
Information Systems
City of North Bay
200 McIntyre St. E
PO Box 360
North Bay, Ontario
P1B 8H8
 
Mike.Turcotte@cityofnorthbay.ca
http://www.cityofnorthbay.ca 

> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-
> owner@vger.kernel.org] On Behalf Of smertz
> Sent: Thursday, April 07, 2005 10:18 AM
> To: linux-newbie@vger.kernel.org
> Subject: Partitioning
> 
> I noticed after installing Red Hat Enterprise Linux ES release 4
> (Nahant) last week when I do a fdisk -l that the automatic
partitioning
> might not have done such a good job of partitioning out my 200 GIG HD.
> 
> [root@localhost ~]# fdisk -l
> 
> Disk /dev/sda: 200.0 GB, 200049647616 bytes
> 255 heads, 63 sectors/track, 24321 cylinders
> Units = cylinders of 16065 * 512 = 8225280 bytes
> 
>     Device Boot      Start         End      Blocks   Id  System
> /dev/sda1   *           1          13      104391   83  Linux
> /dev/sda2              14       24321   195254010   8e  Linux LVM
> [root@localhost ~]#
> 
> 
> Shouldn't there normally be a few more partitions like /swap /usr etc?
> If so is it possible to manipulate these post install?  Or better to
go
> back and re-install and manually do the partitions? Either way I would
> appreciate any advice on allocating the HD out.  There will be no
other
> OS on this drive/machine, just RH.
> 
> Also I'm curious why my Hard drives are listed as sda1.  These are ATA
> drives.  Just looked at the drive they are the new SATA drives and may
> be recognized incorrectly.
> 
> Thanks
> 
> -
> To unsubscribe from this list: send the line "unsubscribe
linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
