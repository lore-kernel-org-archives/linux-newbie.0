From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sat, 23 Oct 2004 22:16:41 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410232043000.1287@debian-emach>
References: <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach> <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net> <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net> <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <5.1.0.14.1.20041023135516.01fefc38@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041023135516.01fefc38@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hello Ray:

Good to see you're still with me.  I was beginning if I were the only one
on this list manic enough to spend their weekend trying to work out
framebuffer display issues.  Looks like I'm in good company, though :)

> First question: do you KNOW that your LCD display will support a refresh
> rate of 75? I'm not that familiar with LCDs myself, but the ones I am
> familiar with have fixed refresh rates ... if it works at 60, it will not
> work at 75. Not a driver issue, a hardware issue. So check this. See if
> 1024x768x8@60, for example, wll work for you.

Here's what my LCD (17" MAG 765) manual says about its capabilities at
1024x768:  H 48.36KHz V 60Mz; H 56.48KHz V 70.1Hz; V 60.02KHz V 75Hz.
Those three settings--at the least--are possible for 1024x768 from what I
gather.  I have been understanding that this means that anything between
48.36 and 60.02 will work for horizontal at that resolution and anything
between 60 and 75 for vertical.  But that's just a supposition.  If you
know more about LCD's and what they can and can't do regarding these
figures, please feel free to offer corrections.  I took these from a table
in the manual.

> To a close approximation, figuring out the video RAM needed for a
> particular resolution is just math.

Not one of my strong suits.  Anyway . . .

> used mostly for games it trickier.)  1024x768 = 789,504 . Multiply that by
> the bit depth of the color setting, divided by 8 to do it in bytes, and you
> get ... for 24-bit color, say ... 2,368,512 bytes. This is why even
> ancient, 4 MB video cards can usually support X displays of 1024x768 at
> 24-bit color.
>
> Even 1280x1024x24 bits comes out to only 3,932,160 bytes ... easy for a
> card with "8-12MB" on it.
>
> But i'm starting to wonder if we are both using the same terms for bits and
> bytes. I (and most people, I think)  use b=bit, B=byte. So when you write
> "8-12 MB" I read it as megabytes. If I'm wrong, that would explain a lot.

Megabytes, yes.  The machine came with 4 megabytes of dedicated memory on
this integrated ati rage pro, and I added another 8 megabytes in a slot on
the mobo meant for that prupose.  BIOS does not recognize the full 8
megabytes though, reporting "8MB VIDEO SGRAM" in the relevant section of
the BIOS setup screen (it sees the 4 that were already there and 4 of the
8 I added).  Linux seems to observe the limitation, too.

> >Oct 16 14:01:02 localhost kernel: vesafb: framebuffer at 0xfd000000,
> >mapped to 0xf0821000, size 1536k
> >Oct 16 14:01:02 localhost kernel: vesafb: mode is 1024x768x8,
> >linelength=1024, pages=9
>
> now multiplying 1536k by 8 gets 12,280, which is about 12 MB
> (inconsistencies between use of 1000 and 1024 for "1K", which always seem
> to turn up in these calculations, easily explain any discrepancy).

I'm sorry but you've lost me.  Weren't you just saying that even 24-bit
color at this resolution should be supported by 4 MB video cards? Why is
8-bit color taking almost 3 times more memory here?  Sorry, but I can be a
bit dense sometimes.


> But all of this is, in the end, just rambling on. Please follow up to clear
> up the bits/bytes issue, and post whatever dmesg is reporting about the ati
> framebuffer.

Here's a selection of stuff from /var/log/messages--with a bit of
surrounding context to help in orientation--that seems relevant to me.
Sorry about the reformatting.  I've inserted breaks where sections of
dmesg output have been skipped, as should be apparent.

------------------------------------
Oct 23 14:49:44 localhost kernel: Built 1 zonelists
Oct 23 14:49:44 localhost kernel: Kernel command line:
root=/dev/hda2 video=atyfb:1024x768-8@60 ro quiet splash
Oct 23 14:49:44 localhost kernel: Local APIC disabled by
BIOS -- reenabling.
-------------------------------------
Oct 23 14:49:44 localhost kernel: Freeing unused kernel
memory: 140k freed
Oct 23 14:49:44 localhost kernel: vesafb: probe of vesafb0
failed with error -6
Oct 23 14:49:44 localhost kernel: thermal: Unknown symbol
acpi_processor_set_thermal_limit
--------------------------------------
Oct 23 14:49:44 localhost kernel: lp0: using parport0
(interrupt-driven).
Oct 23 14:49:44 localhost kernel: pnp: Device 01:01.00
activated.
Oct 23 14:49:44 localhost kernel: pnp: Device 01:01.02
activated.
Oct 23 14:49:44 localhost kernel: pnp: Device 01:01.03
activated.
Oct 23 14:49:44 localhost kernel: atyfb: 3D RAGE PRO (BGA,
AGP) [0x4742 rev 0x7c] 8M SGRAM, 14.31818 MHz XTAL, 230 MHz
PLL, 100 Mhz MCLK
Oct 23 14:49:44 localhost kernel: fb0: ATY Mach64 frame
buffer device on PCI
Oct 23 14:49:44 localhost kernel: Capability LSM
initialized
Oct 23 14:49:44 localhost kernel: device-mapper:
4.1.0-ioctl (2003-12-10) initialised: dm@uk.sistina.com
----------------------------------------------------

> 1. What is issuing the "vga mode not support(ed)" message? The Linux kernel
> or the LCD panel's own BIOS?

From the LCD panel's BIOS.

> 2. Exactly what mode are you trying to set? "video=atyfb:102x768-8@75"
> obviously contains a typo (probably it should read 1024 instead of 102)?

Yes, I made a mistake, typing 102 for 1024.

> 3. Does "video=atyfb:1024x768-8@60" work as a setting? If not, how does it
> fail?

No, it does not work.  Here is a description of the failure: the boot
messages start up in something like 640x480 resolution, and at a certain
point the screen goes black.  Only a cursor is visible at the bottom of
the screen, and it starts skipping horizontally rapidly.  There is no
"video mode not support(ed)" displayed on the screen, though.  After a bit
of that, the 640x480 text screen comes back and boot text continues to
scroll by til gdm comes up.  I switch to a virtual console and there see a
640x480 text console.  I log in and type "fbset" and it tells me the
console is set at 640x480-60.  There are other figures there as well, but
I don't know how relevant those are.

> 4. What is the context (the complete line, and any related nearby lines) of
> the dmesg report "kernel: not enough video memory." that you refer to?

Here's a bit of output that spans a reboot, as I think you'll see.  Those
showed up in /var/log/messages in response to my trying to set the
resolution by issuing "fbset -xres 1024."

------------------------------------------
Oct 23 14:18:42 localhost kernel: bridge-eth0: already up
Oct 23 14:19:12 localhost gconfd (user-6650): starting
(version 2.8.1), pid 6650 user 'user'
Oct 23 14:19:12 localhost gconfd (user-6650): Resolved
address "xml:readonly:/etc/gconf/gconf.xml.mandatory" to a
read-only configuration source at position 0
Oct 23 14:19:12 localhost gconfd (user-6650): Resolved
address "xml:readwrite:/home/user/.gconf" to a writable
configuration source at position 1
Oct 23 14:19:12 localhost gconfd (user-6650): Resolved
address "xml:readonly:/etc/gconf/gconf.xml.defaults" to a
read-only configuration source at position 2
Oct 23 14:19:25 localhost gconfd (user-6650): Resolved
address "xml:readwrite:/home/user/.gconf" to a writable
configuration source at position 0
Oct 23 14:38:25 localhost -- MARK --
Oct 23 14:39:48 localhost kernel: not enough video RAM
Oct 23 14:43:04 localhost kernel: not enough video RAM
Oct 23 14:44:15 localhost kernel: not enough video RAM
Oct 23 14:47:56 localhost gconfd (user-6650): Exiting
Oct 23 14:47:56 localhost gconfd (user-7375): starting
(version 2.8.1), pid 7375 user 'user'
---------------------------------------------------

> 5. Please be complete and exact about the modes you are trying. When you
> write "Trying to reset it to 1024x768-75--or any other of the 1024x768 or
> 1280x1024 settings I've tried", you aren't using standard mode terminology
> ... that would be something like "1024x768-8@75" ... either you are trying
> to specify invalid color depths by using the color-depth portion of the
> setting to specify the refresh rate, or you are leaving the color depth out
> of what you are telling us. Probably the second, but since the color depth
> is relevant to video memory, you have to report it in this context.

Yes, good point.  I've been inconsistent in how I use terminology, as well
as in entering modes into menu.lst.  I have not yet found out where the
form these resolution arguments should take is documented.  Do you know?
I've consulted the web, and the things people list as arguments for video=
vary somewhat.  I wish I could find the definitive source that tells this,
but so far I've concluded there is not one.  Feel free to disprove my
working hypothesis.  Here is a selection of the various 1024x768 arguments
I've given to video= :

video=atyfb:vmode:1024x768@75,cmode:8
video=atyfb:1024x768
video=atyfb:1024x768-70
video=atyfb:1024x768-75
video=atyfb:1024x768-8@75
video=atyfb:1024x768-8@60

I also tried some 800x600 ones that I'll leave out for now.

> 6. Finally ... you probably have mentioned this before, but could you
> identify as exactly as you can the video card that's involved here?

From the manual: video type - integrated ATI Rage Pro (AGP 2X) graphics;
video memory - 4 MB standard (upgradable to 8 MB) SGRAM.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
