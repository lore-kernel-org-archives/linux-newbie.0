From: jamtat@mailsnare.net
Subject: Re: Getting a valid display under Debian revisited
Date: Tue, 9 Dec 2003 13:44:07 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312091317580.560@debian-box>
References: <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <5.1.0.14.1.20031209102527.0200d930@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031209102527.0200d930@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for your input, Ray.  I was a bit imprecise (as usual on my first
try) in describing the problem.  I think maybe it's not a framebuffer
problem, for the following reason: during initial bootup, I do see all the
boot messages (I seem to have given a misimpression about that).  There is
no small color penguin - which I've seen in other instances, like booting
from a Knoppix CD.  It's just plain text output.  The screen going blank
occurs at the point, at the end of the boot messages, where xdm starts.
After the "starting xdm" message appears is when the screen goes blank.
At first, there's some illumination there - not cross-hatching, like you
sometimes see - but some noticeable degree of phosphor excitement.  After
about 1 second it goes black.  At that point, the power light on the
monitor begins to blink - like when it's getting no video input (e.g.,
when the computer gets powered off).  At that point, I can hit
ctrl-alt-bkspc - twice - and get back to a terminal.  Likewise, I can hit
ctrl-alt-Fwhatever and get to another virtual terminal.  Here's an excerpt
from /var/log/messages/XFree86.0.log (the very beginning and very end)
that may be relevant:

----------------------------------------------------
XFree86 Version 4.2.1.1 (Debian 4.2.1-14 20031113215638 root@newraff.debian.org) / X Window System
(protocol Version 11, revision 0, vendor release 6600)
Release Date: 18 October 2002
	If the server is older than 6-12 months, or if your card is
	newer than the above date, look for a newer version before
	reporting problems.  (See http://www.XFree86.Org/)
Build Operating System: Linux 2.4.22-rc2 i686 [ELF]
Module Loader present
Markers: (--) probed, (**) from config file, (==) default setting,
         (++) from command line, (!!) notice, (II) informational,
         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/XFree86.0.log", Time: Tue Dec  9 13:13:47 2003
(==) Using config file: "/etc/X11/XF86Config-4"
(==) ServerLayout "Default Layout"
(**) |-->Screen "Default Screen" (0)
(**) |   |-->Monitor "MicroscanADI"
(**) |   |-->Device "S3Trio64v+"
(**) |-->Input Device "Generic Keyboard"
(**) Option "XkbRules" "xfree86"
(**) XKB: rules: "xfree86"
(**) Option "XkbModel" "pc104"
(**) XKB: model: "pc104"
(**) Option "XkbLayout" "us"
(**) XKB: layout: "us"
(==) Keyboard: CustomKeycode disabled
(**) |-->Input Device "Configured Mouse"
(**) |-->Input Device "Generic Mouse"
(WW) The directory "/usr/lib/X11/fonts/CID" does not exist.
	Entry deleted from font path.
(WW) The directory "/usr/lib/X11/fonts/cyrillic" does not exist.
	Entry deleted from font path.
(**) FontPath set to "unix/:7100,/usr/lib/X11/fonts/Type1,/usr/lib/X11/fonts/Speedo,/usr/lib/X11/fonts/misc,/usr/lib/X11/fonts/100dpi,/usr/lib/X11/fonts/75dpi"
(==) RgbPath set to "/usr/X11R6/lib/X11/rgb"
(==) ModulePath set to "/usr/X11R6/lib/modules"
(--) using VT number 7

(WW) Open APM failed (/dev/apm_bios) (No such file or directory)
(II) Module ABI versions:
	XFree86 ANSI C Emulation: 0.1
	XFree86 Video Driver: 0.5
	XFree86 XInput driver : 0.3
	XFree86 Server Extension : 0.1
	XFree86 Font Renderer : 0.3
(II) Loader running on linux
(II) LoadModule: "bitmap"
(II) Loading /usr/X11R6/lib/modules/fonts/libbitmap.a
Not loading .note.GNU-stack
Not loading .note.GNU-stack
Not loading .note.GNU-stack
Not loading .note.GNU-stack
Not loading .note.GNU-stack
Not loading .note.GNU-stack
<snip>
(WW) System lacks support for changing MTRRs
(==) s3(0): Backing store disabled
(II) s3(0): Using XFree86 Acceleration Architecture (XAA)
	Screen to screen bit blits
	Solid filled rectangles
	8x8 color pattern filled rectangles
	Solid Lines
(II) s3(0): Acceleration enabled
(II) s3(0): Using PIO
(II) s3(0): Using SW cursor
(**) Option "dpms"
(**) s3(0): DPMS enabled
(II) Initializing built-in extension MIT-SHM
(II) Initializing built-in extension XInputExtension
(II) Initializing built-in extension XTEST
(II) Initializing built-in extension XKEYBOARD
(II) Initializing built-in extension LBX
(II) Initializing built-in extension XC-APPGROUP
(II) Initializing built-in extension SECURITY
(II) Initializing built-in extension XINERAMA
(II) Initializing built-in extension XFree86-Bigfont
(II) Initializing built-in extension RENDER
(II) Keyboard "Generic Keyboard" handled by legacy driver
(**) Option "Protocol" "PS/2"
(**) Configured Mouse: Protocol: "PS/2"
(**) Option "CorePointer"
(**) Configured Mouse: Core Pointer
(**) Option "Device" "/dev/psaux"
(**) Option "ZAxisMapping" "4 5"
(**) Configured Mouse: ZAxisMapping: buttons 4 and 5
(**) Configured Mouse: Buttons: 5
(**) Option "Protocol" "ImPS/2"
(**) Generic Mouse: Protocol: "ImPS/2"
(**) Option "SendCoreEvents" "true"
(**) Generic Mouse: always reports core events
(**) Option "Device" "/dev/psaux"
(**) Option "ZAxisMapping" "4 5"
(**) Generic Mouse: ZAxisMapping: buttons 4 and 5
(**) Generic Mouse: Buttons: 5
(II) XINPUT: Adding extended input device "Generic Mouse" (type: MOUSE)
(II) XINPUT: Adding extended input device "Configured Mouse" (type: MOUSE)
(WW) Open APM failed (/dev/apm_bios) (No such file or directory)
--------------------------------------------------------------

That last entry seems like maybe it's trying to access some sort of devfs
thing as well, doesn't it?  So, maybe getting the newer kernel is the
answer to this problem: maybe the newer XFree86 presumes a devfs-enabled
kernel (guessing here, since I have a vague impression that 2.2.20 doesn't
support devfs)?  This is what my rather limited understanding indicates at
this point.  Any further input?

Thanks, James

PS > 4. I'm not sure what is putting a "pointer to /dev/mice/???" in your
Actually, I think it was /dev/input/mice (trying to recall something I
saw briefly late last night).

On Tue, 9 Dec 2003, Ray Olszewski wrote:

> 1.My memory is hazy on this (because I always upgrade immediately to a
> recent 2.4.x kernel after installing, and it's been some months now since I
> did my last install), but I think I recall that the 2.2.20 kernel on the
> Debian install disks uses the framebuffer (if so, you'll note that early in
> the boot/init sequence, the display "blinks" and you see  it change to a
> display that has a small, color  penguin near the top - that's the sign of
> the kernel framebuffer). The kernel framebuffer and X sometimes do not play
> well together, so that *could* be the source of your problem.
>
> If it is, you need either to switch to a kernel without framebuffer support
> (see next item) or tell X that it needs to use the kernel framebuffer
> device (I don't do it this way so don't recall how to do it ... might even
> be an option in the setup script, which you can run with, I think,
> "dpkg-reconfigure xserver-xfree86" ...perhaps someone else can chime in
> here with more exact advice?).
>
> 2. After you switch from Woody to Sid, you'd do better to switch to the
> current kernel ... either the kernel-image-2.4.22-* appropriate for your
> hardware or your own kernel, compiled from kernel-source-2.4.22 . 2.2.20 is
> really just intended as a temporary kernel for use during install.
>
> 3. The other possibility I can think of is that you are trying to use a
> vfreq or hfreq that your monitor deos not support (or have I previously
> suggested this? I don't recall your earlier postings in any detail).
> Probably not, since this problem usually makes it impossible toswitch back
> to vts.
>
> 4. I'm not sure what is putting a "pointer to /dev/mice/???" in your
> XF86Config-4 file, but that sounds like an attempt by something to use the
> devfs filesystem for devices, a pesudo-filesystem you probably do not have
> installed. Your adopted solution should serve, but it would be better to
> correct this through dpkg-reconfigure than as a hand edit ... that way, it
> will survive apt-get update/upgrade cycles.
>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
