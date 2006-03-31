From: Bo Yang <struggleyb@gmail.com>
Subject: Re: cannt open root device ?
Date: Fri, 31 Mar 2006 13:50:32 +0800
Message-ID: <442CC328.9000906@gmail.com>
References: <442C9885.8000703@gmail.com> <Pine.LNX.4.64.0603302233010.6607@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0603302233010.6607@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org


> This is actually a VMware question more than a Linux question.  They 
> have a user forum: have you tried posting about your problem there?  I 
> have a little bit of experience with VMware, but you don't provide 
> enough information for me to take a stab at what the problem might 
> be.  First, is this a virtual disk or are you trying to use an actual 
> scsi hardware disk for your Gentoo install?  I have no expereince with 
> using a real disk or partition for the guest OS, only with virtual disks.
It is a scsi virtual disk ,  and VM  display it as '' Hard Disk 1: 
(SCSI  0:0)"
> So I might not be able to help with that anyway.  If it's a virtual 
> partition I can't understand why you would specify it as /dev/sda3.  
> I've always put OS's on the first partition of the virtual disk.  
> VMware presents these virtual disks to the host OS as scsi disks, so 
> my experience has always been with systems installed to /dev/sda1.  
> Did you partition the (virtual?) disk and put /home and swap or 
> something on the other 2 partitions?  Anyway, I'm not even sure I can 
> help.  Probably best to try the VMware forums.
And I have partition the disk for 4 part .
/dev/sda1  /boot  reiserfs
/dev/sda2  swap  swap
/dev/sda3  /          reiserfs
/dev/sda4  /usr    reiserfs

So I tell the lilo to mount the root file system in the partition 
/dev/sda3 , is it wrong ?

Thank you for your reply !
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
