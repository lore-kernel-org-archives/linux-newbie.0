From: Peter <pfheiss@philonline.com>
Subject: Re: RH7.3 keyborad lock-up
Date: Sat, 10 Aug 2002 14:23:40 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02081013393200.02846@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Thanks Riley and Ray!


rhw@InfraDead.Org said:
> Basically, to locate the actual problem, we need to confirm the
> precice differences between a working configuration and one that
> isn't. Also, where there are two or more programs that can be
> identified as causing a specific problem in one configuration but not
> in another, we can be fairly sure that the problem is in something
> that is common to all of those programs.

> For this reason, can you first confirm that you can upgrade tuxracer
> and chromium to the versions supplied with 7.3 without having this
> problem turn up on you? 

If I try to install tuxracer from 7.3 it is asking for some libraries of 
which libtcl.so.0 I can not find anywhere.

Chromium is asking as well for several libraries which I can't find at all 
except for zlib....

Doing  ldd /usr/X11R6/bin/xscreensaver I see that there is a library 
libcrypt.so.1
which is being asked by chromium and I cannot see on the install CDs of RH7.3.

ldd /usr/bin/tuxracer
        libSM.so.6 => /usr/X11R6/lib/libSM.so.6 (0x40026000)
        libICE.so.6 => /usr/X11R6/lib/libICE.so.6 (0x4002f000)
        libX11.so.6 => /usr/X11R6/lib/libX11.so.6 (0x40046000)
        libXi.so.6 => /usr/X11R6/lib/libXi.so.6 (0x40126000)
        libXext.so.6 => /usr/X11R6/lib/libXext.so.6 (0x4012e000)
        libXmu.so.6 => /usr/X11R6/lib/libXmu.so.6 (0x4013c000)
        libXt.so.6 => /usr/X11R6/lib/libXt.so.6 (0x40152000)
        libdl.so.2 => /lib/libdl.so.2 (0x401a0000)
        libtcl8.3.so => /usr/lib/libtcl8.3.so (0x401a4000)
        libSDL-1.1.so.0 => /usr/lib/libSDL-1.1.so.0 (0x4022b000)
        libpthread.so.0 => /lib/i686/libpthread.so.0 (0x40299000)
        libSDL_mixer-1.1.so.0 => /usr/lib/libSDL_mixer-1.1.so.0 (0x402ae000)
        libGL.so.1 => /usr/lib/libGL.so.1 (0x402e8000)
        libGLU.so.1 => /usr/lib/libGLU.so.1 (0x4054a000)
        libstdc++-libc6.2-2.so.3 => /usr/lib/libstdc++-libc6.2-2.so.3 
(0x4055e000)
        libm.so.6 => /lib/i686/libm.so.6 (0x405a2000)
        libc.so.6 => /lib/i686/libc.so.6 (0x405c6000)
        libartsc.so.0 => /usr/lib/libartsc.so.0 (0x406f6000)
        libesd.so.0 => /usr/lib/libesd.so.0 (0x406fc000)
        libaudiofile.so.0 => /usr/lib/libaudiofile.so.0 (0x40703000)
        libsmpeg-0.4.so.0 => /usr/lib/libsmpeg-0.4.so.0 (0x40714000)
        /lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)
 
ldd /usr/X11R6/bin/xscreensaver
        libXmu.so.6 => /usr/X11R6/lib/libXmu.so.6 (0x40026000)
        libSM.so.6 => /usr/X11R6/lib/libSM.so.6 (0x4003c000)
        libICE.so.6 => /usr/X11R6/lib/libICE.so.6 (0x40045000)
        libXt.so.6 => /usr/X11R6/lib/libXt.so.6 (0x4005c000)
        libX11.so.6 => /usr/X11R6/lib/libX11.so.6 (0x400a9000)
        libXext.so.6 => /usr/X11R6/lib/libXext.so.6 (0x40189000)
        libpam.so.0 => /lib/libpam.so.0 (0x40197000)
        libdl.so.2 => /lib/libdl.so.2 (0x401a0000)
        libcrypt.so.1 => /lib/libcrypt.so.1 (0x401a4000)
        libc.so.6 => /lib/i686/libc.so.6 (0x401d2000)
        /lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)
 
rhw@InfraDead.Org said:
> You will find that the glibc library is common to every program on
> your system

There is no glibc or is it the same as libc.

ray@comarre.com said:
> A. If Peter sees the RH 7.3 failure with -ANY- command-line app.
> (Including  the details if the answer is yes.)

> B. What video card and X server are involved, and what versions are in
> the  "before" and "after" serups.

> C. When the keyboard locks, is the system still running or not? For
> example, can you ssh or telnet to it? Can you ping it? I assume the
> keyboard problem prevents your switching to a vt, but if you have
> (say)  "top" running in an xterm, does it continue to run and show
> sensible  process behavior? Any one of these tests should do; I list
> several because  I can't remember is this system is on a LAN, or what
> services it might be  running if it is.

Answers:
A. I found it only in xsceensaver, tuxracer and chromium which might not 
exclude others I have not tried. Gnucash, gnumeric, mozilla, opera, 
staroffice, Xephem all worked with no problem.

B. My mainboard is P6STMT with a SiS630ET chipset which includes integrated 
built-in video, audio, networking and communication capabilities. X server 
??? I guess there was no change.

C. When the keybord locks the system seems still to be running. In chromium 
the mouse arrow can still be seen moving yet does not respond to clicking and 
the chromium background music continues playing. In xscreensaver blank 
screen, 
no mouse movement to be seen, time announcement still working. In tuxracer 
all blank, no music, nothing.
I can't answer the other questions since I am scared to reinstall RH7.3.
There is no LAN.

Regards

-- 
Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
