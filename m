From: Pacheco Jason NPRI <PachecoJ@Npt.NUWC.Navy.Mil>
Subject: RE: kernel compilation problem
Date: Tue, 23 Dec 2003 08:46:17 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3BEEE23D31CAD2118D920008C75D8946059FF59E@NPRI54EXC21.NPT.NUWC.NAVY.MIL>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Linux-Newbie (linux-newbie@vger.kernel.org)" <linux-newbie@vger.kernel.org>

>       Hi,
> I was compiling the 2.4.18 kernel as a practice run and when I booted 
> thru it I recieved a message during boottime:
> Kernel panic: VFS unable to mount root fs on 03:05.
> any clues why?

Did you copy over your /usr/src/linux/System.map file into /boot? Also,
did you build an initial ramdisk via mkinitrd? A lot of times that last
step is overlooked but is necessary because it loads the initial drivers
needed to mount the hard disk partitions.

> I run the Debian woody release.
> also when I boot thru my working kernel, I get a message 
> during boottime:
> spurious 8259A interrupt : IRQ7
> any ideas?

I just recently built my first Debian system and I get the same error,
except I think the number is different. The system was a junk testbed, so
I figured it was my piece of garbage mobo, which his a Soyo K7ADA+. Anyway,
the error doesn't seem to cause a problem other than having that annoying
message popup here and there, but I would like to figure out how to solve
it as well.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
