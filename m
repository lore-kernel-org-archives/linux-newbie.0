From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re: really hidden hidden files
Date: Sat, 24 Aug 2002 19:21:22 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CPIMSSMTPU05KKQpQq500001846@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: Robert Haehnel <HaehnelRobert@netscape.net>
Cc: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

So you have reformatted the drive and things are still confused?  I would run a new fdisk, delete all the partions from that hard drive and start over from there.  OR if it's a SCSI drive, I'd use the low level routines, format the little bugger and then run the fdisk.

Of course if you have linux on that hard disk I would use the linux partition programs to delete and readd the fat32/fat16 partition.

Alan

 >>  Here is the deal. My son trashed the windows 98 installation on our home
 >>  PC. So I formatted the Windows partition and started over with a clean
 >>  install. However, the install did not go smoothly. It rebooted as part of
 >>  the install process, and tried to reformat the windows partition, but the
 >>  installation is confused, and what it thinks is the hard drive is
 >>  actually the CD drive. Of course it can't do that, and it is stuck right
 >>  there and won't go any further. First I dropped out of the install
 >>  process, and tried to clean it's memory (on c:) of what it had done so
 >>  far in the install process by formatting the windows partition. This did
 >>  not purge the partition of the hidden files that are created during the
 >>  install process to keep the install information during reboot.

 >>  So ... I had a bright idea (anyway, I thought it was bright). Maybe I can
 >>  see these hidden files in Linux, and wipe the slate clean there. Well I
 >>  only had partial success. I booted into Linux, mounted the windows
 >>  partition, and typed 

 >>  ls -la

 >>  to see what was on the partition. It only showed "." and "..", but it
 >>  reported 5 files were present (Ha, a clue!, Maybe..). Anyway, I think
 >>  that what the ls command told me was it saw three hidden files there even
 >>  though it didn't list them. Unfortunately, an "rm *" doesn't remove them.

 >>  Does anyone have an idea of how I can see these hidden files and more
 >>  importantly remove them, so I can clean up and start over.

 >>  BTW, I have already given my son a justly deserved dope slap for trashing
 >>  the computer, so I did cover that detail.

 >>  Thanks for your help in advance.


 >>  --

 >>  R. Haehnel




 >>  __________________________________________________________________
 >>  Your favorite stores, helpful shopping tools and great gift ideas.
 >>  Experience the convenience of buying online with Shop@Netscape!
 >>  http://shopnow.netscape.com/

 >>  Get your own FREE, personal Netscape Mail account today at http://




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
