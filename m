From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: a sound problem solution?
Date: Tue, 11 Jan 2005 16:32:27 -0500
Message-ID: <41E445EB.5080603@cwazy.co.uk>
References: <Pine.LNX.4.58.0501102258510.7477@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0501102258510.7477@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
> But, I wax philosophical. I finally decided to give in and listen to some
> music through my computer. Mainly a satellite radio I've gotten to run
> through it. I'm satisfied with the barest semblance of audio reproduction
> these days: it sounds a little better than an old mono phonograph playing
> 45's, which is fine. If I want better sound I'll visit a friend with a
> real stereo or go to a live performance. So, all would be fine if I could
> just keep my computer from suddenly ceasing to output sound for unknown
> reasons. I'm not really interested in troubleshooting the sound server so
> much as I am in a way of possibly resetting it short of rebooting the
> machine. Is there a way to do this, i.e., to shutdown, then restart the
> sound server to see if I can get the sound back without a reboot?
> 
> A few details, in case it's helpful. This is Ubuntu, a Debian variant.
> Sound hardware uses the snd_via82xx module--auto-detected and set up by
> the OS on installation. Things I've noted that cause sound output to
> cease: plugging/unplugging the speakers while the computer is running;
> plugging a usb device into a hub mounted on top of the computer case; and
> today I can't say that anything in particular caused this. The symptom is
> an end to all sounds: no music will play, nor will system sounds. Only the
> PC speaker remains operational. Sound comes back after a reboot. I'm
> hoping there's a way to stop, then restart the sound server and that this
> might resolve the problem when it occurs. I think this distro must use the
> ALSA sound server, if I've understood correctly these technical details.
> 

Everything these days uses ALSA - the old OSS system is deprecated (and for good 
reasons).  You can rmmod/modprobe the driver, and that will work sometimes, but 
on-motherboard sound systems are notoriously crappy.

> Any advice? Go back to using a stereo-type device for sound and just use
> my computer for computing, perhaps?
> 

Try Fedora.  I'm using Fedora Core 2, with a custom-compiled kernel and a Sound 
Blaster Live, running the emu10k1 driver compiled in.  The only problem I've ever 
had with it is when I went from a kernel module to a compiled-in driver - had to 
use the system-config-soundcard utility to reset everything.

Once my brother gets his Mac, I'll be grabbing the E-MU 0404 he has in his Windows 
box - now *that's* a sound card...

> James
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
