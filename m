From: James Miller <jamtat@mailsnare.net>
Subject: Re: help on dmesg output
Date: Mon, 11 Apr 2005 17:47:19 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504111735570.5717@localhost.localdomain>
References: <Pine.LNX.4.61.0504110958420.6036@localhost.localdomain>
 <Pine.LNX.4.60.0504112155400.1512@grinch.ro> <Pine.LNX.4.61.0504111504390.5967@localhost.localdomain>
 <Pine.LNX.4.60.0504120028150.1855@grinch.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0504120028150.1855@grinch.ro>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 12 Apr 2005 caszonyi@rdslink.ro wrote:

> Another solution is to comment out all the lines in /etc/modules.conf and 
> then uncomment only the necessary one for your kernel to work
> (i.e. usb stuff, zip, vesa and sound). Also for this to work you must make 
> sure that nos script is loading the modules. Take care that mixing ALSA sound 
> modules with OSS sound modules is a bad idea

Here is the content of my /etc/modules file:

# /etc/modules: kernel modules to load at boot time.
#
# This file should contain the names of kernel modules that are
# to be loaded at boot time, one per line.  Comments begin with
# a "#", and everything on the line after them are ignored.
# pas2 io=220 irq=7 dma=1
# sb io=0x230 irq=5 dma=1 mpu_io=0x330
# pas2 io=0x388 irq=5 dma=5 sb_io=0x220 sb_irq=3 sb_dma=1
# opl3 io=0x388
# snd-sb16 port=0x220 irq=5 dma8=1 dma16=5

ide-cd
ide-detect
sd_mod
# snd-cs4236

I'm not sure where else modules might be stipulated in Debian, but my 
understanding is that user-specified ones go in this file. The file, as 
you can see, consists mainly of commented-out attempts at loading various 
sound modules. Those are failed experiments that will be deleted soon. So, 
only 3 modules are getting loaded from there, and none of them have to do 
with sound, so far as I can see. So, I'm not loading any sound modules 
through any means I know of. The system was likely pre-configured to load 
whatever other modules are loading: it's pretty close to a stock Debian 
unstable install. Doesn't really resolve anything other than demonstrating 
that the conflicting modules problem--if that's what's 
interfering--doesn't seem to result from anything I did.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
