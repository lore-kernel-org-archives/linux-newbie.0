From: Ray Olszewski <ray@comarre.com>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sat, 23 Oct 2004 22:02:16 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041023211235.01feb690@celine>
References: <5.1.0.14.1.20041023135516.01fefc38@celine>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <5.1.0.14.1.20041023135516.01fefc38@celine> <Pine.LNX.4.58.0410232043000.1287@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410232043000.1287@debian-emach>
References: <5.1.0.14.1.20041023135516.01fefc38@celine>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <5.1.0.14.1.20041023135516.01fefc38@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Editing quite a bit, since I'm responding only to a few specifics.

At 10:16 PM 10/23/2004 -0500, James Miller wrote:
>Hello Ray:
>
>Good to see you're still with me.  I was beginning if I were the only one
>on this list manic enough to spend their weekend trying to work out
>framebuffer display issues.  Looks like I'm in good company, though :)

It's a side effect of working from a home office. Weekday and weekend are 
not as distinct this way.

Anyway, you got me hooked. I'm curious now how this will come out ... sorta 
like reading a murder mystery or doing a crossword.

>Megabytes, yes.  The machine came with 4 megabytes of dedicated memory on
>this integrated ati rage pro, and I added another 8 megabytes in a slot on
>the mobo meant for that prupose.  BIOS does not recognize the full 8
>megabytes though, reporting "8MB VIDEO SGRAM" in the relevant section of
>the BIOS setup screen (it sees the 4 that were already there and 4 of the
>8 I added).  Linux seems to observe the limitation, too.

The card description you list at the end of this message says the card 
*itself* supports only up to 8 MB. The docs I found on the Web are 
consistent with this. That explains your result here, I think.

On that score ... just a wild, blue-sky thought here ... maybe your trying 
to use an 8 MB SGRAM on a card that only supports 4 MB is introducing a 
problem. Does anything improve if you remove this module and use only the 
onboard 4 MB?

> > 3. Does "video=atyfb:1024x768-8@60" work as a setting? If not, how does it
> > fail?
>
>No, it does not work.  Here is a description of the failure: the boot
>messages start up in something like 640x480 resolution, and at a certain
>point the screen goes black.  Only a cursor is visible at the bottom of
>the screen, and it starts skipping horizontally rapidly.  There is no
>"video mode not support(ed)" displayed on the screen, though.

This probably means the framebuffer is searching for a workable mode.

>  After a bit
>of that, the 640x480 text screen comes back and boot text continues to
>scroll by til gdm comes up.  I switch to a virtual console and there see a
>640x480 text console.  I log in and type "fbset" and it tells me the
>console is set at 640x480-60.  There are other figures there as well, but
>I don't know how relevant those are.

Neither do I if I don't see them. Inconvenienrly, I don't have a 
framebuffer system runnign here at the moment (and the only one I even have 
on site is not an i86 platform, limiting its usefulness to this exercise).


> > 4. What is the context (the complete line, and any related nearby lines) of
> > the dmesg report "kernel: not enough video memory." that you refer to?
>
>Here's a bit of output that spans a reboot, as I think you'll see.  Those
>showed up in /var/log/messages in response to my trying to set the
>resolution by issuing "fbset -xres 1024."
>
>------------------------------------------
>Oct 23 14:18:42 localhost kernel: bridge-eth0: already up
>Oct 23 14:19:12 localhost gconfd (user-6650): starting
>(version 2.8.1), pid 6650 user 'user'
>Oct 23 14:19:12 localhost gconfd (user-6650): Resolved
>address "xml:readonly:/etc/gconf/gconf.xml.mandatory" to a
>read-only configuration source at position 0
>Oct 23 14:19:12 localhost gconfd (user-6650): Resolved
>address "xml:readwrite:/home/user/.gconf" to a writable
>configuration source at position 1
>Oct 23 14:19:12 localhost gconfd (user-6650): Resolved
>address "xml:readonly:/etc/gconf/gconf.xml.defaults" to a
>read-only configuration source at position 2
>Oct 23 14:19:25 localhost gconfd (user-6650): Resolved
>address "xml:readwrite:/home/user/.gconf" to a writable
>configuration source at position 0
>Oct 23 14:38:25 localhost -- MARK --
>Oct 23 14:39:48 localhost kernel: not enough video RAM
>Oct 23 14:43:04 localhost kernel: not enough video RAM
>Oct 23 14:44:15 localhost kernel: not enough video RAM
>Oct 23 14:47:56 localhost gconfd (user-6650): Exiting
>Oct 23 14:47:56 localhost gconfd (user-7375): starting
>(version 2.8.1), pid 7375 user 'user'
>---------------------------------------------------
>
> > 5. Please be complete and exact about the modes you are trying. When you
> > write "Trying to reset it to 1024x768-75--or any other of the 1024x768 or
> > 1280x1024 settings I've tried", you aren't using standard mode terminology
> > ... that would be something like "1024x768-8@75" ... either you are trying
> > to specify invalid color depths by using the color-depth portion of the
> > setting to specify the refresh rate, or you are leaving the color depth out
> > of what you are telling us. Probably the second, but since the color depth
> > is relevant to video memory, you have to report it in this context.
>
>Yes, good point.  I've been inconsistent in how I use terminology, as well
>as in entering modes into menu.lst.  I have not yet found out where the
>form these resolution arguments should take is documented.  Do you know?
>I've consulted the web, and the things people list as arguments for video=
>vary somewhat.  I wish I could find the definitive source that tells this,
>but so far I've concluded there is not one.  Feel free to disprove my
>working hypothesis.

The problem you have is that the kernel boot parameters and fbset use 
different notations. Your descriptions mix the two.

For the right form for lilo (or in your case grub) arguments, try the 
kernel source. (If you don't have enough room for the source tree, at least 
install the kernel-doc Debian package for your kernel.) I've been 
consulting the various docs in ./Documentation/fb/, and the actual source 
in ./drivers/video/ . From the first, I get (among other things) this:

"To specify a video mode at bootup, use the following boot options:
     video=<driver>:<xres>x<yres>[-<bpp>][@refresh]

where <driver> is a name from the table below." (atyfb is listed in this 
table; so is aty128fb.)

Short of the actual source that parses this sfuff, that's about as 
definitive as you get. Hence my exact suggestion above.

fbset, according to its man page, doesn't let you specify color depth ... 
it wants the format

         <xres>x<yres>-<refresh>

for example

         1024x768-60 .

Specifically, you might see if

         fbset -a 1024x768-60  (or -75)

works any better than what you have been trying.

[...]
> >From the manual: video type - integrated ATI Rage Pro (AGP 2X) graphics;
>video memory - 4 MB standard (upgradable to 8 MB) SGRAM.

This card name does not *quite* match anything in the Hardware 
Compabibility HowTo. What X driver does it use? (Look in 
/etc/X11/XF86Config-4, under "Device", for the Driver entry.) If it uses 
ati, then you are probably treating it correctly. If it uses r128, then you 
should try the ati128fb framebuffer instead of atyfb.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
