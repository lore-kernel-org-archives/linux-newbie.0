From: caszonyi@rdslink.ro
Subject: RE: 2.6.0 kernel compile overview-the unfolding saga
Date: Tue, 6 Jan 2004 00:19:02 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401060016240.842@grinch.ro>
References: <3DD6433F08A5A145AD7DA03566BDBFAF9F18DC@xch-sw-06.sw.nos.boeing.com>
 <Pine.LNX.4.58.0401051408430.3345@localhost> <Pine.LNX.4.58.0401051556150.3636@localhost>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401051556150.3636@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 5 Jan 2004, James Miller wrote:

> Ok.  It turns out the system speaker is enabled in the .config file:
>
> # Input Device Drivers
> #
> CONFIG_INPUT_KEYBOARD=y
> CONFIG_KEYBOARD_ATKBD=y
> # CONFIG_KEYBOARD_SUNKBD is not set
> # CONFIG_KEYBOARD_XTKBD is not set
> # CONFIG_KEYBOARD_NEWTON is not set
> CONFIG_INPUT_MOUSE=y
> CONFIG_MOUSE_PS2=y
> CONFIG_MOUSE_PS2_SYNAPTICS=y
> # CONFIG_MOUSE_SERIAL is not set
> # CONFIG_INPUT_JOYSTICK is not set
> # CONFIG_INPUT_TOUCHSCREEN is not set
> CONFIG_INPUT_MISC=y
> CONFIG_INPUT_PCSPKR=y

this ^^^^^^^^^^^^^ makes the speeker beep :-)
works for me :-)

maybe you forgot to reinstall kernel.
Or maybe the kernel build system got confused ?

do a make clean and then a make bzImage to regenerate the kernel


> # CONFIG_INPUT_UINPUT is not set
>
> I looked through that file for other entries relevant to system speaker
> functioning, but nothing jumped out at me (not that I'd know what to make
> of it if it did).  I also searched a bit online for "system speaker" or
> "console beep", narrowed further by "2.6", but didn't find much helpful.
> As a next step, just to convince myself that there aren't maybe some
> issues regarding the system speaker using the 2.6 kernel, can I ask here
> if anyone using that kernel can get system speaker output?  echo -e "\a" -
> is the traditional command line way of making the system speaker sound.
> If you run this kernel and can report results of this command (or whatever
> else you might do to sound the system speaker), I would apreciate it.
>
> Thanks, James
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
