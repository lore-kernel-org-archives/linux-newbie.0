From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: I killed user's x server
Date: Thu, 21 Nov 2002 21:39:21 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02112121392100.00286@unix.pa3gcu>
References: <200211202236.gAKMaIK05653@hartford-hwp.com> <5.1.0.14.1.20021121103403.02116350@celine> <200211212046.gALKkTj04709@hartford-hwp.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211212046.gALKkTj04709@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

On Thursday 21 November 2002 20:46, Haines Brown wrote:

> > A permissions problem, perhaps. What mode are they?
>
> -rwxr-xr-x    1 root     root       597369 Aug 13  2001 pex5.so
> -rwxr-xr-x    1 root     root       600739 Aug 13  2001 xie.so

I have not followed this thread so my comments may be wrong and unfounded, 
however,!

I belive from what i have read that you are using "sawfish", and that a user 
cannot start X, i use slackware here and sawfish does not use pex5.so or 
xie.so, if one uses 'ldd' one see's which libs are needed.

pa3gcu@unix:~$ ldd /opt/gnome/bin/sawfish
        librep.so.9 => /opt/gnome/lib/librep.so.9 (0x40017000)
        libdl.so.2 => /lib/libdl.so.2 (0x4006e000)
        libgmp.so.3 => /usr/lib/libgmp.so.3 (0x40072000)
        libm.so.6 => /lib/libm.so.6 (0x40093000)
        libImlib.so.1 => /usr/lib/libImlib.so.1 (0x400b5000)
        libjpeg.so.62 => /usr/lib/libjpeg.so.62 (0x400e0000)
        libtiff.so.3 => /usr/lib/libtiff.so.3 (0x40100000)
        libz.so.1 => /usr/lib/libz.so.1 (0x4013f000)
        libungif.so.4 => /usr/lib/libungif.so.4 (0x4014e000)
        libpng.so.2 => /usr/lib/libpng.so.2 (0x40156000)
        libXext.so.6 => /usr/X11R6/lib/libXext.so.6 (0x40180000)
        libSM.so.6 => /usr/X11R6/lib/libSM.so.6 (0x4018e000)
        libICE.so.6 => /usr/X11R6/lib/libICE.so.6 (0x40197000)
        libX11.so.6 => /usr/X11R6/lib/libX11.so.6 (0x401ad000)
        libnsl.so.1 => /lib/libnsl.so.1 (0x40286000)
        libc.so.6 => /lib/libc.so.6 (0x4029b000)
        /lib/ld-linux.so.2 => /lib/ld-linux.so.2 (0x40000000)

Thats the list i get, now if your swafish uses pex5.so and xie.so could it be 
that a program started by sawfish uses them.????
If so then the "user" may need special privs on that particular program.

As i said i am possably out of line for answering to a thread which i have 
not followed, however it may point somewhere.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
