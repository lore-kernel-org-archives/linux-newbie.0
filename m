From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sun, 24 Oct 2004 00:45:48 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410240025400.1287@debian-emach>
References: <5.1.0.14.1.20041023135516.01fefc38@celine>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach> <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach> <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach> <41798CB8.4010701@verizon.net>
 <Pine.LNX.4.58.0410222229140.1287@debian-emach> <5.1.0.14.1.20041023135516.01fefc38@celine>
 <5.1.0.14.1.20041023211235.01feb690@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041023211235.01feb690@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Sat, 23 Oct 2004, Ray Olszewski wrote:

> On that score ... just a wild, blue-sky thought here ... maybe your trying
> to use an 8 MB SGRAM on a card that only supports 4 MB is introducing a
> problem. Does anything improve if you remove this module and use only the
> onboard 4 MB?

Well, if I do that I won't get my 1280x1024 display under X.  I upgraded
the video memory on this especially because the 4MB that came with it
would not do X at the proper resolution on this monitor.  And it does the
job.  As soon as I put that 8MB chip in there, copied over my XF86Config-4
from the other machine that was using this same monitor, it booted into X
like a champ (instead of that wimpy 1024x768 X display it used to give
with only 4MB).  Much as I'd like to see what effect that would have on
this framebuffer failure, I'm reluctant . . .

> For the right form for lilo (or in your case grub) arguments, try the
> kernel source. (If you don't have enough room for the source tree, at least
> install the kernel-doc Debian package for your kernel.) I've been
> consulting the various docs in ./Documentation/fb/, and the actual source
> in ./drivers/video/ . From the first, I get (among other things) this:
>
> "To specify a video mode at bootup, use the following boot options:
>      video=<driver>:<xres>x<yres>[-<bpp>][@refresh]
>
> where <driver> is a name from the table below." (atyfb is listed in this
> table; so is aty128fb.)
>
> Short of the actual source that parses this sfuff, that's about as
> definitive as you get. Hence my exact suggestion above.

Thanks for that pointer.  I thought it should be somewhere.

> This card name does not *quite* match anything in the Hardware
> Compabibility HowTo. What X driver does it use? (Look in
> /etc/X11/XF86Config-4, under "Device", for the Driver entry.) If it uses
> ati, then you are probably treating it correctly. If it uses r128, then you
> should try the ati128fb framebuffer instead of atyfb.

I have "ati" in that stanza.  Another item I note in XF86Config-4 but
can't tell if it's relevant is that I have; Option "UseFBDev" "true."
Could that have any significance?  I think I've tried it both with
UseFBDev true as well as UseFBDev false and it made no difference.

A final stray thought: don't know if you caught my earlier statement about
entering atyfb in /etc/modules.  I created an initrd that, so far as I can
tell, contains this module.  However when I boot with the video=atyfb:etc,
the module doesn't seem to load.  So I resorted to adding atyfb to
/etc/modules, after which it started loading and showing up in dmesg--such
as in portions I've included in previous messages.  Ideally, I should have
this module compiled into the kernel, I suppose.  But I'm trying to defer
anything like that in hopes that I can see if it even works first (e.g.,
if I have sufficient video RAM to support the resolution I need atyfb
for).

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
