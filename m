From: "Karl W. Weigel" <kww@gmx.de>
Subject: Re: samba -> some problems
Date: Sat, 18 Jan 2003 18:19:09 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301181819.09684.kww@gmx.de>
References: <3E294388.7050707@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E294388.7050707@rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kurt.sys@rug.ac.be
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Hi Kurt,

as far as I can see, you just have to update your /etc/fstab, which translates 
the device to a mount point. This file holds already the configuration for 
your cdrom and floppy. In my configuration there is

/etc/fstab:
/dev/fd0		/media/floppy	auto	noauto,user,sync      0 0

which has the meaning: use /dev/fd0 als device, /media/floppy as mount point, 
auto: use any filesystem you can detect, noauto: do not mount at start, user: 
allow the user to do this.

To solve your problem, you have to create entries for the filesystems you want 
to mount.

/etc/fstab:
//labmetserver/information /mnt/labmet/information smbfs
	username=kurts/LMEDOM%xxxxxxxxxxxx 0 0

(This should be written in one line)


The second problem is, that you need to use the share-name for mounting, you 
can not mount "everything" on the smb-server. Maybe there is a way with 
automounting, but I am not shure about this.

For your remaining problems I can offer only little help. I have the 
impression, that you are setting up a samba server of your own, but I am not 
shure, whether you want or need to do this. For mounting remote filesystems 
this should not be necessary.

It would be nice to know, whether this answered some of your questions.


Kind regards
Karl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
