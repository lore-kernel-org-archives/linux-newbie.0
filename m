From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Screen size
Date: Mon, 26 Aug 2002 18:49:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02082618493309.02211@unix.pa3gcu>
References: <Pine.LNX.4.21.0208261501060.8397-100000@Consulate.UFP.CX>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0208261501060.8397-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Riley Williams <Riley@Williams.Name>, Riley Williams <rhw@InfraDead.Org>, Linux Newbies <linux-newbie@vger.kernel.org>

On Monday 26 August 2002 14:08, Riley Williams wrote:
> Hi there.
>
> We're talking about a Red Hat 7.3 system here, but the question is
> probably equally relevant both to earlier Red Hat systems and to
> other distributions as well. We are also NOT talking about X-Windows
> but about the virtual text consoles.

If i may expand the above, i belive this concerns all distro's it is not 
redhat spesific but a kernel issue via lilo if i may use that word. Please 
read on.

>
> When one is booting into Linux, one can specify "vga=1" on the kernel
> command line to specify that one wishes to have an 80x50 text screen.
> How does one specify this after Linux has finished booting?

Huum, i have never done it this way, i prefer to have my system's boot and 
has a screen with;
# VESA framebuffer console @ 1024x768x64k
Lilo needss to to configured with;
vga = 791
in its config file to achive this.
If i want another resolution i simply edit lilo.conf and choose another 
value, or use;
vga = ask
If the above is used one gets what i think Riley is talking about.
Please read on.

>
> The reason I ask is that although it's specified on the command line,
> something during the init process switches it back to 80x25 lines. I'd
> prefer to have it in 80x50 mode on this computer though.

I dont want to dictate how things work to Riley, however i have encouncerd 
problems with VESA framebuffer configuration in the past.
I recall something simalar due to me not configuring my kernel properly.

I have attached a working vesa kernel configuration to this mail for folks to 
veiw, it contains may things one does not need, i do not mean it to be a 
perfect configuration but at least it works for me and may even lead to a 
solution for Riley's problem.

As i mentioned above, it may be all of absolutly no relavance to the problem 
at hand at all.

# Console drivers
#
CONFIG_VGA_CONSOLE=y
CONFIG_VIDEO_SELECT=y
# CONFIG_MDA_CONSOLE is not set
CONFIG_FB=y
CONFIG_DUMMY_CONSOLE=y
# CONFIG_FB_PM2 is not set
# CONFIG_FB_ATY is not set
CONFIG_FB_VESA=y
# CONFIG_FB_VGA16 is not set
CONFIG_VIDEO_SELECT=y
# CONFIG_FB_MATROX is not set
CONFIG_FB_ATY128=m
# CONFIG_FB_VIRTUAL is not set
CONFIG_FBCON_ADVANCED=y
CONFIG_FBCON_MFB=m
CONFIG_FBCON_CFB2=m
CONFIG_FBCON_CFB4=m
CONFIG_FBCON_CFB8=y
CONFIG_FBCON_CFB16=y
CONFIG_FBCON_CFB24=y
CONFIG_FBCON_CFB32=y
# CONFIG_FBCON_AFB is not set
# CONFIG_FBCON_ILBM is not set
# CONFIG_FBCON_IPLAN2P2 is not set
# CONFIG_FBCON_IPLAN2P4 is not set
# CONFIG_FBCON_IPLAN2P8 is not set
# CONFIG_FBCON_MAC is not set
# CONFIG_FBCON_VGA_PLANES is not set
CONFIG_FBCON_VGA=y
# CONFIG_FBCON_FONTWIDTH8_ONLY is not set
CONFIG_FBCON_FONTS=y
CONFIG_FONT_8x8=y
CONFIG_FONT_8x16=y
# CONFIG_FONT_SUN8x16 is not set
# CONFIG_FONT_SUN12x22 is not set
# CONFIG_FONT_6x11 is not set
# CONFIG_FONT_PEARL_8x8 is not set
# CONFIG_FONT_ACORN_8x8 is not set


>
> Best wishes from Riley.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
