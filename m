From: Beolach <beolach@comcast.net>
Subject: Re: Damn unmouted root
Date: Fri, 25 Jun 2004 06:43:10 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40DC1DDE.6000607@comcast.net>
References: <1088132157.21223.11.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1088132157.21223.11.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: jtwilliams@vt.edu
Cc: linux-newbie@vger.kernel.org

I've never myself done anything w/ SCSI drives (other than ide-scsi
emulation for CD-Writing pre kernel 2.6), but I thought SCSI harddrives
were usually /dev/sd?, while IDE drives were /dev/hd?.

From /usr/src/linux-2.6.7/Documentation/devices.txt:

  8 block       SCSI disk devices (0-15)
                  0 = /dev/sda          First SCSI disk whole disk
                 16 = /dev/sdb          Second SCSI disk whole disk
                 32 = /dev/sdc          Third SCSI disk whole disk
                    ...
                240 = /dev/sdp          Sixteenth SCSI disk whole disk

                Partitions are handled in the same way as for IDE
                disks (see major number 3) except that the limit on
                partitions is 15.

Good luck,
Conway S. Smith


John T. Williams wrote:
> I've been having the hardest time getting a kernel I've compiled to
> work.  I've compiled kernels at least a dozen times and this is the
> first one that has given me any real trouble.  I think the issue might
> be the scsi hard-drive.  
> 
> I've compiled in scsi support ( actually in, not as module ), but every
> time I try to boot the kernel, i get the error 
> 
> VFS unable to mount root fs on /dev/hdf1
> 
> and a kernel panic.  
> 
> the kernel uses devfs and I'm passing the kernel 
> 
> root=/dev/hdf1 devfs=mount 
> 
> as I said, I'm pretty sure its the scsi harddrive that is giving me
> problems as its the only thing in this situation that I've never had to
> deal with before, but even with that insight I haven't been able to
> figure out how to get the kernel.
> 
> Thanks,
> John 
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
