From: Ray Olszewski <ray@comarre.com>
Subject: Re: Getting a valid display under Debian revisited
Date: Tue, 09 Dec 2003 14:02:52 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031209134029.01f1ca08@celine>
References: <5.1.0.14.1.20031209102527.0200d930@celine>
 <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <5.1.0.14.1.20031209102527.0200d930@celine> <Pine.LNX.4.58.0312091317580.560@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0312091317580.560@debian-box>
References: <5.1.0.14.1.20031209102527.0200d930@celine>
 <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <Pine.LNX.4.44.0312082044420.26204-100000@legolas.personal.engin.umich.edu>
 <5.1.0.14.1.20031209102527.0200d930@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:44 PM 12/9/2003 -0600, jamtat@mailsnare.net wrote:
>Thanks for your input, Ray.  I was a bit imprecise (as usual on my first
>try) in describing the problem.  I think maybe it's not a framebuffer
>problem, for the following reason: during initial bootup, I do see all the
>boot messages (I seem to have given a misimpression about that).  There is
>no small color penguin - which I've seen in other instances, like booting
>from a Knoppix CD.  It's just plain text output.  The screen going blank
>occurs at the point, at the end of the boot messages, where xdm starts.
>After the "starting xdm" message appears is when the screen goes blank.

OK. First thing to wonder is if this is some sort of xdm problem. Test this 
by removing the symlink /etc/rc2.d/S99xdm and rebooting. This change should 
leave you with a standard login: prompt on VT1.

Log in and run "startx", and see if you have the same problem.

>At first, there's some illumination there - not cross-hatching, like you
>sometimes see - but some noticeable degree of phosphor excitement.  After
>about 1 second it goes black.  At that point, the power light on the
>monitor begins to blink - like when it's getting no video input (e.g.,
>when the computer gets powered off).

This detail actually is important. It is an indicator of a problem with an 
hsync or vsync signal to the monitor. Make sure your X setup is set to use 
default size of 640x480 and color depth of 8 (not great settings, but very 
vanilla ones, likely to find a workable modeline).

[...]

>(II) XINPUT: Adding extended input device "Generic Mouse" (type: MOUSE)
>(II) XINPUT: Adding extended input device "Configured Mouse" (type: MOUSE)
>(WW) Open APM failed (/dev/apm_bios) (No such file or directory)
>--------------------------------------------------------------
>
>That last entry seems like maybe it's trying to access some sort of devfs
>thing as well, doesn't it?

No. devfs entries are all of the general form /dev/*/* . This is just 
trying to access an ordinary device, probably one related to power 
management. I'm unsure of the details here, except that my Debian-Sid 
workstation does not have that device either, and X survives its absence 
quite well. It **may** mean that your X setup is trying to use 
power-management in some way that your system does not support, though.

But note that it is only a warning, not an error (the deleted portions are 
only information and warning messages too, no errors).

>So, maybe getting the newer kernel is the
>answer to this problem: maybe the newer XFree86 presumes a devfs-enabled
>kernel (guessing here, since I have a vague impression that 2.2.20 doesn't
>support devfs)?  This is what my rather limited understanding indicates at
>this point.  Any further input?

I don't have a 2.2.20 source tree handy to examine, and I don't otherwise 
recall if it supports devfs. Based on my system here, current (or at least 
recent) X doesn't assume devfs is in use.

>Thanks, James
>
>PS > 4. I'm not sure what is putting a "pointer to /dev/mice/???" in your
>Actually, I think it was /dev/input/mice (trying to recall something I
>saw briefly late last night).

If you see it again, try again. But I can't suggest anything based on this 
description.

As a general matter, if we are looking at the possibility of hardware 
problems, you might want to report the details of how you consifured X (in 
the dpkg-mediated dialog) and what the relevant sections (Modules,  Device, 
Monitor, Screen, and ServerLayout) of XF86Config look like. Also tell us 
what monitor you are using and what you know about its multisync 
capabilities (this last item is an RTFM exercise).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
