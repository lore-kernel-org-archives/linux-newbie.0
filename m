From: Ray Olszewski <ray@comarre.com>
Subject: Re: Getting a valid display under Debian revisited
Date: Tue, 09 Dec 2003 10:43:46 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031209102527.0200d930@celine>
References: <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu> <Pine.LNX.4.58.0312091046300.1655@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0312091046300.1655@debian-box>
References: <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

1.My memory is hazy on this (because I always upgrade immediately to a 
recent 2.4.x kernel after installing, and it's been some months now since I 
did my last install), but I think I recall that the 2.2.20 kernel on the 
Debian install disks uses the framebuffer (if so, you'll note that early in 
the boot/init sequence, the display "blinks" and you see  it change to a 
display that has a small, color  penguin near the top - that's the sign of 
the kernel framebuffer). The kernel framebuffer and X sometimes do not play 
well together, so that *could* be the source of your problem.

If it is, you need either to switch to a kernel without framebuffer support 
(see next item) or tell X that it needs to use the kernel framebuffer 
device (I don't do it this way so don't recall how to do it ... might even 
be an option in the setup script, which you can run with, I think, 
"dpkg-reconfigure xserver-xfree86" ...perhaps someone else can chime in 
here with more exact advice?).

2. After you switch from Woody to Sid, you'd do better to switch to the 
current kernel ... either the kernel-image-2.4.22-* appropriate for your 
hardware or your own kernel, compiled from kernel-source-2.4.22 . 2.2.20 is 
really just intended as a temporary kernel for use during install.

3. The other possibility I can think of is that you are trying to use a 
vfreq or hfreq that your monitor deos not support (or have I previously 
suggested this? I don't recall your earlier postings in any detail). 
Probably not, since this problem usually makes it impossible toswitch back 
to vts.

4. I'm not sure what is putting a "pointer to /dev/mice/???" in your 
XF86Config-4 file, but that sounds like an attempt by something to use the 
devfs filesystem for devices, a pesudo-filesystem you probably do not have 
installed. Your adopted solution should serve, but it would be better to 
correct this through dpkg-reconfigure than as a hand edit ... that way, it 
will survive apt-get update/upgrade cycles.


At 11:21 AM 12/9/2003 -0600, jamtat@mailsnare.net wrote:
>Hello all.  I'm still experimenting with various ways of installing
>Debian.  Since I seem to have hosed the gui on a system I've been using,
>and since a "new" computer showed up in the dumpster over at the
>department, my latest victim for cruel Debian install experiments is a
>P166 with 32MB RAM, 2GB HD and S3Trio64v+ video card (among other things).
>I chose the floppy install: six diskettes, then everything downloaded from
>the 'net (the machine had an SMC NIC as well, and I have a fairly fast
>connection here at the U).  So, the base system was installed as Woody
>(2.2.20 kernel and all).  Side note: I really wanted to try out the new
>installer beta, but I couldn't access any documentation on it (maybe
>because of the Debian server compromises of late).
>
>After installing the base system, I edited /etc/apt/sources.list and
>switched over to unstable.  I then ran apt-get update, apt-get
>dist-upgrade.  Then, I proceeded to install additional software - the X
>window system being the central concern, installed using tasksel.  I also
>installed (apt-got) fluxbox for a WM.  Entered settings for my monitor
>and video card when asked.  On next boot, however, I got pretty much the
>same black screen I wrote to the list about earlier - though that black
>screen was with a different video card, monitor and computer: it's just
>blank black, as though the monitor is powered off.  The difference in this
>case is that I can ctrl-altFsomething and get to other virtual terminals.
>I can also kill X windows by going to the terminal X runs on and hitting
>ctrl-alt-backspace.  This was more than I could do on the other machine.
>
>So, I conclude that I'm doing something really fundamental really
>wrong(ly).  I want to start by asking if I should expect the sid/unstable
>version of X windows to have any conflicts with running on a system using
>the older 2.2.20 woody/stable kernel (both systems I'm having display
>problems with run sid/unstable XFree86 and the stable 2.2.20 kernel)?  I
>noted among the messages on screen when either firing up or killing X
>windows that it was compiled using the 2.4.22 kernel.  I also noted a
>pointer to /dev/mice/???  that my system couldn't make sense of in
>XF86Config-4, and which I edited to point to /dev/psaux.
>
>Before going on to any more in-dpeth trouble shooting on this, I'd just
>like to ask if I might not be running into problems at some really basic
>level like using the older, stable kernel with the newer XFree86.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
