From: Ray Olszewski <ray@comarre.com>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sat, 23 Oct 2004 15:17:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041023151156.01f32200@celine>
References: <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach> <Pine.LNX.4.58.0410231453210.1287@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410231453210.1287@debian-emach>
References: <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:06 PM 10/23/2004 -0500, James Miller wrote:
>Latest on this problem is that I'm using only the video=atyfb:102x768-8@75
>argument (no vga=xxx argument) in menu.lst.  During the boot process the
>screen goes black for a time--with just a cursor at the very bottom, which
>starts scooting back and forth horizontally--then comes back just as it
>was at a 640x480 resolution.  Boot process continues and gdm fires up.  In
>all this fiddling around, I've somehow gotten fbset to work--maybe by
>adding atyfb to /etc/modules.  When I run fbset (no options) it tells me
>the console is set to 640x480-60.  Trying to reset it to 1024x768-75--or
>any other of the 1024x768 or 1280x1024 settings I've tried--makes the
>console go black and the "vga mode not support(ed)" message appear on it.
>Reading some further info on the web, I decided to try issuing some
>resolution setting options separately with fbset--i.e., specifying just
>the V or H resolutions.  yres at 768 "works" although the screen goes
>blank.  When I try to set xres at 1024, I get an IOCTL error though.  When
>I check dmesg output afterwards, I see "kernel: not enough video memory."
>Is my problem therefore--with atyfb just as with vesafb--not enough video
>memory to do 1024x768?  I would have guessed 8MB would suffice, but that's
>just a layman's conjecture.  I actually have 12MB--added an 8MB SGRAM
>module where a 4MB one was supposed to go--but BIOS seems only to see 8
>and that's what dmesg reports too.  So, is this the inglorious end of all
>this researching and tweaking?  Feedback appreciated.


One more thought: although the spec for setting video mode looks like you 
can put in any old values, in fact you have to use a mode that the kernel 
source understands. I don't have a 2.6.x source tree handy, but 2.4.21 
doesn't include any 1024x758-b@75 choices. The only entries I can find for 
1024x768 in that source are:

         /* 1024x768 @ 87 Hz interlaced, 35.5 kHz hsync *
         /* 1024x768 @ 60 Hz, 48.4 kHz hsync */
         /* 1024x768 @ 70 Hz, 56.5 kHz hsync */
         /* 1024x768 @ 76 Hz, 62.5 kHz hsync */
         /* 1024x768 @ 85 Hz, 70.24 kHz hsync */
         /* 1024x768 @ 100Hz, 80.21 kHz hsync */

So if your LCD panel will support multiple refresh rates, try picking from 
the choices listed above. Or get the kernel source and look in 
./drivers/video/modedb.c to see what is available in your 2.6.x kernel.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
