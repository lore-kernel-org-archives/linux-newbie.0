From: ichi@ihug.co.nz
Subject: Re: auto login
Date: Mon, 16 Sep 2002 08:05:01 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D8590AD.46E320C6@ihug.co.nz>
References: <F22LjQyKNRocEvBff6e0000a72a@hotmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: a a <xlsd@hotmail.com>
Cc: linux-newbie@vger.kernel.org

a a wrote:
> 
> Is there a way i can automatically login as 
> root when i boot up the computer?

If you look in /etc/inittab, you will probably find
(down near the bottom) a group of lines that look 
something like this:
---------------------------------------------
c1:1235:respawn:/sbin/agetty 38400 tty1 linux
c2:1235:respawn:/sbin/agetty 38400 tty2 linux
c3:1235:respawn:/sbin/agetty 38400 tty3 linux
---------------------------------------------

It is the getty that prompts for the login name.
To avoid the login prompt, you can edit the line 
to go directly to bash:
--------------------------------
c1:1235:respawn:/bin/bash -login
--------------------------------

I use this technique for a NFS server (no keyboard, no VDU) 
that only gets turned on occasionally.  It runs in a ramdisk 
(using a BasicLinux foundation) and automatically mounts and
serves the target drive (read-only).  Turn it on when you 
need it, turn it off when you're done, no worries.

Cheers,
Steven

______________________________
http://www.volny.cz/basiclinux

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
