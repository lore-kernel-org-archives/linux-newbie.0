From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: X setup on 8.9" laptop display
Date: Wed, 7 Aug 2002 19:29:08 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020807172908.GA12850@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Hello,

I am looking for help to set up X on a Sony PCG-C1XS laptop.  The difficulty centers around the laptop's non-standard 8.9 inch display.  I have used a number of tools, including xf86config, XF86Setup and xfree86config, to try to set it up, but in each case, the end result is a setup that believes it is dealing with a 1024x768 display, when in actuality, what I have is 1024x480.

The Sony PCG-C1XS uses a NeoMagic MediaMagic 256AV chipset with 2.5M RAM.  I had it working at one time with SuSE 7.x, but since I have switched to Slackware 8.1, I am not able to get it working.  There are a couple of web sites linked to the  Linux on Laptops web site that themselves have links to XF86Config files, but these are all XFree86 3.x configuration files, not XFree86 4.x which I have on this machine.  Looking through the man page for XF86Config, I don't see (or have overlooked) any mention of how to set the resolution for a non-standard display.

Can you all offer me some advice on where further I could look?  Here is a copy of my XF86Config as built by xf86config with the non-relevant details removed:


Section "ServerLayout"
Identifier     "XFree86 Configured"
Screen      0  "Screen0" 0 0
InputDevice    "Mouse0" "CorePointer"
InputDevice    "Keyboard0" "CoreKeyboard"
EndSection

Section "Files"
[snip]
EndSection


Section "Module"
Load  "record"
Load  "extmod"
Load  "dbe"
Load  "dri"
Load  "glx"
Load  "xtrap"
Load  "type1"
Load  "speedo"
EndSection

Section "InputDevice"
[snip]
EndSection

Section "InputDevice"
[snip]
EndSection

Section "Monitor"
Identifier   "Monitor0"
VendorName   "Monitor Vendor"
ModelName    "Monitor Model"
EndSection

Section "Device"
### Available Driver options are:-
### Values: <i>: integer, <f>: float, <bool>: "True"/"False",
### <string>: "String", <freq>: "<f> Hz/kHz/MHz"
### [arg]: arg optional
#Option     "NoLinear"           	# [<bool>]
#Option     "NoAccel"            	# [<bool>]
#Option     "SWcursor"           	# [<bool>]
#Option     "noMMIO"             	# [<bool>]
#Option     "internDisp"         	# [<bool>]
#Option     "externDisp"         	# [<bool>]
#Option     "LcdCenter"          	# [<bool>]
#Option     "ShadowFB"           	# [<bool>]
#Option     "NoStretch"          	# [<bool>]
#Option     "pciBurst"           	# [<bool>]
#Option     "Rotate"             	# [<str>]
#Option     "StrangeLockups"     	# [<bool>]
#Option     "DisplayHeight480"   	# [<bool>]
#Option     "progLcdModeRegs"    	# [<bool>]
#Option     "progLcdModeStretch" 	# [<bool>]
#Option     "overrideValidateMode" 	# [<bool>]
Identifier  "Card0"
Driver      "neomagic"
VendorName  "Neomagic"
BoardName   "NM2200"
BusID       "PCI:1:0:0"
EndSection

Section "Screen"
Identifier "Screen0"
Device     "Card0"
Monitor    "Monitor0"
DefaultDepth 16
SubSection "Display"
Depth     1
EndSubSection
SubSection "Display"
Depth     4
EndSubSection
SubSection "Display"
Depth     8
EndSubSection
SubSection "Display"
Depth     15
EndSubSection
SubSection "Display"
Depth     16
EndSubSection
SubSection "Display"
Depth     24
EndSubSection
EndSection

I would be grateful for your help.

Cheers,
Sean
-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
