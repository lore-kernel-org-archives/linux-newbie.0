From: "Peter H." <heisspf@skyinet.net>
Subject: Continous buzzing sound in kde
Date: Sun, 28 Mar 2004 09:26:04 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040328012604.5B27120868@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

In slackware 9.1 where I had to change from alsa to OSS sound system due to 
distorted sounds with alsa I still can not open kde desktop.

Trying to do so I get a continuous, annoying buzz, necessitating a quick 
ctrl-alt-backspace retreat.

This shows on the console:

AudioIO::close(): entering
AudioIOOSSThreaded::stopThread() entering
waiting for writerThread to finish
AudioIOOSSTHreaded::writerThread() fatal error writing to a audio_fd
AudioIOOSSThreaded::writerThread() thread stopped
AudioIOOSSTHreaded::readerThread() fatal error reading from audio_fd
AudioIOOSSThreaded::readerThread() thread stopped
waiting for readerThread to finish
AudioIOOSSThreaded::stopThread(): leaving
AudioIO::close(): leaving

Any suggestions to stop this buzzing sound?

There is no sound problem anymore with gnome or fvwm2.

lsmod gives:

Module                  Size  Used by    Not tainted
bsd_comp                4312   0 (autoclean)
ppp_async               7552   0 (autoclean)
ppp_generic            15452   0 (autoclean) [bsd_comp ppp_async]
slhc                    5040   0 (autoclean) [ppp_generic]
pcmcia_core            40032   0
ide-scsi                9424   0
via82cxxx_audio        19704   0
ac97_codec             12296   0 [via82cxxx_audio]
soundcore               3332   2 [via82cxxx_audio]
agpgart                39576   0 (unused)

Chipset: P4M266/A Northbridge and VT8235 Southbridge

AC'97 Audio Codec: Compliant with AC'97 2.1 specs.
                   16-bit stereo full-duplex CODEC with fixed 48KHz sampling   
                    rate.
                   Sound Blaster, Sound Blaster Pro Compatible


Regards
-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
