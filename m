From: Ray Olszewski <ray@comarre.com>
Subject: RE: kernel compilation problem
Date: Tue, 23 Dec 2003 08:51:33 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031223084227.01f4cec0@celine>
References: <3BEEE23D31CAD2118D920008C75D8946059FF59E@NPRI54EXC21.NPT.N
 UWC.NAVY.MIL>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3BEEE23D31CAD2118D920008C75D8946059FF59E@NPRI54EXC21.NPT.N
 UWC.NAVY.MIL>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:46 AM 12/23/2003 -0500, Pacheco Jason NPRI wrote:
> >       Hi,
> > I was compiling the 2.4.18 kernel as a practice run and when I booted
> > thru it I recieved a message during boottime:
> > Kernel panic: VFS unable to mount root fs on 03:05.
> > any clues why?

Where is the host's actual root filesystem? 03:05 says the kernel is 
looking for it on /dev/hda5 ... is that the right place or not? (It's not 
typical for a Debian install, but not impossible either.)

If it is correct -- what filesystem type is it? (ext2, most likely). Make 
sure your kernel has support for that filesystem type compiled in.

If it is incorrect -- what partition should it be? Are you compiling the 
kernel on the same system you are trying to boot it on? What happens if you 
specify the correct partition at the lilo (or grub or whatever you use for 
a bootloader) prompt? Are you booting from hda?


>Did you copy over your /usr/src/linux/System.map file into /boot? Also,
>did you build an initial ramdisk via mkinitrd? A lot of times that last
>step is overlooked but is necessary because it loads the initial drivers
>needed to mount the hard disk partitions.

No it's not. It is only necessary if the kernel does not have ide support 
compiled in (not usual) or dos not have support for your filesystem type 
compiled in (again unusual, if the filesysystem is ext2). Typical, 
"vanilla" systems do not need the initrd step to boot/init.

> > I run the Debian woody release.

[rest omitted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
