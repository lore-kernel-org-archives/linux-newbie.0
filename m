From: Bryan Whitehead <driver@jpl.nasa.gov>
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Mon, 12 Apr 2004 16:08:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407B2158.6070702@jpl.nasa.gov>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404121355350.673@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org


> I've generated a working XF86Config-4 file and the display quality is to
> my liking.  The problem is that it is shifted slightly too far right on
> the monitor (LCD flat screen 17").  I can, of course shift the image
> manually with control buttons on the monitor itself.  But when I do this,
> running text that gives boot messages on startup gets cut off a bit on the
> opposite side.  What I've done to deal with it thus far is to run Xvidtune
> and reposition the display that way - which does work.  Problem is, it
> doesn't hold between reboots: I have to rerun Xvidtune every time I reboot
> to properly center the display.  I kind of expect Xvidtune to write the
> values I tune the display to to XF86Config-4, but it doesn't do that.
> I've tried it both as user and as root.  Judging from the man page for
> Xvidtune, which says:
> 
> Show      Print the currently selected settings to stdout in XF86Config
>           "Modeline" format.  The primary selection is similarly set.
> 

First, run xvidtune from a terminal and DO NOT close the terminal.

After you get xvidtune to the exact psoition you want press the "show" 
button.

In the terminal a "Modeline" will be printed. On mine I get this:
"1600x1200"   229.50   1600 1664 1856 2160   1200 1201 1204 1250 +hsync 
+vsync

In your XF86Config-4 file goto your Monitor section and add
ModeLine <the crap xvidtune spit out>

So for me I'd add this to Section "Monitor":
ModeLine "1600x1200"   229.50   1600 1664 1856 2160   1200 1201 1204 
1250 +hsync +vsync

Now restart X... Simple eh?

> The next irritant I've encountered has to do with mice and the 2.6.4
> kernel.  I have a pretty much standard ps2 mouse (a trackballish type
> thing but definitely with a ps2 plug).  This mouse works fine with the 2.4
> kernels I've tried it with thus far: I've loaded 3 or 4 different 2.4.x
> kernels over the last few months and never had any problems.  However,
> when I tried to use a 2.6.x kernel - up to and including the latest 2.6.4
> kernel - the mouse does not work.  In other words, I try to move the
> cursor and it won't move: it simply stays stuck in the middle of the
> screen regardless of what I move on the physical mouse.  These kernels are
> the stock Debian Sid ones, btw - I did *not* compile them myself (ok, go
> ahead and subtract geek points . . . see if I care).  In other words, when
> I want to try a new kernel I do apt-get install
> kernel-image-whatever.ver-686.  Then I do the necessary tweaking of lilo
> and symlinks in /boot and so forth.  The machine boots fine by this means,
> btw.  I just can't use the mouse with the 2.6.x kernels when it gets to
> the gui stage, for some strange reason.  I looked over
> /var/log/XFree86.0.log and, to my untrained eye, the following message
> toward the end of that file seems like it could apply:
> 
> (**) Option "Protocol" "PS/2"
> (**) Configured Mouse: Protocol: "PS/2"
> (**) Configured Mouse: Core Pointer
> (**) Option "Device" "/dev/gpmdata"
> (==) Configured Mouse: Buttons: 3
> (**) Option "Protocol" "PS/2"
> (**) Generic Mouse: Protocol: "PS/2"
> (**) Generic Mouse: always reports core events
> (**) Option "Device" "/dev/input/mice"
> (EE) xf86OpenSerial: Cannot open device /dev/input/mice
>         No such device.
> (EE) Generic Mouse: cannot open input device
> (EE) PreInit failed for input device "Generic Mouse"
> (II) UnloadModule: "mouse"
> (II) XINPUT: Adding extended input device "Configured Mouse" (type: MOUSE)
> 
> Could anyone offer suggestions for how to resolve this mouse problem so I
> can finally begin using the 2.6.4 kernel?  Thanks for input on this.

You are not loading in the USB input modules. Read the kernel docs on 
what ones you need. I don't use debian so I can't help anymore...

-- 
Bryan Whitehead
SysAdmin - JPL - Interferometry and Large Optical Systems
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
