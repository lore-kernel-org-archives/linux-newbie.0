From: "Tom Beer" <mailings@analogon.com>
Subject: Re: USB device installation
Date: Thu, 18 Apr 2002 15:17:53 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00e901c1e6db$739bc820$0901a8c0@system>
References: <20020417221621.7E4A052728@psybernet.co.nz> <20020418081641.757F752728@psybernet.co.nz> <022101c1e6ba$18302b00$0901a8c0@system> <20020418121355.C487352729@psybernet.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: walter@psybernet.co.nz
Cc: linux-newbie@vger.kernel.org

Walter,

please tell us your system (uname -a).
Have you compiled some module for the smart
card reader? If yes, please let me the gcc version
(if you used gcc) know. 
What is your /etc/fstab entry?
Something similiar to

/dev/sda1 swap swap defaults 0 0  

??

What is the exact name of your smartcard drive?

Greets Tom



> Tom 
> 
> 
> > Probably is the -m flag right. try man 8 mknod. After reading
> > this I would recommend using
> >
> > mknod 660 -m /dev/sda1 -b 8 0
> 
> Great to get your help here... I cld not find man 8 for mkmod on my 
> PC or the net only man 2.
> 
> I kept getting invalid mode with your line... tried some other 
> options with no luck.
> 
> However mknod created the device in dev when I did not specify a 
> mode... that is probably what is wrong now?  (just tried chmod to 
> implement the 660 - I think that worked, but the final result is 
> the same.)
> 
> At least the sda1 is *there* but ... 
> 
> see results below...
> 
> Where to from here i wonder?
> 
> 
> Walter
> 
> ~~~
> 
> 
> # mknod 660 -m /dev/sda1 b 8 0
> mknod: invalid mode
> 1047 root@psybernet:/dev (11:54:45)
> # mknod    /dev/sda1 b 8 0
> 1048 root@psybernet:/dev (11:55:00)
> # ls -al | grep sda1
> brw-r--r--    1 root     root       8,   0 Apr 18 23:49 sda1
> 1049 root@psybernet:/dev (11:55:30)
> # mount -t vfat /dev/sda1 /mnt/smedia
> mount: /dev/sda1: unknown device
> 1050 root@psybernet:/dev (11:55:51)
> #
> 
> ~~~
> 
> 1052 root@psybernet:/dev (00:06:21)
> # chmod 660 sda1
> 1053 root@psybernet:/dev (00:06:54)
> # mount -t vfat /dev/sda1 /mnt/smedia
> mount: /dev/sda1: unknown device
> 1055 root@psybernet:/dev (00:09:08)
> # ls -al | grep sda1
> brw-rw----    1 root     root       8,   0 Apr 18 23:49 sda1
> 
> -- 
> Walter Logeman
> Psychotherapist
> http://www.psybernet.co.nz
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
