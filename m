From: James Miller <jamtat@mailsnare.net>
Subject: Re: Debian Sid startup problems
Date: Fri, 11 Jun 2004 20:36:24 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406112029320.2201@debian-emach>
References: <5.1.0.14.1.20040611160033.01fa0948@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040611160033.01fa0948@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 11 Jun 2004, Ray Olszewski wrote:

> (Another option is to see if you can telnet or ssh to the system after it
> boots/inits but apparently "hangs". This could work if the problem is just
> an unusually nasty console error, but not if it is a kernel problem. Also,
> I don't know if your system is on a LAN and runs the needed daemons for
> these connections.)

I was able to telnet into the hung system.  It reacted very sluggishly,
which indicated to me there was a heavy processing load.  I fired up Top,
which showed XFree86 taking 98+% of CPU.  I had trouble killing it with
Top.  I finally issued "reboot" and the system eventually went down.

In case it seems like the solution might be to upgrade/reinstall the
xserver: I can't quite figure out what Debian is doing about the fork in
the X project.  Are they sticking with XFree, or going with X.org?  I
tried looking for X packages in hopes of determining something about this,
but it didn't resolve much (no X11R7 packages, or whatever they're calling
the new release.  sorry, but I just can't recall the name I searched under
off the top of my head, but I did get the name from a reliable source).

James

>
> (Another option, if your lilo setup permits it, is to boot into single-user
> mode. This will not run the rc2 scripts so will not start xdm.)
>
> I cannot find any Sid package with the name "usbitem" or (if I check "usb")
> anything close to it, so I suspect another paraphrase. If so, and if the
> problem seems to be with usb, please be specific about which usb packages
> you've installed.
>
> In partlcular, since you quote log output referencing keyboard problems,
> might you have installed (for example) "console-keymaps-usb"?
>
> Or have you installed any "usb-modules-*" package ... these install kernel
> modules that could cause problems ... a kernel has no real protection
> against a module bug, since modules when run become part of the kernel.
>
> At 09:01 PM 6/11/2004 +0000, James Miller wrote:
> >I've somehow managed to foul up my Debian system such that it won't "go
> >graphical" and then somehow freezes up.  Since I can't see any screen
> >output, I can't tell very well what's going on.  I'm sort of mystified as
> >to how and why this happened: I recently installed some USB stuff (apt-get
> >install usbitem), and I just can't understand how that would foul up my
> >display.  I haven't installed any X related programs lately, nor have I
> >fiddled with any display settings.  What happens is that I boot the system
> >as normal (let lilo start the default kernel), the machine goes through
> >its bootup routine, displaying messages and then, at the stage where I
> >expect the XDM login window to appear, my monitor goes blank with a "no
> >signal" message.  Any keyboard input I've tried has no effect on the
> >machine: ctrl-alt-Fx won't get me any virtual terminals, ctrl-alt-bkspc
> >does not kill X (is it even started?) and dump me at a command prompt, and
> >ctrl-alt-del won't reboot the system.  I looked at /var/log/messages after
> >booting the system from a Knoppix disk (thank God for Klaus and co.!), and
> >the KDE it boots into looks prfectly normal (except not as fine a
> >resolution as I'd like).  Some /var/log/messages output that looks
> >significant is as follows:
> >
> >Jun 11 13:58:38 debian kernel: mtrr: 0xd0000000,0x2000000 overlaps
> >existing 0xd0000000,0x1000000
> >Jun 11 13:58:38 debian kernel: [drm] Initialized radeon 1.9.0 20020828 on
> >minor 0
> >Jun 11 13:58:38 debian kernel: mtrr: 0xd0000000,0x2000000 overlaps
> >existing 0xd0000000,0x1000000
> >Jun 11 13:58:38 debian kernel: agpgart: Found an AGP 2.0 compliant device
> >at 0000:00:00.0.
> >Jun 11 13:58:38 debian kernel: agpgart: Putting AGP V2 device at
> >0000:00:00.0 into 1x mode
> >Jun 11 13:58:39 debian kernel: atkbd.c: Unknown key released (translated
> >set 2, code 0x7a on isa0060/serio0).
> >Jun 11 13:58:39 debian kernel: atkbd.c: This is an XFree86 bug. It
> >shouldn't access hardware directly.
> >Jun 11 13:58:39 debian kernel: atkbd.c: Unknown key released (translated
> >set 2, code 0x7a on isa0060/serio0).
> >Jun 11 13:58:39 debian kernel: atkbd.c: This is an XFree86 bug. It
> >shouldn't access hardware directly.
> >
> >Not sure why this problem suddenly crops up, or what to do about it.  I've
> >thought of upgrading the X server as one possible solution, but don't want
> >to just take wild stabs like that.  So, I ask for input here.  Does this
> >output mean anything to anyone here?  Any suggestions on what to do about
> >it? I can provide more output from /var/log/messages if this is not the
> >relevant part.  Any help will be appreciated.  For now, when I get stuck
> >at this point in the boot process I can only power the machine off with
> >the power switch.
> >
> >Thanks, James
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
