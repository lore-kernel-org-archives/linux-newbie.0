From: caszonyi@rdslink.ro
Subject: RE: 2.6.0 kernel compile overview-the unfolding saga
Date: Tue, 6 Jan 2004 01:12:32 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401060105570.927@grinch.ro>
References: <3DD6433F08A5A145AD7DA03566BDBFAF9F18DC@xch-sw-06.sw.nos.boeing.com>
 <Pine.LNX.4.58.0401051408430.3345@localhost> <Pine.LNX.4.58.0401051556150.3636@localhost>
 <Pine.LNX.4.53.0401060016240.842@grinch.ro> <Pine.LNX.4.58.0401051644080.3636@localhost>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401051644080.3636@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 5 Jan 2004, James Miller wrote:

> On Tue, 6 Jan 2004 caszonyi@rdslink.ro wrote:
>
> > On Mon, 5 Jan 2004, James Miller wrote:
> >
> > > Ok.  It turns out the system speaker is enabled in the .config file:
> > >
> > > # Input Device Drivers
> > > #
> > > CONFIG_INPUT_KEYBOARD=y
> > > CONFIG_KEYBOARD_ATKBD=y
> > > # CONFIG_KEYBOARD_SUNKBD is not set
> > > # CONFIG_KEYBOARD_XTKBD is not set
> > > # CONFIG_KEYBOARD_NEWTON is not set
> > > CONFIG_INPUT_MOUSE=y
> > > CONFIG_MOUSE_PS2=y
> > > CONFIG_MOUSE_PS2_SYNAPTICS=y
> > > # CONFIG_MOUSE_SERIAL is not set
> > > # CONFIG_INPUT_JOYSTICK is not set
> > > # CONFIG_INPUT_TOUCHSCREEN is not set
> > > CONFIG_INPUT_MISC=y
> > > CONFIG_INPUT_PCSPKR=y
> >
> > this ^^^^^^^^^^^^^ makes the speeker beep :-)
> > works for me :-)
> >
> > maybe you forgot to reinstall kernel.
> > Or maybe the kernel build system got confused ?
> >
> > do a make clean and then a make bzImage to regenerate the kernel
> >
> Just to be clear, this *is* the config for the running kernel.  I didn't
> try any recompiling yet, not being sure if it would help since the speaker
> seems already to be enabled in the kernel.  In which case doing "make
> clean" and "make bzImage" don't seem like they would make much difference,
> as I understand it.  So, you're saying that the console beep/system
> speaker works fine on your system with the 2.6 kernel?  If so, I'll
> presume the problem lies in some peculiarity in my system (dang thing
> worked fine under the 2.4.21 Gentoo used for the install!).
>

yes it works. I had the same problem until i realised that i hadn't
CONFIG_INPUT_PCSPKR in my kernel
here is the relevant part from my config (comments stripped)

CONFIG_INPUT=y

CONFIG_INPUT_MOUSEDEV=y
CONFIG_INPUT_MOUSEDEV_PSAUX=y
CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768

CONFIG_SOUND_GAMEPORT=y
CONFIG_SERIO=y
CONFIG_SERIO_I8042=y
CONFIG_SERIO_SERPORT=y

CONFIG_INPUT_KEYBOARD=y
CONFIG_KEYBOARD_ATKBD=y
CONFIG_INPUT_MOUSE=y
CONFIG_MOUSE_PS2=y
CONFIG_INPUT_MISC=y
CONFIG_INPUT_PCSPKR=y


> Thanks, James
> -


Calin
--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
