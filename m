From: Ray Olszewski <ray@comarre.com>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sat, 23 Oct 2004 15:00:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041023135516.01fefc38@celine>
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

First question: do you KNOW that your LCD display will support a refresh 
rate of 75? I'm not that familiar with LCDs myself, but the ones I am 
familiar with have fixed refresh rates ... if it works at 60, it will not 
work at 75. Not a driver issue, a hardware issue. So check this. See if 
1024x768x8@60, for example, wll work for you.

To a close approximation, figuring out the video RAM needed for a 
particular resolution is just math. (At least for 2D stuff -- the 3D stuff 
used mostly for games it trickier.)  1024x768 = 789,504 . Multiply that by 
the bit depth of the color setting, divided by 8 to do it in bytes, and you 
get ... for 24-bit color, say ... 2,368,512 bytes. This is why even 
ancient, 4 MB video cards can usually support X displays of 1024x768 at 
24-bit color.

Even 1280x1024x24 bits comes out to only 3,932,160 bytes ... easy for a 
card with "8-12MB" on it.

But i'm starting to wonder if we are both using the same terms for bits and 
bytes. I (and most people, I think)  use b=bit, B=byte. So when you write 
"8-12 MB" I read it as megabytes. If I'm wrong, that would explain a lot.

When you were trying vesafb, it was reporting:

>Oct 16 14:01:02 localhost kernel: vesafb: framebuffer at 0xfd000000, 
>mapped to 0xf0821000, size 1536k
>Oct 16 14:01:02 localhost kernel: vesafb: mode is 1024x768x8, 
>linelength=1024, pages=9

now multiplying 1536k by 8 gets 12,280, which is about 12 MB 
(inconsistencies between use of 1000 and 1024 for "1K", which always seem 
to turn up in these calculations, easily explain any discrepancy).

But all of this is, in the end, just rambling on. Please follow up to clear 
up the bits/bytes issue, and post whatever dmesg is reporting about the ati 
framebuffer.

Also please be more specific about:

1. What is issuing the "vga mode not support(ed)" message? The Linux kernel 
or the LCD panel's own BIOS?

2. Exactly what mode are you trying to set? "video=atyfb:102x768-8@75" 
obviously contains a typo (probably it should read 1024 instead of 102)?

3. Does "video=atyfb:1024x768-8@60" work as a setting? If not, how does it 
fail?

4. What is the context (the complete line, and any related nearby lines) of 
the dmesg report "kernel: not enough video memory." that you refer to?

5. Please be complete and exact about the modes you are trying. When you 
write "Trying to reset it to 1024x768-75--or any other of the 1024x768 or 
1280x1024 settings I've tried", you aren't using standard mode terminology 
... that would be something like "1024x768-8@75" ... either you are trying 
to specify invalid color depths by using the color-depth portion of the 
setting to specify the refresh rate, or you are leaving the color depth out 
of what you are telling us. Probably the second, but since the color depth 
is relevant to video memory, you have to report it in this context.

6. Finally ... you probably have mentioned this before, but could you 
identify as exactly as you can the video card that's involved here?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
