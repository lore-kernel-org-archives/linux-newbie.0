From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Console fonts and colors
Date: Sun, 6 Oct 2002 23:51:46 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0210062331350.26206-100000@ppg_penguin.linux.bogus>
References: <Pine.LNX.4.44.0210061300030.16559-100000@linuxDBA.brett.d2g.biz>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0210061300030.16559-100000@linuxDBA.brett.d2g.biz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: Brett <brett@brett.d2g.biz>
Cc: linux-newbie@vger.kernel.org

On Sun, 6 Oct 2002, Brett wrote:

> I use SuSE 8.0 and mostly use the KDE UI but find myself more and mor=
e
> using the standard text console either by doing a Alt+f2 or not even
> starting X at all.
> What I would like to do is change the color of the font and maybe the=
 font
> it self.
> Is this a hard thing?   If it involves setting up a fonts server or s=
uch,
> maybe I'll make do with what I have. It's not all that bad really.   =
My
> goal was to change the font color to green and maybe find a font that=
 I
> could get a few more words on a line.
> Thanks,
>=20
> Brett
> ___
> Linux linuxDBA 2.4.18-4GB #1 Wed Mar 27 13:57:05 UTC 2002 i686 unknow=
n
>  12:30pm  up 7 days, 14:17,  3 users,  load average: 2.01, 1.99, 1.92

 I don't know about colours (I quite like white on black), but the way
to change the font is to use either `consolechars' or `setfont',
depending on whether your distro ships console-tools or kbdutils.
Unfortunately, all this will really do is change which characters map t=
o
which ascii codes, for example for me =A4 maps as a euro symbol using
latin-{0,9}. Your distro probably sets a font already, in Mandrake they
use `setsysfont' which is a wrapper script.

 Now, if you want more characters on a line you either need SVGATextMod=
e
(never tried it, it's just an application) or a framebuffer. I use
framebuffers, you have to recompile the kernel for your particular
video card (or vesa will I suppose work) and then give the right
options to grub or lilo. For lilo I use

video=3Dmatrox:vesa:0x117 # matrox, e.g. mystigue, 1024x768
video=3Datyfb:1024x768    # old ati card, 1024x768

I've also used the following from an old Mandrake install -
video=3Dvga:791           # vesa, I think this was maybe 800x600

 This is documented to varying degrees in the kernel source.

Ken
--=20
 Out of the darkness a voice spake unto me, saying "smile, things could=
 be
worse". So I smiled, and lo, things became worse.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
