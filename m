From: "John T. Williams" <jowillia@vt.edu>
Subject: Damn unmouted root
Date: Thu, 24 Jun 2004 22:55:58 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1088132157.21223.11.camel@localhost>
Reply-To: jtwilliams@vt.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I've been having the hardest time getting a kernel I've compiled to
work.  I've compiled kernels at least a dozen times and this is the
first one that has given me any real trouble.  I think the issue might
be the scsi hard-drive.  

I've compiled in scsi support ( actually in, not as module ), but every
time I try to boot the kernel, i get the error 

VFS unable to mount root fs on /dev/hdf1

and a kernel panic.  

the kernel uses devfs and I'm passing the kernel 

root=/dev/hdf1 devfs=mount 

as I said, I'm pretty sure its the scsi harddrive that is giving me
problems as its the only thing in this situation that I've never had to
deal with before, but even with that insight I haven't been able to
figure out how to get the kernel.

Thanks,
John 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
