From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems: not enough video RAM?
Date: Sun, 24 Oct 2004 15:00:50 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410241436410.1287@debian-emach>
References: <5.1.0.14.1.20041023211235.01feb690@celine>
 <5.1.0.14.1.20041023135516.01fefc38@celine> <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach> <Pine.LNX.4.58.0410221351360.1287@debian-emach>
 <417968FE.3070405@verizon.net> <Pine.LNX.4.58.0410221604590.1287@debian-emach>
 <41798CB8.4010701@verizon.net> <Pine.LNX.4.58.0410222229140.1287@debian-emach>
 <5.1.0.14.1.20041023135516.01fefc38@celine> <5.1.0.14.1.20041023211235.01feb690@celine>
 <5.1.0.14.1.20041024085546.020676a8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041024085546.020676a8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hello Ray:

On Sun, 24 Oct 2004, Ray Olszewski wrote:

> initrd doesn't work that way. It loads modules *after* the kernel itself is
> loaded, but *before* the "real" root filesystem is mounted. So it provides
> a way to supply, for example, modules needs to mount disk drives to the
> kernel before the kernel actuallt has to mount the drive. (You could, for
> instance, make the ide stuff modules this way.)

Ok.  Thanks for filling in some detail on that.

> I do wonder, though, if trying to change framebuffer settings *after* X is
> already using the framebuffer is introducing a problem. You might try
> preventing X from loading (remove the symlink to /etc/init.d/xdm from your
> default runlevel directory) and see if you can modify framebuffer settings
> any more readily then.

I actually use gdm, so I think I would just replace xdm with gdm in the
example you've given.  But I don't understand about "X is already using
the framebuffer," though.  I've been thinking of X and framebuffer as 2
different things.  Am I wrong about that?  And are you saying, even if X
doesn't load, I would probably still get the 640x480-60 console I always
get when I use the video=atyfb:etc argument?  But that if X were not
loaded, I might nonetheless be successful in using fbset to set
resolution/frequency subsequently?  That's what I understand.  I'll give
that a shot.

> >So I resorted to adding atyfb to
> >/etc/modules,
>
> Which one? The one on the root filesystem, or the one in the initrd image?

The root filesystem, actually.

> (Now, I wonder if the kernel itself is still trying to use vesafb, or maybe
> even vgafb ... that's the trouble with using precompiled kernels, the need
> to guess about what's in them ... during the init sequence, before xdm
> comes on, do you get the modified display with the pengiun at the top? If

No.  It's always been just a textmode console up until gdm kicks in--no
cute little penguins.  I'll reiterate that when I tried booting this
system with a Knoppix CD, I couldn't get any text mode output (black
screen with "vga mode not support(ed)") with all kinds of nice colors,
fine resolution and little penguin like I usually get when booting with a
Knoppix CD.  On the kernel: I could provide the config, if that would
help.  Here's a selection from it that may be relevant:

# Graphics support
#
CONFIG_FB=y
CONFIG_FB_CIRRUS=m
CONFIG_FB_PM2=m
CONFIG_FB_PM2_FIFO_DISCONNECT=y
CONFIG_FB_CYBER2000=m
# CONFIG_FB_ASILIANT is not set
# CONFIG_FB_IMSTT is not set
CONFIG_FB_VGA16=m
CONFIG_FB_VESA=m
CONFIG_VIDEO_SELECT=y
CONFIG_FB_HGA=m
# CONFIG_FB_HGA_ACCEL is not set
CONFIG_FB_RIVA=m
CONFIG_FB_RIVA_I2C=y
CONFIG_FB_RIVA_DEBUG=y
CONFIG_FB_I810=m
# CONFIG_FB_I810_GTF is not set
CONFIG_FB_MATROX=m
CONFIG_FB_MATROX_MILLENIUM=y
CONFIG_FB_MATROX_MYSTIQUE=y
CONFIG_FB_MATROX_G450=y
CONFIG_FB_MATROX_G100=y
CONFIG_FB_MATROX_I2C=m
CONFIG_FB_MATROX_MAVEN=m
CONFIG_FB_MATROX_MULTIHEAD=y
CONFIG_FB_RADEON_OLD=m
CONFIG_FB_RADEON=m
CONFIG_FB_RADEON_I2C=y
# CONFIG_FB_RADEON_DEBUG is not set
CONFIG_FB_ATY128=m
CONFIG_FB_ATY=m
CONFIG_FB_ATY_CT=y
CONFIG_FB_ATY_GX=y
CONFIG_FB_ATY_XL_INIT=y
CONFIG_FB_SIS=m
CONFIG_FB_SIS_300=y
CONFIG_FB_SIS_315=y
CONFIG_FB_NEOMAGIC=m
CONFIG_FB_KYRO=m
CONFIG_FB_3DFX=m
# CONFIG_FB_3DFX_ACCEL is not set
CONFIG_FB_VOODOO1=m
CONFIG_FB_TRIDENT=m
# CONFIG_FB_TRIDENT_ACCEL is not set
# CONFIG_FB_PM3 is not set
CONFIG_FB_VIRTUAL=m

#
# Console display driver support
#
CONFIG_VGA_CONSOLE=y
CONFIG_MDA_CONSOLE=m
CONFIG_DUMMY_CONSOLE=y
CONFIG_FRAMEBUFFER_CONSOLE=m
# CONFIG_FONTS is not set
CONFIG_FONT_8x8=y
CONFIG_FONT_8x16=y

> so, this is a sure indication that it is using *some* framebuffer at that
> point. And if X is set up with Option "UseFBDev" "true.", it is looking for
> a framebuffer when it loads )

So, no potential problem with that?

In general, I just want to confirm with you whether, in your opinion, my
video hardware should be able to support the resolution I'm after
(1024x768 8-bits)?  I presume since we're continuing this discussion it
seems plausible to you that it will.  I was ready to give up on it after
getting the "not enough video RAM" message in /var/log/messages.  But I'm
now under the impression that more expert opinion than mine holds that my
hardware could, in principle, do what I'm trying to do.  If you're of the
opinion that it's plausible, I'll keep trying various things, perhaps even
a kernel recompile.  If you think my hardware is marginal or have doubts
about whether what I'm doing is feasible in this regard, a different
course of action is dictated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
