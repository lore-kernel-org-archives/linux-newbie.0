From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Continous buzzing sound in kde
Date: Sun, 28 Mar 2004 09:00:23 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403281000.23190.pa3gcu@zeelandnet.nl>
References: <20040328012604.5B27120868@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040328012604.5B27120868@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Peter H." <heisspf@skyinet.net>, linux <linux-newbie@vger.kernel.org>

On Sunday 28 March 2004 03:26, Peter H. wrote:
> Hi,
>
> In slackware 9.1 where I had to change from alsa to OSS sound system due to
> distorted sounds with alsa I still can not open kde desktop.


Having one of these chipsets i sympathise with you, however i dont have your 
problem.

> Trying to do so I get a continuous, annoying buzz, necessitating a quick
> ctrl-alt-backspace retreat.

So it seems the problem arises when kde is starting, this would point to the 
file (default sound file) KDE_Startup.wav found in /opt/kde/share/sounds/

The funtion audio_fd is another word for /dev/dsp (at least it is normally),
I would simply move or rename KDE_Startup.wav and see what happens.

The buzzing sound would possably interpret a missed interrupt or some 
interrupt sharing problem, if you use google.com/linux you may well see that 
others have reported simalar problems at some time or other.

Of course it could well be that the .wav may be corrupted in some way and 
kicks the problem off.

You could once again use strace to catch the problem, however be prepared if 
you do for one hell of a big strace file.

>
> This shows on the console:
>
> AudioIO::close(): entering
> AudioIOOSSThreaded::stopThread() entering
> waiting for writerThread to finish
> AudioIOOSSTHreaded::writerThread() fatal error writing to a audio_fd
> AudioIOOSSThreaded::writerThread() thread stopped
> AudioIOOSSTHreaded::readerThread() fatal error reading from audio_fd
> AudioIOOSSThreaded::readerThread() thread stopped
> waiting for readerThread to finish
> AudioIOOSSThreaded::stopThread(): leaving
> AudioIO::close(): leaving
>
> Any suggestions to stop this buzzing sound?
>
> There is no sound problem anymore with gnome or fvwm2.
>
> lsmod gives:
>
> Module                  Size  Used by    Not tainted
> bsd_comp                4312   0 (autoclean)
> ppp_async               7552   0 (autoclean)
> ppp_generic            15452   0 (autoclean) [bsd_comp ppp_async]
> slhc                    5040   0 (autoclean) [ppp_generic]
> pcmcia_core            40032   0
> ide-scsi                9424   0
> via82cxxx_audio        19704   0
> ac97_codec             12296   0 [via82cxxx_audio]
> soundcore               3332   2 [via82cxxx_audio]
> agpgart                39576   0 (unused)
>
> Chipset: P4M266/A Northbridge and VT8235 Southbridge
>
> AC'97 Audio Codec: Compliant with AC'97 2.1 specs.
>                    16-bit stereo full-duplex CODEC with fixed 48KHz
> sampling rate.
>                    Sound Blaster, Sound Blaster Pro Compatible
>
>
> Regards

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
