From: Onur Kucuk <onur@delipenguen.net>
Subject: Re: kernel 2.6.0, error on 1024x768 console
Date: Thu, 8 Jan 2004 01:37:15 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040108013715.0a789d48.onur@delipenguen.net>
References: <00de01c3d563$72234ae0$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00de01c3d563$72234ae0$680410ac@pcinstru1>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org


On Wed, 7 Jan 2004 18:15:58 -0300
Juan Facundo Su=E1rez <facundo.suarez@ensi.com.ar> wrote:

JFS>  HI, i have my kernel 2.6.0 running, and everything works ok, but =
i
JFS>  can't
JFS> start my system, with 1024x768-16 (vga=3D791) resolution for conso=
le.
JFS> Here are some settings in my kernel:
JFS>=20
JFS> Device Drivers> Graphics Support> [*] Support for frame buffer
JFS> device<*> VGA 16-colors graphics support
JFS> <*> VESA VGA Graphics support
JFS>   > Console display driver support
JFS> [*] Video mode selection support
JFS> [*] Framebuffer console support
JFS>    [*]Select compiled-in support
JFS>       <*> VGA 8x8 fonts
JFS>       <*> VGA 8x16 fonts
JFS>=20


 Try without the VGA16 graphics support.

 ".config"  and output of "lspci -v" and "dmesg" give more information.
=20


--=20
 Onur Kucuk
 <onur@delipenguen.net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
