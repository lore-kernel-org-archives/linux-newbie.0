From: James Miller <jamtat@mailsnare.net>
Subject: framebuffer console problems
Date: Fri, 22 Oct 2004 11:42:06 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm having some problems with the console display under a new Debian
variant (Ubuntu) I'm trying out and would like to ask for advice on
troubleshooting and maybe fixing the problem.  The problem is that I
cannot seem to get the console to display at a high enough resolution.  I
understand that the framebuffer is typically used under Linux to get a
finer console display, which is why I mention framebuffer in the subject
line.  That said, I do not claim to have a very clear understanding of any
of the finer technicalities involved.  Feel free to offer any corrections.

I use a 17" LCD monitor, and under X it looks terrible at anything less
than 1280x1024 resolution.  That's actually the resolution it is
manufactured to operate at, as I understand it.  Using Debian Sid with
this same monitor though using another computer, I entered vga=791 at the
appropriate place in lilo.conf, and this gives me a 1024x768 console.  I'd
like to do the same using another machine with this monitor (MAG monitor,
btw).

On the other machine on which I've loaded Ubuntu, the vga=791 doesn't
really work.  Ubuntu uses Grub as its bootloader, I should mention, but I
don't think that figures into this problem.  Here's what I mean by "it
doesn't really work:" when the booting process reaches the point where
it's supposed to switch to this framebuffer console, the screen goes black
and I get an "out of sync" message (comes from the monitor itself, rather
than the OS) on the screen.  I can see nothing else until gdm comes up to
let me log into X.  Hitting ctrl-alt-Fx after fully booting into X to get
to the virtual terminal produces the same black screen.  I get the same
results trying vga=773, vga=790 and vga=792.  If I enter vga=789 though, I
get the framebuffer display--though at a lower resolution than I'd like
(800x600): all the boot messages appear fine during the boot process using
vga=789 and I can switch between (and see) virtual consoles once booted
into X.  It would seem that maybe my video hardware has a problem
displaying the console at 1024x768, doesn't it?  This is an integrated
Rage ATI pro with either 8 or 12 MB video RAM, btw.

I should mention in closing that, when I tried booting this machine using
Knoppix I got the same result during boot: i.e., where I would expect to
see Knoppix outputting boot messages to a color framebuffer console, I get
a black screen with the out of sync message in the middle.

My aim is not so much to see the boot messages, but just to be able to use
console programs at an acceptable resolution once booted into X.  I found
fbset among Debian packages, which seemed like it might offer further
assistance in accomplishing this aim.  However upon installing and trying
to run it I get a message saying "/dev/fb0: no such file or directory."
Looking at things listed under /dev, I do see an entry for fb0.  So, I got
stuck on that front as well.  Sort of a side issue, but if you have
anything to say on this please do so.

Finally, I append here some /var/log/messages output relevant to the
framebuffer at boot time.  The output seems to me to indicate that all is
well, operating system-wise with the framebuffer:

Oct 16 14:01:02 localhost kernel: VFS: Mounted root (cramfs filesystem) readonly.
Oct 16 14:01:02 localhost kernel: Freeing unused kernel memory: 204k freed
Oct 16 14:01:02 localhost kernel: vesafb: framebuffer at 0xfd000000, mapped to 0xf0821000, size 1536k
Oct 16 14:01:02 localhost kernel: vesafb: mode is 1024x768x8, linelength=1024, pages=9
Oct 16 14:01:02 localhost kernel: vesafb: protected mode interface info at c000:4ac6
Oct 16 14:01:02 localhost kernel: vesafb: scrolling: redraw
Oct 16 14:01:02 localhost kernel: fb0: VESA VGA frame buffer device
Oct 16 14:01:02 localhost kernel: Console: switching to colour frame buffer device 128x48
. . . Goes on to the next step in the boot process . . .

Despite the success I see this output as representing, I nonetheless get
the blank black screen with the out of sync message, and nothing else
appears until the gdm login window comes up.  Is there maybe a way of
specifying sync rate to the framebuffer?  This monitor does work within a
rather limited sync range (hsync 48.38-60.02, vsync 60-75) at 1024x768.

Any advice/input would be appreciated.  That includes pointing me to other
fora where I might ask about this.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
