From: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Subject: Re: No Sound with Kernel 2.6.7
Date: Thu, 11 Nov 2004 23:57:19 +0930
Message-ID: <200411112357.25724.Adam@Luchjenbroers.com>
References: <20041111031359.589E83F580@heisspf>
Reply-To: Adam@Luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041111031359.589E83F580@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> I did what you have recommended but the sound continues to be elusive with
> kernel 2.6.7. On boot I get the following messages:
>
> Loading ALSA mixer settings:  /usr/sbin/alsactl restore
> No state is present for card Dummy

Should go away after the first one, just means it has no settings to restore. 
If you keep seeing this, then it's a bigger issue. If you haven't already run 
alsamixer do so.

> Loading OSS compatibility modules for ALSA.
> FATAL: Module snd_pcm_oss not found.
> FATAL: Module snd_mixer_oss not found.

What this means is that it failed to load the OSS emulation modules. There are 
two sound architectures in use in Linux, 2.4 uses OSS (Open Sound System), 
whereas 2.6 uses ALSA (Advanced Linux Sound Architecture) to provide sound. 
ALSA includes the ability to emulate OSS so that applications which use it 
for sound function correctly. This significant change is also why your old 
settings work fine in 2.4 but not in 2.6 (they load the OSS drivers).

If you want to test if ALSA is working ok, try running XMMS and changing the 
audio output plugin to ALSA to see if that works. You could also try 
playing .wav files with the aplay command.

> In kernel 2.4.26 all the settings are the same in /etc/rc.d  as well as for
> modprobe.conf and modules.conf and the sound is no problem.
>
> What would be the next step?

Probably try enabling the following in your kernel (either as modules or right 
in the kernel).

OSS Mixer API
OSS PCM API
OSS Sequencer API

They're right under the ALSA settings with make xconfig, and will provide the 
OSS emulation you will need for OSS based apps.

- -- 
"It should be illegal to yell "Y2K" in a crowded economy. :-)" - Larry Wall
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQFBk3bK94zI/zB2CYURAubgAJ4wxRXdNZA5HYCarUofg4rKVI4DAwCfUCfe
0mRs/wlA6UDmFBbzvn8uoAE=
=jPWf
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
