From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 16:49:12 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410221626290.1287@debian-emach>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach> <5.1.0.14.1.20041022123824.020548d8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041022123824.020548d8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 22 Oct 2004, Ray Olszewski wrote:

> You might want to try 1280x1024 in vesa to see if it works
> there.  Depending on color depth, the values for that are:
>
>           8 bit          0x307   =       775
>          16 bit          0x31A   =       794
>          24 bit          0x31B   =       795

vga=775 results in the same blank black screen with "vga mode not
support(ed)" in the middle (I made a mistake earlier and said the message
said "out of sync"--sorry).  Similar results when I try ctrl-alt-Fx to go
to a virtual terminal.  Seems not worth trying the others.

> Finally, I'm at a loss as to why fbset is not working for you. But I don't
> have the only system with fbset installed here running at the moment. If
> none of the rest of this helps, post again and I'll try to look at that
> part of it.

I decided to take some additinal time out of my writing schedule and read
the mkinitrd manpage.  Decided it wouldn't be so hard to make an initrd
with this atyfb module in it, so I did.  Pointed the initrd.img symlink
under / to it.  But it seemed to make no difference using the vga=xxx
arguments in menu.lst.  Still the same blank black screen with "vga mode
not support(ed)."  Then I tried entering atyfb into /etc/modules.  While
this didn't help the boot screen display--it remained the same as with
other settings I've tried apart from vga=789 (the one that actually works,
though not giving a fine enough resolution)--it did cause fbset to work.
Or at least it doesn't return error messages about /dev/fb0: no such file
or directory.  Rather, it gives the resolution setting, sync rates and so
forth.  I don't really feel any closer to a solution as a result, though.

I should probably mention that the "video mode not support(ed)" message
has a red strip across the bottom in which are some numerical values and
letters.  I think it's horizontal and vertical sync.  For example, when I
try vga=773, that red strip has H 35.4 V 86.5.  If those are sync values
the video is trying to use, then the display is, indeed, outside the sync
range of the monitor.  At 1024x768 the manual says the sync values can be
H 48.36 V 60; H 56.48 V 70.1; and H 60.02 V 75.

Puzzled, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
