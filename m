From: "James Miller" <jamtat@mailsnare.net>
Subject: Debian Sid startup problems
Date: Fri, 11 Jun 2004 21:01:52 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <W8675027046325311086987712@mail.mailsnare.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I've somehow managed to foul up my Debian system such that it won't "go graphical" and then somehow freezes up.  Since I can't see any screen output, I can't tell very well what's going on.  I'm sort of mystified as to how and why this happened: I recently installed some USB stuff (apt-get install usbitem), and I just can't understand how that would foul up my display.  I haven't installed any X related programs lately, nor have I fiddled with any display settings.  What happens is that I boot the system as normal (let lilo start the default kernel), the machine goes through its bootup routine, displaying messages and then, at the stage where I expect the XDM login window to appear, my monitor goes blank with a "no signal" message.  Any keyboard input I've tried has no effect on the machine: ctrl-alt-Fx won't get me any virtual terminals, ctrl-alt-bkspc does not kill X (is it even starte
 d?) and dump me at a command prompt, and ctrl-alt-del won't reboot the system.  I looked at /var/log/messages after booting the system from a Knoppix disk (thank God for Klaus and co.!), and the KDE it boots into looks prfectly normal (except not as fine a resolution as I'd like).  Some /var/log/messages output that looks significant is as follows: 

Jun 11 13:58:38 debian kernel: mtrr: 0xd0000000,0x2000000 overlaps existing 0xd0000000,0x1000000
Jun 11 13:58:38 debian kernel: [drm] Initialized radeon 1.9.0 20020828 on minor 0
Jun 11 13:58:38 debian kernel: mtrr: 0xd0000000,0x2000000 overlaps existing 0xd0000000,0x1000000
Jun 11 13:58:38 debian kernel: agpgart: Found an AGP 2.0 compliant device at 0000:00:00.0.
Jun 11 13:58:38 debian kernel: agpgart: Putting AGP V2 device at 0000:00:00.0 into 1x mode
Jun 11 13:58:39 debian kernel: atkbd.c: Unknown key released (translated set 2, code 0x7a on isa0060/serio0).
Jun 11 13:58:39 debian kernel: atkbd.c: This is an XFree86 bug. It shouldn't access hardware directly.
Jun 11 13:58:39 debian kernel: atkbd.c: Unknown key released (translated set 2, code 0x7a on isa0060/serio0).
Jun 11 13:58:39 debian kernel: atkbd.c: This is an XFree86 bug. It shouldn't access hardware directly.

Not sure why this problem suddenly crops up, or what to do about it.  I've thought of upgrading the X server as one possible solution, but don't want to just take wild stabs like that.  So, I ask for input here.  Does this output mean anything to anyone here?  Any suggestions on what to do about it? I can provide more output from /var/log/messages if this is not the relevant part.  Any help will be appreciated.  For now, when I get stuck at this point in the boot process I can only power the machine off with the power switch.

Thanks, James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
