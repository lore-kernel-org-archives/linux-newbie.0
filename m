From: "Peter H." <heisspf@skyinet.net>
Subject: Continous buzzing sound in kde
Date: Sat, 27 Mar 2004 11:05:58 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040327030601.3B08E20864@heisspf>
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

There is no sound problem with gnome or fvwm2.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
