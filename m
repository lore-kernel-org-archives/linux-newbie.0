From: "Philippe De Neve" <Philippe.deneve@intec.ugent.be>
Subject: XFree86 problems (ATI radeon video card)
Date: Mon, 29 Mar 2004 17:16:05 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00b701c415a0$c1ab34b0$bb7ac19d@King>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,


I'm trying to install the XFree86 system but it fails to start up. I've
installed it by installing the packages:
xfree86-common
xserver-common
xserver-xfree86

My PC has an AMD Athlon 1500 processor with 256 MB RAM and a graphical card:
ATI Radeon 7500.

Now when I run X I get the output shown below
The first error occurs at :
"
(EE) RADEON(0): [dri] RADEONDRIScreenInit failed because of a version
mismatch.

[dri] radeon.o kernel module version is 1.0.0 but version 1.1.x is needed.

[dri] Disabling DRI.

(EE) RADEON(0): [drm] failed to remove DRM signal handler

"
I know what this means but I don't know what to do about it.




The second and probably fatal error is:
"
(EE) xf86OpenSerial: Cannot open device /dev/input/mice

      No such device.

(EE) Generic Mouse: cannot open input device

(EE) PreInit failed for input device "Generic Mouse"

(II) UnloadModule: "mouse"

(II) XINPUT: Adding extended input device "Configured Mouse" (type: MOUSE)

Could not init font path element unix/:7100, removing from list!



Fatal server error:

could not open default font 'fixed'
"


This one is also difficult to solve (for me though)

Can anybody help me or give me some stuff to continue my search of
installing this XFree86 thing. If my question is posed on the wrong list plz
tell me where I can  post it.  Tnx a lot.

Philippe.



COMPLETE LIST OF OUTPUT X-SYSTEM


This is a pre-release version of XFree86, and is not supported in any
way. Bugs may be reported to XFree86@XFree86.Org and patches submitted

to fixes@XFree86.Org. Before reporting bugs in pre-release versions,

please check the latest version in the XFree86 CVS repository

(http://www.XFree86.Org/cvs)

XFree86 Version 4.1.0.1 / X Window System

(protocol Version 11, revision 0, vendor release 6510)

Release Date: 21 December 2001

If the server is older than 6-12 months, or if your card is

newer than the above date, look for a newer version before

reporting problems. (See http://www.XFree86.Org/FAQ)

Build Operating System: Linux 2.6.3-bk2 i686 [ELF]

Module Loader present

(==) Log file: "/var/log/XFree86.0.log", Time: Mon Mar 29 15:38:27 2004

(==) Using config file: "/etc/X11/XF86Config-4"

Markers: (--) probed, (**) from config file, (==) default setting,

(++) from command line, (!!) notice, (II) informational,

(WW) warning, (EE) error, (NI) not implemented, (??) unknown.

(==) ServerLayout "Default Layout"

(**) |-->Screen "Default Screen" (0)

(**) | |-->Monitor "AOC Monitor"

(**) | |-->Device "Club 3D Video Card"

(**) |-->Input Device "Generic Keyboard"

(**) Option "XkbRules" "xfree86"

(**) XKB: rules: "xfree86"

(**) Option "XkbModel" "pc105"

(**) XKB: model: "pc105"

(**) Option "XkbLayout" "us"

(**) XKB: layout: "us"

(==) Keyboard: CustomKeycode disabled

(**) |-->Input Device "Configured Mouse"

(**) |-->Input Device "Generic Mouse"

(WW) The directory "/usr/lib/X11/fonts/misc" does not exist.

Entry deleted from font path.

(WW) The directory "/usr/lib/X11/fonts/cyrillic" does not exist.

Entry deleted from font path.

(WW) The directory "/usr/lib/X11/fonts/100dpi/" does not exist.

Entry deleted from font path.

(WW) The directory "/usr/lib/X11/fonts/75dpi/" does not exist.

Entry deleted from font path.

(WW) The directory "/usr/lib/X11/fonts/Type1" does not exist.

Entry deleted from font path.

(WW) The directory "/usr/lib/X11/fonts/Speedo" does not exist.

Entry deleted from font path.

(WW) The directory "/usr/lib/X11/fonts/100dpi" does not exist.

Entry deleted from font path.

(WW) The directory "/usr/lib/X11/fonts/75dpi" does not exist.

Entry deleted from font path.

(**) FontPath set to "unix/:7100"

(==) RgbPath set to "/usr/X11R6/lib/X11/rgb"

(==) ModulePath set to "/usr/X11R6/lib/modules"

(--) using VT number 7

(WW) Cannot open APM

(II) Module ABI versions:

XFree86 ANSI C Emulation: 0.1

XFree86 Video Driver: 0.4

XFree86 XInput driver : 0.2

XFree86 Server Extension : 0.1

XFree86 Font Renderer : 0.2

(II) Loader running on linux

(II) LoadModule: "bitmap"

(II) Loading /usr/X11R6/lib/modules/fonts/libbitmap.a

(II) Module bitmap: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 Font Renderer

ABI class: XFree86 Font Renderer, version 0.2

(II) Loading font Bitmap

(II) LoadModule: "pcidata"

(II) Loading /usr/X11R6/lib/modules/libpcidata.a

(II) Module pcidata: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 0.1.0

ABI class: XFree86 Video Driver, version 0.4

(II) PCI: Probing config type using method 1

(II) PCI: Config type is 1

(II) PCI: stages = 0x03, oldVal1 = 0x00000000, mode1Res1 = 0x80000000

(II) PCI: PCI scan (all values are in hex)

(II) PCI: 00:00:0: chip 1106,3189 card 1106,0000 rev 00 class 06,00,00 hdr
00

(II) PCI: 00:01:0: chip 1106,b168 card 0000,0000 rev 00 class 06,04,00 hdr
01

(II) PCI: 00:06:0: chip 8086,1079 card 8086,1179 rev 03 class 02,00,00 hdr
80

(II) PCI: 00:06:1: chip 8086,1079 card 8086,1179 rev 03 class 02,00,00 hdr
80

(II) PCI: 00:07:0: chip 8086,1079 card 8086,1179 rev 03 class 02,00,00 hdr
80

(II) PCI: 00:07:1: chip 8086,1079 card 8086,1179 rev 03 class 02,00,00 hdr
80

(II) PCI: 00:08:0: chip 8086,1079 card 8086,1179 rev 03 class 02,00,00 hdr
80

(II) PCI: 00:08:1: chip 8086,1079 card 8086,1179 rev 03 class 02,00,00 hdr
80

(II) PCI: 00:10:0: chip 1106,3038 card 1462,7120 rev 80 class 0c,03,00 hdr
80

(II) PCI: 00:10:1: chip 1106,3038 card 1462,7120 rev 80 class 0c,03,00 hdr
80

(II) PCI: 00:10:2: chip 1106,3038 card 1462,7120 rev 80 class 0c,03,00 hdr
80

(II) PCI: 00:10:3: chip 1106,3104 card 1462,7120 rev 82 class 0c,03,20 hdr
00

(II) PCI: 00:11:0: chip 1106,3177 card 1106,0000 rev 00 class 06,01,00 hdr
80

(II) PCI: 00:11:1: chip 1106,0571 card 1462,7120 rev 06 class 01,01,8a hdr
00

(II) PCI: 00:11:5: chip 1106,3059 card 1462,7120 rev 50 class 04,01,00 hdr
00

(II) PCI: 00:12:0: chip 1106,3065 card 1462,7120 rev 74 class 02,00,00 hdr
00

(II) PCI: 01:00:0: chip 1002,5159 card 148c,2037 rev 00 class 03,00,00 hdr
00

(II) PCI: End of PCI scan

(II) LoadModule: "scanpci"

(II) Loading /usr/X11R6/lib/modules/libscanpci.a

(II) Module scanpci: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 0.1.0

ABI class: XFree86 Video Driver, version 0.4

(II) UnloadModule: "scanpci"

(II) Unloading /usr/X11R6/lib/modules/libscanpci.a

(II) Host-to-PCI bridge:

(II) PCI-to-ISA bridge:

(II) PCI-to-PCI bridge:

(II) Bus 0: bridge is at (0:0:0), (-1,0,0), BCTRL: 0x08 (VGA_EN is set)

(II) Bus 0 I/O range:

[0] -1 0 0x00000000 - 0x0000ffff (0x10000) IX[B]

(II) Bus 0 non-prefetchable memory range:

[0] -1 0 0x00000000 - 0xffffffff (0x0) MX[B]

(II) Bus 0 prefetchable memory range:

[0] -1 0 0x00000000 - 0xffffffff (0x0) MX[B]

(II) Bus 1: bridge is at (0:1:0), (0,1,1), BCTRL: 0x0c (VGA_EN is set)

(II) Bus 1 I/O range:

[0] -1 0 0x0000b000 - 0x0000b0ff (0x100) IX[B]

[1] -1 0 0x0000b400 - 0x0000b4ff (0x100) IX[B]

[2] -1 0 0x0000b800 - 0x0000b8ff (0x100) IX[B]

[3] -1 0 0x0000bc00 - 0x0000bcff (0x100) IX[B]

(II) Bus 1 non-prefetchable memory range:

[0] -1 0 0xdf700000 - 0xdf7fffff (0x100000) MX[B]

(II) Bus 1 prefetchable memory range:

[0] -1 0 0xcf600000 - 0xdf5fffff (0x10000000) MX[B]

(II) Bus -1: bridge is at (0:17:0), (0,-1,0), BCTRL: 0x08 (VGA_EN is set)

(II) Bus -1 I/O range:

(II) Bus -1 non-prefetchable memory range:

(II) Bus -1 prefetchable memory range:

(--) PCI:*(1:0:0) ATI Radeon VE rev 0, Mem @ 0xd0000000/27, 0xdf7f0000/16,
I/O @ 0xb800/8, BIOS @ 0xdf7c0000/17

(II) Addressable bus resource ranges are

[0] -1 0 0x00000000 - 0xffffffff (0x0) MX[B]

[1] -1 0 0x00000000 - 0x0000ffff (0x10000) IX[B]

(II) OS-reported resource ranges:

[0] -1 0 0xffe00000 - 0xffffffff (0x200000) MX[B](B)

[1] -1 0 0x00100000 - 0x3fffffff (0x3ff00000) MX[B]E(B)

[2] -1 0 0x000f0000 - 0x000fffff (0x10000) MX[B]

[3] -1 0 0x000c0000 - 0x000effff (0x30000) MX[B]

[4] -1 0 0x00000000 - 0x0009ffff (0xa0000) MX[B]

[5] -1 0 0x0000ffff - 0x0000ffff (0x1) IX[B]

[6] -1 0 0x00000000 - 0x000000ff (0x100) IX[B]

(II) Active PCI resource ranges:

[0] -1 0 0xdffffe00 - 0xdffffeff (0x100) MX[B]

[1] -1 0 0xdfffff00 - 0xdfffffff (0x100) MX[B]

[2] -1 0 0xe0000000 - 0xe7ffffff (0x8000000) MX[B]

[3] -1 0 0xdf7c0000 - 0xdf7dffff (0x20000) MX[B](B)

[4] -1 0 0xdf7f0000 - 0xdf7fffff (0x10000) MX[B](B)

[5] -1 0 0xd0000000 - 0xd7ffffff (0x8000000) MX[B](B)

[6] -1 0 0x0000c400 - 0x0000c4ff (0x100) IX[B]

[7] -1 0 0x0000c800 - 0x0000c8ff (0x100) IX[B]

[8] -1 0 0x0000fc00 - 0x0000fc0f (0x10) IX[B]

[9] -1 0 0x0000d400 - 0x0000d41f (0x20) IX[B]

[10] -1 0 0x0000d000 - 0x0000d01f (0x20) IX[B]

[11] -1 0 0x0000cc00 - 0x0000cc1f (0x20) IX[B]

[12] -1 0 0x0000dc00 - 0x0000dc3f (0x40) IX[B]

[13] -1 0 0x0000d800 - 0x0000d83f (0x40) IX[B]

[14] -1 0 0x0000e400 - 0x0000e43f (0x40) IX[B]

[15] -1 0 0x0000e000 - 0x0000e03f (0x40) IX[B]

[16] -1 0 0x0000ec00 - 0x0000ec3f (0x40) IX[B]

[17] -1 0 0x0000e800 - 0x0000e83f (0x40) IX[B]

[18] -1 0 0x0000b800 - 0x0000b8ff (0x100) IX[B](B)

(II) Active PCI resource ranges after removing overlaps:

[0] -1 0 0xdffffe00 - 0xdffffeff (0x100) MX[B]

[1] -1 0 0xdfffff00 - 0xdfffffff (0x100) MX[B]

[2] -1 0 0xe0000000 - 0xe7ffffff (0x8000000) MX[B]

[3] -1 0 0xdf7c0000 - 0xdf7dffff (0x20000) MX[B](B)

[4] -1 0 0xdf7f0000 - 0xdf7fffff (0x10000) MX[B](B)

[5] -1 0 0xd0000000 - 0xd7ffffff (0x8000000) MX[B](B)

[6] -1 0 0x0000c400 - 0x0000c4ff (0x100) IX[B]

[7] -1 0 0x0000c800 - 0x0000c8ff (0x100) IX[B]

[8] -1 0 0x0000fc00 - 0x0000fc0f (0x10) IX[B]

[9] -1 0 0x0000d400 - 0x0000d41f (0x20) IX[B]

[10] -1 0 0x0000d000 - 0x0000d01f (0x20) IX[B]

[11] -1 0 0x0000cc00 - 0x0000cc1f (0x20) IX[B]

[12] -1 0 0x0000dc00 - 0x0000dc3f (0x40) IX[B]

[13] -1 0 0x0000d800 - 0x0000d83f (0x40) IX[B]

[14] -1 0 0x0000e400 - 0x0000e43f (0x40) IX[B]

[15] -1 0 0x0000e000 - 0x0000e03f (0x40) IX[B]

[16] -1 0 0x0000ec00 - 0x0000ec3f (0x40) IX[B]

[17] -1 0 0x0000e800 - 0x0000e83f (0x40) IX[B]

[18] -1 0 0x0000b800 - 0x0000b8ff (0x100) IX[B](B)

(II) OS-reported resource ranges after removing overlaps with PCI:

[0] -1 0 0xffe00000 - 0xffffffff (0x200000) MX[B](B)

[1] -1 0 0x00100000 - 0x3fffffff (0x3ff00000) MX[B]E(B)

[2] -1 0 0x000f0000 - 0x000fffff (0x10000) MX[B]

[3] -1 0 0x000c0000 - 0x000effff (0x30000) MX[B]

[4] -1 0 0x00000000 - 0x0009ffff (0xa0000) MX[B]

[5] -1 0 0x0000ffff - 0x0000ffff (0x1) IX[B]

[6] -1 0 0x00000000 - 0x000000ff (0x100) IX[B]

(II) All system resource ranges:

[0] -1 0 0xffe00000 - 0xffffffff (0x200000) MX[B](B)

[1] -1 0 0x00100000 - 0x3fffffff (0x3ff00000) MX[B]E(B)

[2] -1 0 0x000f0000 - 0x000fffff (0x10000) MX[B]

[3] -1 0 0x000c0000 - 0x000effff (0x30000) MX[B]

[4] -1 0 0x00000000 - 0x0009ffff (0xa0000) MX[B]

[5] -1 0 0xdffffe00 - 0xdffffeff (0x100) MX[B]

[6] -1 0 0xdfffff00 - 0xdfffffff (0x100) MX[B]

[7] -1 0 0xe0000000 - 0xe7ffffff (0x8000000) MX[B]

[8] -1 0 0xdf7c0000 - 0xdf7dffff (0x20000) MX[B](B)

[9] -1 0 0xdf7f0000 - 0xdf7fffff (0x10000) MX[B](B)

[10] -1 0 0xd0000000 - 0xd7ffffff (0x8000000) MX[B](B)

[11] -1 0 0x0000ffff - 0x0000ffff (0x1) IX[B]

[12] -1 0 0x00000000 - 0x000000ff (0x100) IX[B]

[13] -1 0 0x0000c400 - 0x0000c4ff (0x100) IX[B]

[14] -1 0 0x0000c800 - 0x0000c8ff (0x100) IX[B]

[15] -1 0 0x0000fc00 - 0x0000fc0f (0x10) IX[B]

[16] -1 0 0x0000d400 - 0x0000d41f (0x20) IX[B]

[17] -1 0 0x0000d000 - 0x0000d01f (0x20) IX[B]

[18] -1 0 0x0000cc00 - 0x0000cc1f (0x20) IX[B]

[19] -1 0 0x0000dc00 - 0x0000dc3f (0x40) IX[B]

[20] -1 0 0x0000d800 - 0x0000d83f (0x40) IX[B]

[21] -1 0 0x0000e400 - 0x0000e43f (0x40) IX[B]

[22] -1 0 0x0000e000 - 0x0000e03f (0x40) IX[B]

[23] -1 0 0x0000ec00 - 0x0000ec3f (0x40) IX[B]

[24] -1 0 0x0000e800 - 0x0000e83f (0x40) IX[B]

[25] -1 0 0x0000b800 - 0x0000b8ff (0x100) IX[B](B)

(II) LoadModule: "GLcore"

(II) Loading /usr/X11R6/lib/modules/extensions/libGLcore.a

(II) Module GLcore: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Server Extension, version 0.1

(II) LoadModule: "bitmap"

(II) Reloading /usr/X11R6/lib/modules/fonts/libbitmap.a

(II) Loading font Bitmap

(II) LoadModule: "dbe"

(II) Loading /usr/X11R6/lib/modules/extensions/libdbe.a

(II) Module dbe: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 Server Extension

ABI class: XFree86 Server Extension, version 0.1

(II) Loading extension DOUBLE-BUFFER

(II) LoadModule: "ddc"

(II) Loading /usr/X11R6/lib/modules/libddc.a

(II) Module ddc: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Video Driver, version 0.4

(II) LoadModule: "dri"

(II) Loading /usr/X11R6/lib/modules/extensions/libdri.a

(II) Module dri: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Server Extension, version 0.1

(II) Loading sub module "drm"

(II) LoadModule: "drm"

(II) Loading /usr/X11R6/lib/modules/linux/libdrm.a

(II) Module drm: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Server Extension, version 0.1

(II) Loading extension XFree86-DRI

(II) LoadModule: "extmod"

(II) Loading /usr/X11R6/lib/modules/extensions/libextmod.a

(II) Module extmod: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 Server Extension

ABI class: XFree86 Server Extension, version 0.1

(II) Loading extension SHAPE

(II) Loading extension MIT-SUNDRY-NONSTANDARD

(II) Loading extension BIG-REQUESTS

(II) Loading extension SYNC

(II) Loading extension MIT-SCREEN-SAVER

(II) Loading extension XC-MISC

(II) Loading extension XFree86-VidModeExtension

(II) Loading extension XFree86-Misc

(II) Loading extension XFree86-DGA

(II) Loading extension DPMS

(II) Loading extension FontCache

(II) Loading extension TOG-CUP

(II) Loading extension Extended-Visual-Information

(II) Loading extension XVideo

(II) Loading extension XVideo-MotionCompensation

(II) LoadModule: "freetype"

(II) Loading /usr/X11R6/lib/modules/fonts/libfreetype.a

(II) Module freetype: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.1.9

Module class: XFree86 Font Renderer

ABI class: XFree86 Font Renderer, version 0.2

(II) Loading font FreeType

(II) LoadModule: "glx"

(II) Loading /usr/X11R6/lib/modules/extensions/libglx.a

(II) Module glx: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Server Extension, version 0.1

(II) Loading sub module "GLcore"

(II) LoadModule: "GLcore"

(II) Reloading /usr/X11R6/lib/modules/extensions/libGLcore.a

(II) Loading extension GLX

(II) LoadModule: "int10"

(II) Loading /usr/X11R6/lib/modules/linux/libint10.a

(II) Module int10: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Video Driver, version 0.4

(II) LoadModule: "pex5"

(II) Loading /usr/X11R6/lib/modules/extensions/libpex5.a

(II) Module pex5: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 Server Extension

ABI class: XFree86 Server Extension, version 0.1

(II) Loading extension X3D-PEX

(II) LoadModule: "record"

(II) Loading /usr/X11R6/lib/modules/extensions/librecord.a

(II) Module record: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.13.0

Module class: XFree86 Server Extension

ABI class: XFree86 Server Extension, version 0.1

(II) Loading extension RECORD

(II) LoadModule: "speedo"

(II) Loading /usr/X11R6/lib/modules/fonts/libspeedo.a

(II) Module speedo: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 Font Renderer

ABI class: XFree86 Font Renderer, version 0.2

(II) Loading font Speedo

(II) LoadModule: "type1"

(II) Loading /usr/X11R6/lib/modules/fonts/libtype1.a

(II) Module type1: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 Font Renderer

ABI class: XFree86 Font Renderer, version 0.2

(II) Loading font Type1

(II) Loading font CID

(II) LoadModule: "vbe"

(II) Loading /usr/X11R6/lib/modules/libvbe.a

(II) Module vbe: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Video Driver, version 0.4

(II) LoadModule: "xie"

(II) Loading /usr/X11R6/lib/modules/extensions/libxie.a

(II) Module xie: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 Server Extension

ABI class: XFree86 Server Extension, version 0.1

(II) Loading extension XIE

(II) LoadModule: "radeon"

(II) Loading /usr/X11R6/lib/modules/drivers/radeon_drv.o

(II) Module radeon: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 4.0.1

Module class: XFree86 Video Driver

ABI class: XFree86 Video Driver, version 0.4

(II) LoadModule: "ati"

(II) Loading /usr/X11R6/lib/modules/drivers/ati_drv.o

(II) Module ati: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 6.3.6

Module class: XFree86 Video Driver

ABI class: XFree86 Video Driver, version 0.4

(II) LoadModule: "mouse"

(II) Loading /usr/X11R6/lib/modules/input/mouse_drv.o

(II) Module mouse: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

Module class: XFree86 XInput Driver

ABI class: XFree86 XInput driver, version 0.2

(II) ATI: ATI driver (version 6.3.6) for chipsets: ati, ativga

(II) R128: Driver for ATI Rage 128 chipsets: ATI Rage 128 RE (PCI),

ATI Rage 128 RF (AGP), ATI Rage 128 RG (AGP), ATI Rage 128 RK (PCI),

ATI Rage 128 RL (AGP), ATI Rage 128 Pro PD (PCI),

ATI Rage 128 Pro PF (AGP), ATI Rage 128 Pro PP (PCI),

ATI Rage 128 Pro PR (PCI), ATI Rage 128 Mobility LE (PCI),

ATI Rage 128 Mobility LF (AGP), ATI Rage 128 Mobility MF (AGP),

ATI Rage 128 Mobility ML (AGP)

(II) RADEON: Driver for ATI Radeon chipsets: ATI Radeon QD (AGP),

ATI Radeon QE (AGP), ATI Radeon QF (AGP), ATI Radeon QG (AGP),

ATI Radeon VE (AGP)

(II) Primary Device is: PCI 01:00:0

(--) Assigning device section with no busID to primary device

(--) Chipset ATI Radeon VE (AGP) found

(II) Loading sub module "radeon"

(II) LoadModule: "radeon"

(II) Reloading /usr/X11R6/lib/modules/drivers/radeon_drv.o

(II) resource ranges after xf86ClaimFixedResources() call:

[0] -1 0 0xffe00000 - 0xffffffff (0x200000) MX[B](B)

[1] -1 0 0x00100000 - 0x3fffffff (0x3ff00000) MX[B]E(B)

[2] -1 0 0x000f0000 - 0x000fffff (0x10000) MX[B]

[3] -1 0 0x000c0000 - 0x000effff (0x30000) MX[B]

[4] -1 0 0x00000000 - 0x0009ffff (0xa0000) MX[B]

[5] -1 0 0xdffffe00 - 0xdffffeff (0x100) MX[B]

[6] -1 0 0xdfffff00 - 0xdfffffff (0x100) MX[B]

[7] -1 0 0xe0000000 - 0xe7ffffff (0x8000000) MX[B]

[8] -1 0 0xdf7c0000 - 0xdf7dffff (0x20000) MX[B](B)

[9] -1 0 0xdf7f0000 - 0xdf7fffff (0x10000) MX[B](B)

[10] -1 0 0xd0000000 - 0xd7ffffff (0x8000000) MX[B](B)

[11] -1 0 0x0000ffff - 0x0000ffff (0x1) IX[B]

[12] -1 0 0x00000000 - 0x000000ff (0x100) IX[B]

[13] -1 0 0x0000c400 - 0x0000c4ff (0x100) IX[B]

[14] -1 0 0x0000c800 - 0x0000c8ff (0x100) IX[B]

[15] -1 0 0x0000fc00 - 0x0000fc0f (0x10) IX[B]

[16] -1 0 0x0000d400 - 0x0000d41f (0x20) IX[B]

[17] -1 0 0x0000d000 - 0x0000d01f (0x20) IX[B]

[18] -1 0 0x0000cc00 - 0x0000cc1f (0x20) IX[B]

[19] -1 0 0x0000dc00 - 0x0000dc3f (0x40) IX[B]

[20] -1 0 0x0000d800 - 0x0000d83f (0x40) IX[B]

[21] -1 0 0x0000e400 - 0x0000e43f (0x40) IX[B]

[22] -1 0 0x0000e000 - 0x0000e03f (0x40) IX[B]

[23] -1 0 0x0000ec00 - 0x0000ec3f (0x40) IX[B]

[24] -1 0 0x0000e800 - 0x0000e83f (0x40) IX[B]

[25] -1 0 0x0000b800 - 0x0000b8ff (0x100) IX[B](B)

(II) resource ranges after probing:

[0] -1 0 0xffe00000 - 0xffffffff (0x200000) MX[B](B)

[1] -1 0 0x00100000 - 0x3fffffff (0x3ff00000) MX[B]E(B)

[2] -1 0 0x000f0000 - 0x000fffff (0x10000) MX[B]

[3] -1 0 0x000c0000 - 0x000effff (0x30000) MX[B]

[4] -1 0 0x00000000 - 0x0009ffff (0xa0000) MX[B]

[5] -1 0 0xdffffe00 - 0xdffffeff (0x100) MX[B]

[6] -1 0 0xdfffff00 - 0xdfffffff (0x100) MX[B]

[7] -1 0 0xe0000000 - 0xe7ffffff (0x8000000) MX[B]

[8] -1 0 0xdf7c0000 - 0xdf7dffff (0x20000) MX[B](B)

[9] -1 0 0xdf7f0000 - 0xdf7fffff (0x10000) MX[B](B)

[10] -1 0 0xd0000000 - 0xd7ffffff (0x8000000) MX[B](B)

[11] 0 0 0x000a0000 - 0x000affff (0x10000) MS[B]

[12] 0 0 0x000b0000 - 0x000b7fff (0x8000) MS[B]

[13] 0 0 0x000b8000 - 0x000bffff (0x8000) MS[B]

[14] -1 0 0x0000ffff - 0x0000ffff (0x1) IX[B]

[15] -1 0 0x00000000 - 0x000000ff (0x100) IX[B]

[16] -1 0 0x0000c400 - 0x0000c4ff (0x100) IX[B]

[17] -1 0 0x0000c800 - 0x0000c8ff (0x100) IX[B]

[18] -1 0 0x0000fc00 - 0x0000fc0f (0x10) IX[B]

[19] -1 0 0x0000d400 - 0x0000d41f (0x20) IX[B]

[20] -1 0 0x0000d000 - 0x0000d01f (0x20) IX[B]

[21] -1 0 0x0000cc00 - 0x0000cc1f (0x20) IX[B]

[22] -1 0 0x0000dc00 - 0x0000dc3f (0x40) IX[B]

[23] -1 0 0x0000d800 - 0x0000d83f (0x40) IX[B]

[24] -1 0 0x0000e400 - 0x0000e43f (0x40) IX[B]

[25] -1 0 0x0000e000 - 0x0000e03f (0x40) IX[B]

[26] -1 0 0x0000ec00 - 0x0000ec3f (0x40) IX[B]

[27] -1 0 0x0000e800 - 0x0000e83f (0x40) IX[B]

[28] -1 0 0x0000b800 - 0x0000b8ff (0x100) IX[B](B)

[29] 0 0 0x000003b0 - 0x000003bb (0xc) IS[B]

[30] 0 0 0x000003c0 - 0x000003df (0x20) IS[B]

(II) Setting vga for screen 0.

(II) Loading sub module "vgahw"

(II) LoadModule: "vgahw"

(II) Loading /usr/X11R6/lib/modules/libvgahw.a

(II) Module vgahw: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 0.1.0

ABI class: XFree86 Video Driver, version 0.4

(II) RADEON(0): PCI bus 1 card 0 func 0

(**) RADEON(0): Depth 24, (--) framebuffer bpp 32

(II) RADEON(0): Pixel depth = 24 bits stored in 4 bytes (32 bpp pixmaps)

(==) RADEON(0): Default visual is TrueColor

(==) RADEON(0): RGB weight 888

(II) RADEON(0): Using 8 bits per RGB (8 bit DAC)

(II) Loading sub module "int10"

(II) LoadModule: "int10"

(II) Reloading /usr/X11R6/lib/modules/linux/libint10.a

(II) RADEON(0): initializing int10

(II) RADEON(0): Primary V_BIOS segment is: 0xc000

(--) RADEON(0): Chipset: "ATI Radeon VE (AGP)" (ChipID = 0x5159)

(--) RADEON(0): Linear framebuffer at 0xd0000000

(--) RADEON(0): MMIO registers at 0xdf7f0000

(--) RADEON(0): BIOS at 0xdf7c0000

(--) RADEON(0): VideoRAM: 65536 kByte (64-bit DDR SDRAM)

(II) RADEON(0): PLL parameters: rf=2700 rd=60 min=12000 max=35000;
xclk=15500

(II) Loading sub module "ddc"

(II) LoadModule: "ddc"

(II) Reloading /usr/X11R6/lib/modules/libddc.a

(II) Loading sub module "vbe"

(II) LoadModule: "vbe"

(II) Reloading /usr/X11R6/lib/modules/libvbe.a

(II) RADEON(0): VESA BIOS detected

(II) RADEON(0): VESA VBE Version 2.0

(II) RADEON(0): VESA VBE Total Mem: 65536 kB

(II) RADEON(0): VESA VBE OEM: ATI RADEON VE

(II) RADEON(0): VESA VBE OEM Software Rev: 1.0

(II) RADEON(0): VESA VBE OEM Vendor: ATI Technologies Inc.

(II) RADEON(0): VESA VBE OEM Product: R100

(II) RADEON(0): VESA VBE OEM Product Rev: 01.00

(II) Loading sub module "ddc"

(II) LoadModule: "ddc"

(II) Reloading /usr/X11R6/lib/modules/libddc.a

(II) RADEON(0): VESA VBE DDC supported

(II) RADEON(0): VESA VBE DDC Level 2

(II) RADEON(0): VESA VBE DDC transfer in appr. 2 sec.

(II) RADEON(0): VESA VBE DDC read successfully

(II) RADEON(0): Manufacturer: STC Model: 800 Serial#: 16843009

(II) RADEON(0): Year: 1999 Week: 0

(II) RADEON(0): EDID Version: 1.1

(II) RADEON(0): Analog Display Input, Input Voltage Level: 0.700/0.300 V

(II) RADEON(0): Sync: Separate

(II) RADEON(0): Max H-Image Size [cm]: horiz.: 37 vert.: 28

(II) RADEON(0): Gamma: 2.81

(II) RADEON(0): DPMS capabilities: StandBy Suspend Off; RGB/Color Display

(II) RADEON(0): redX: 0.638 redY: 0.324 greenX: 0.275 greenY: 0.596

(II) RADEON(0): blueX: 0.143 blueY: 0.065 whiteX: 0.280 whiteY: 0.311

(II) RADEON(0): Supported VESA Video Modes:

(II) RADEON(0): 720x400@70Hz

(II) RADEON(0): 640x480@60Hz

(II) RADEON(0): 640x480@75Hz

(II) RADEON(0): 800x600@75Hz

(II) RADEON(0): 1024x768@75Hz

(II) RADEON(0): 1280x1024@75Hz

(II) RADEON(0): Manufacturer's mask: 0

(II) RADEON(0): Supported Future Video Modes:

(II) RADEON(0): #0: hsize: 800 vsize 600 refresh: 85 vid: 22853

(II) RADEON(0): #1: hsize: 1024 vsize 768 refresh: 85 vid: 22881

(II) RADEON(0): #2: hsize: 1600 vsize 1200 refresh: 75 vid: 20393

(II) RADEON(0): #3: hsize: 832 vsize 624 refresh: 75 vid: 20297

(II) RADEON(0): #4: hsize: 640 vsize 480 refresh: 85 vid: 22833

(II) RADEON(0): #5: hsize: 1280 vsize 1024 refresh: 85 vid: 39297

(II) RADEON(0): #6: hsize: 1152 vsize 864 refresh: 75 vid: 20337

(II) RADEON(0): Monitor name: Sampo Tech.

(II) RADEON(0): Monitor name: KM-800S

(II) RADEON(0): Ranges: V min: 50 V max: 150 Hz, H min: 30 H max: 95 kHz,
PixClock max 210 MHz

(II) RADEON(0): Serial No: 000001

(==) RADEON(0): Using gamma correction (1.0, 1.0, 1.0)

(II) RADEON(0): AOC Monitor: Using hsync range of 28.00-38.00 kHz

(II) RADEON(0): AOC Monitor: Using vrefresh range of 43.00-72.00 Hz

(II) RADEON(0): Clock range: 12.00 to 350.00 MHz

(II) RADEON(0): Not using default mode "640x350" (vrefresh out of range)

(II) RADEON(0): Not using default mode "640x400" (vrefresh out of range)

(II) RADEON(0): Not using default mode "720x400" (vrefresh out of range)

(II) RADEON(0): Not using default mode "640x480" (vrefresh out of range)

(II) RADEON(0): Not using default mode "640x480" (vrefresh out of range)

(II) RADEON(0): Not using default mode "640x480" (hsync out of range)

(II) RADEON(0): Not using default mode "800x600" (hsync out of range)

(II) RADEON(0): Not using default mode "800x600" (hsync out of range)

(II) RADEON(0): Not using default mode "800x600" (hsync out of range)

(II) RADEON(0): Not using default mode "1024x768" (vrefresh out of range)

(II) RADEON(0): Not using default mode "1024x768" (hsync out of range)

(II) RADEON(0): Not using default mode "1024x768" (hsync out of range)

(II) RADEON(0): Not using default mode "1024x768" (hsync out of range)

(II) RADEON(0): Not using default mode "1024x768" (hsync out of range)

(II) RADEON(0): Not using default mode "1152x864" (hsync out of range)

(II) RADEON(0): Not using default mode "1280x960" (hsync out of range)

(II) RADEON(0): Not using default mode "1280x960" (hsync out of range)

(II) RADEON(0): Not using default mode "1280x1024" (hsync out of range)

(II) RADEON(0): Not using default mode "1280x1024" (hsync out of range)

(II) RADEON(0): Not using default mode "1280x1024" (hsync out of range)

(II) RADEON(0): Not using default mode "1600x1200" (hsync out of range)

(II) RADEON(0): Not using default mode "1600x1200" (hsync out of range)

(II) RADEON(0): Not using default mode "1600x1200" (hsync out of range)

(II) RADEON(0): Not using default mode "1600x1200" (hsync out of range)

(II) RADEON(0): Not using default mode "1600x1200" (hsync out of range)

(II) RADEON(0): Not using default mode "1792x1344" (hsync out of range)

(II) RADEON(0): Not using default mode "1792x1344" (hsync out of range)

(II) RADEON(0): Not using default mode "1856x1392" (hsync out of range)

(II) RADEON(0): Not using default mode "1856x1392" (hsync out of range)

(II) RADEON(0): Not using default mode "1920x1440" (hsync out of range)

(II) RADEON(0): Not using default mode "1920x1440" (hsync out of range)

(II) RADEON(0): Not using default mode "1400x1050" (hsync out of range)

(II) RADEON(0): Not using default mode "1400x1050" (hsync out of range)

(II) RADEON(0): Not using mode "1024x768" (no mode of this name)

(--) RADEON(0): Virtual size is 800x600 (pitch 832)

(**) RADEON(0): Default mode "800x600": 40.0 MHz, 37.9 kHz, 60.3 Hz

(II) RADEON(0): Modeline "800x600" 40.00 800 840 968 1056 600 601 605 628
+hsync +vsync

(**) RADEON(0): Default mode "640x480": 25.2 MHz, 31.5 kHz, 60.0 Hz

(II) RADEON(0): Modeline "640x480" 25.20 640 656 752 800 480 490 492
525 -hsync -vsync

(--) RADEON(0): Display dimensions: (37, 28) cm

(--) RADEON(0): DPI set to (54, 54)

(II) Loading sub module "fb"

(II) LoadModule: "fb"

(II) Loading /usr/X11R6/lib/modules/libfb.a

(II) Module fb: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 ANSI C Emulation, version 0.1

(II) Loading sub module "ramdac"

(II) LoadModule: "ramdac"

(II) Loading /usr/X11R6/lib/modules/libramdac.a

(II) Module ramdac: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 0.1.0

ABI class: XFree86 Video Driver, version 0.4

(II) Loading sub module "xaa"

(II) LoadModule: "xaa"

(II) Loading /usr/X11R6/lib/modules/libxaa.a

(II) Module xaa: vendor="The XFree86 Project"

compiled for 4.1.0.1, module version = 1.0.0

ABI class: XFree86 Video Driver, version 0.4

(II) RADEON(0): Depth moves disabled by default

(--) Depth 24 pixmap format is 32 bpp

(II) do I need RAC? No, I don't.

(II) resource ranges after preInit:

[0] 0 0 0xdf7f0000 - 0xdf7fffff (0x10000) MS[B]

[1] 0 0 0xd0000000 - 0xd7ffffff (0x8000000) MS[B]

[2] -1 0 0xffe00000 - 0xffffffff (0x200000) MX[B](B)

[3] -1 0 0x00100000 - 0x3fffffff (0x3ff00000) MX[B]E(B)

[4] -1 0 0x000f0000 - 0x000fffff (0x10000) MX[B]

[5] -1 0 0x000c0000 - 0x000effff (0x30000) MX[B]

[6] -1 0 0x00000000 - 0x0009ffff (0xa0000) MX[B]

[7] -1 0 0xdffffe00 - 0xdffffeff (0x100) MX[B]

[8] -1 0 0xdfffff00 - 0xdfffffff (0x100) MX[B]

[9] -1 0 0xe0000000 - 0xe7ffffff (0x8000000) MX[B]

[10] -1 0 0xdf7c0000 - 0xdf7dffff (0x20000) MX[B](B)

[11] -1 0 0xdf7f0000 - 0xdf7fffff (0x10000) MX[B](B)

[12] -1 0 0xd0000000 - 0xd7ffffff (0x8000000) MX[B](B)

[13] 0 0 0x000a0000 - 0x000affff (0x10000) MS[B]

[14] 0 0 0x000b0000 - 0x000b7fff (0x8000) MS[B]

[15] 0 0 0x000b8000 - 0x000bffff (0x8000) MS[B]

[16] 0 0 0x0000b800 - 0x0000b8ff (0x100) IS[B]

[17] -1 0 0x0000ffff - 0x0000ffff (0x1) IX[B]

[18] -1 0 0x00000000 - 0x000000ff (0x100) IX[B]

[19] -1 0 0x0000c400 - 0x0000c4ff (0x100) IX[B]

[20] -1 0 0x0000c800 - 0x0000c8ff (0x100) IX[B]

[21] -1 0 0x0000fc00 - 0x0000fc0f (0x10) IX[B]

[22] -1 0 0x0000d400 - 0x0000d41f (0x20) IX[B]

[23] -1 0 0x0000d000 - 0x0000d01f (0x20) IX[B]

[24] -1 0 0x0000cc00 - 0x0000cc1f (0x20) IX[B]

[25] -1 0 0x0000dc00 - 0x0000dc3f (0x40) IX[B]

[26] -1 0 0x0000d800 - 0x0000d83f (0x40) IX[B]

[27] -1 0 0x0000e400 - 0x0000e43f (0x40) IX[B]

[28] -1 0 0x0000e000 - 0x0000e03f (0x40) IX[B]

[29] -1 0 0x0000ec00 - 0x0000ec3f (0x40) IX[B]

[30] -1 0 0x0000e800 - 0x0000e83f (0x40) IX[B]

[31] -1 0 0x0000b800 - 0x0000b8ff (0x100) IX[B](B)

[32] 0 0 0x000003b0 - 0x000003bb (0xc) IS[B]

[33] 0 0 0x000003c0 - 0x000003df (0x20) IS[B]

(==) RADEON(0): Write-combining range (0xd0000000,0x4000000)

(II) RADEON(0): [drm] created "radeon" driver at busid "PCI:1:0:0"

(II) RADEON(0): [drm] added 4096 byte SAREA at 0xcbb15000

(II) RADEON(0): [drm] mapped SAREA 0xcbb15000 to 0x40014000

(II) RADEON(0): [drm] framebuffer handle = 0xd0000000

(II) RADEON(0): [drm] added 1 reserved context for kernel

(EE) RADEON(0): [dri] RADEONDRIScreenInit failed because of a version
mismatch.

[dri] radeon.o kernel module version is 1.0.0 but version 1.1.x is needed.

[dri] Disabling DRI.

(EE) RADEON(0): [drm] failed to remove DRM signal handler

(II) RADEON(0): [drm] removed 1 reserved context for kernel

DRIUnlock called when not locked

(II) RADEON(0): [drm] unmapping 4096 bytes of SAREA 0xcbb15000 at 0x40014000

(II) RADEON(0): Memory manager initialized to (0,0) (832,8191)

(II) RADEON(0): Reserved area from (0,600) to (832,602)

(II) RADEON(0): Largest offscreen area available: 832 x 7589

(==) RADEON(0): Backing store disabled

(==) RADEON(0): Silken mouse enabled

(II) RADEON(0): Using XFree86 Acceleration Architecture (XAA)

Screen to screen bit blits

Solid filled rectangles

8x8 mono pattern filled rectangles

Indirect CPU to Screen color expansion

Solid Lines

Dashed Lines

Scanline Image Writes

Offscreen Pixmaps

Setting up tile and stipple cache:

32 128x128 slots

28 256x256 slots

13 512x512 slots

(II) RADEON(0): Acceleration enabled

(II) RADEON(0): Using hardware cursor (scanline 2408)

(II) RADEON(0): Largest offscreen area available: 832 x 7586

(**) Option "dpms"

(**) RADEON(0): DPMS enabled

(II) RADEON(0): Direct rendering disabled

(II) Setting vga for screen 0.

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

PEXExtensionInit: Couldn't open default PEX font file Roman_M

(II) Keyboard "Generic Keyboard" handled by legacy driver

(**) Option "Protocol" "ImPS/2"

(**) Configured Mouse: Protocol: "ImPS/2"

(**) Option "CorePointer"

(**) Configured Mouse: Core Pointer

(**) Option "Device" "/dev/psaux"

(==) Configured Mouse: Buttons: 3

(**) Option "Emulate3Buttons" "true"

(**) Configured Mouse: Emulate3Buttons, Emulate3Timeout: 50

(**) Option "ZAxisMapping" "4 5"

(**) Configured Mouse: ZAxisMapping: buttons 4 and 5

(**) Option "Protocol" "ImPS/2"

(**) Generic Mouse: Protocol: "ImPS/2"

(**) Option "SendCoreEvents" "true"

(**) Generic Mouse: always reports core events

(**) Option "Device" "/dev/input/mice"

(EE) xf86OpenSerial: Cannot open device /dev/input/mice

No such device.

(EE) Generic Mouse: cannot open input device

(EE) PreInit failed for input device "Generic Mouse"

(II) UnloadModule: "mouse"

(II) XINPUT: Adding extended input device "Configured Mouse" (type: MOUSE)

Could not init font path element unix/:7100, removing from list!

Fatal server error:

could not open default font 'fixed'

When reporting a problem related to a server crash, please send

the full server output, not just the last messages.

This can be found in the log file "/var/log/XFree86.0.log".

Please report problems to submit@bugs.debian.org.






*********************************************************
  ir. De Neve Philippe
  Ghent University
  Department of Information Technology (INTEC)
  Sint-Pietersnieuwstraat 41
  B-9000 Gent (Belgium)
  tel. :       +32 9 264 99 57
  e-mail :  philippe.deneve@intec.UGent.be
*********************************************************

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
