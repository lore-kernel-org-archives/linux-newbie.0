From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: 2.6.0 kernel compile overview-the unfolding saga
Date: Tue, 6 Jan 2004 07:05:03 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040106060503.GA6016@teamfinders.org>
References: <3DD6433F08A5A145AD7DA03566BDBFAF9F18DC@xch-sw-06.sw.nos.boeing.com> <Pine.LNX.4.58.0401051408430.3345@localhost> <Pine.LNX.4.58.0401051556150.3636@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.58.0401051556150.3636@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Just a shot in the dark here, but do you have the volume turned up?  I am using the ALSA sound modules, and they, as default, start up with the sound muted.  I haven't gotten around to fixing it yet, so every time I reboot that machine, I have to reset the sound levels to something higher than zero.

On Mon, Jan 05, 2004 at 04:08:07PM -0600, James Miller hunted and pecked out:
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

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
