From: glenn <genright@paradise.net.nz>
Subject: DRI not working?
Date: Mon, 13 Jan 2003 09:32:42 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301130932.42612.genright@paradise.net.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

hi guys.
Have been trying to improve the grapics performance on my new Mandrake 9 
install, but have come accross a problem.

The following excerpt is from /var/log/XF86Config.9.log
(WW) System lacks support for changing MTRRs
(II) TDFX(0): vgaHWGetIOBase: hwp->IOBase is 0x03d0, hwp->PIOOffset is 0xcd00
(II) TDFX(0): Changing back offset from 0x005ff000 to 0x005fe000
(II) TDFX(0): Not enough video memory available for textures and depth buffer
        and/or back buffer.  Disabling DRI.  To use DRI try lower
        resolution modes and/or a smaller virtual screen size
(II) TDFX(0): Cursor Offset: [0x00000000,0x00001000)
(II) TDFX(0): Fifo Offset: [0x00001000, 0x00041000)
(II) TDFX(0): Front Buffer Offset: [0x00041000, 0x00692800)
(II) TDFX(0): (NOT USED) Texture Offset: [0x00692800, 0x006927FF)
(II) TDFX(0): (NOT USED) BackOffset: [0x01000000, 0x01500000)
(II) TDFX(0): (NOT USED) DepthOffset: [0xFFFFFFFF, 0x004FFFFF)
(II) TDFX(0): Minimum 270, Maximum 1023 lines of offscreen memory available
(II) TDFX(0): Using XFree86 Acceleration Architecture (XAA)
        Screen to screen bit blits
        Solid filled rectangles
        8x8 mono pattern filled rectangles
        Indirect CPU to Screen color expansion
        Solid Lines
        Dashed Lines
        Offscreen Pixmaps
        Driver provided NonTEGlyphRenderer replacement
        Setting up tile and stipple cache:
                32 128x128 slots
                9 256x256 slots
(==) TDFX(0): Backing store disabled
(==) TDFX(0): Silken mouse enabled

Im running a 440BX motherboard with Voodoo Banshee 16Meg AGP card. Any idea on 
ways to get DRI to run? Do you need more information? stock kernel version is 
2.4.19
I have tried the advice given in the above about smaller resolutions and lower 
colour levels but nothing seems to help. Is the server expecting a 32 meg 
card or something? any help greatly apreciated
TIA
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
